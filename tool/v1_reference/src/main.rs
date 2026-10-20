//! Independent signing fixtures from the same node revision pinned by the KCC20 reference.
//! Hashing cases only: these artificial transactions are not chain-acceptance proofs.
use kaspa_consensus_core::{
    hashing::{
        sighash::{
            SigHashReusedValuesUnsync, calc_ecdsa_signature_hash, calc_schnorr_signature_hash,
        },
        sighash_type::SigHashType,
    },
    subnets::{SUBNETWORK_ID_NATIVE, SubnetworkId},
    tx::{
        CovenantBinding, PopulatedTransaction, ScriptPublicKey, Transaction, TransactionInput,
        TransactionOutpoint, TransactionOutput, UtxoEntry,
    },
};
use kaspa_hashes::Hash;
use serde_json::{Value, json};

fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|b| format!("{b:02x}")).collect()
}

fn base() -> (Transaction, Vec<UtxoEntry>) {
    let tx = Transaction::new(
        1,
        vec![
            TransactionInput::new_with_compute_budget(
                TransactionOutpoint::new(Hash::from_bytes([0x11; 32]), 0),
                vec![],
                u64::MAX,
                65535,
            ),
            TransactionInput::new_with_compute_budget(
                TransactionOutpoint::new(Hash::from_bytes([0x22; 32]), u32::MAX),
                vec![],
                42,
                0,
            ),
        ],
        vec![
            TransactionOutput::with_covenant(
                9007199254740993,
                ScriptPublicKey::from_vec(0, vec![0xaa, 0x20, 0xab, 0x87]),
                Some(CovenantBinding::new(0, Hash::from_bytes([0xab; 32]))),
            ),
            TransactionOutput::new(17, ScriptPublicKey::from_vec(0, vec![0x20, 0xcd, 0xac])),
        ],
        u64::MAX,
        SUBNETWORK_ID_NATIVE,
        0,
        vec![],
    );
    let entries = vec![
        UtxoEntry::new(
            9007199254741010,
            ScriptPublicKey::from_vec(0, vec![0xaa, 0x20, 0xef, 0x87]),
            1,
            false,
            Some(Hash::from_bytes([0xab; 32])),
        ),
        UtxoEntry::new(
            u64::MAX,
            ScriptPublicKey::from_vec(0, vec![0x20, 0xdd, 0xac]),
            1,
            false,
            None,
        ),
    ];
    (tx, entries)
}

fn output(output: &TransactionOutput) -> Value {
    json!({"value":output.value.to_string(),
        "rpcScriptPublicKey":output.script_public_key,"scriptVersion":output.script_public_key.version(),"script":hex(output.script_public_key.script()),
        "covenant":output.covenant.map(|c| json!({"authorizingInput":c.authorizing_input,"covenantId":c.covenant_id.to_string()}))})
}

fn legacy_identity_controls() -> Value {
    use std::str::FromStr;
    let mut controls = serde_json::Map::new();
    for name in [
        "one-input",
        "one-output",
        "lock-and-gas",
        "fixed-outpoint",
        "registry-payload",
    ] {
        let previous = if matches!(name, "fixed-outpoint" | "registry-payload") {
            Hash::from_str("59b3d6dc6cdc660c389c3fdb5704c48c598d279cdf1bab54182db586a4c95dd5")
                .unwrap()
        } else {
            Hash::from_bytes([0; 32])
        };
        let inputs = vec![TransactionInput::new(
            TransactionOutpoint::new(previous, 2),
            vec![1, 2],
            7,
            5,
        )];
        let outputs = if name == "one-input" {
            vec![]
        } else {
            vec![TransactionOutput::new(
                1564,
                ScriptPublicKey::from_vec(7, vec![1, 2, 3, 4, 5]),
            )]
        };
        let full = !matches!(name, "one-input" | "one-output");
        let mut subnet = [0; 20];
        if name == "registry-payload" {
            subnet[0] = 2;
        }
        let tx = Transaction::new(
            0,
            inputs,
            outputs,
            if full { 54 } else { 0 },
            SubnetworkId::from_bytes(subnet),
            if full { 3 } else { 0 },
            if name == "registry-payload" {
                vec![1, 2, 3]
            } else {
                vec![]
            },
        );
        controls.insert(
            name.into(),
            json!(kaspa_consensus_core::hashing::tx::id(&tx).to_string()),
        );
    }
    Value::Object(controls)
}

fn main() {
    let mut cases = Vec::new();
    for name in [
        "base",
        "binding-id",
        "authorizing-input",
        "no-binding",
        "sequence",
        "outpoint",
        "output-value",
        "max-output-value",
        "utxo-amount",
        "utxo-script",
        "utxo-script-version",
        "payload",
        "gas",
        "single-missing-output",
        "unsigned-budgets-and-scripts",
        "non-native-empty-payload",
        "non-native-with-payload",
        "all-with-no-outputs",
        "legacy-v0-control",
        "output-script-version",
    ] {
        let (mut tx, mut utxos) = base();
        match name {
            "binding-id" => {
                tx.outputs[0].covenant.as_mut().unwrap().covenant_id = Hash::from_bytes([0xbc; 32])
            }
            "authorizing-input" => tx.outputs[0].covenant.as_mut().unwrap().authorizing_input = 1,
            "no-binding" => tx.outputs[0].covenant = None,
            "sequence" => tx.inputs[1].sequence = 43,
            "outpoint" => tx.inputs[0].previous_outpoint.index = 7,
            "output-value" => tx.outputs[1].value = 18,
            "max-output-value" => tx.outputs[0].value = u64::MAX,
            "utxo-amount" => utxos[0].amount += 1,
            "utxo-script" => {
                utxos[0].script_public_key =
                    ScriptPublicKey::from_vec(0, vec![0xaa, 0x20, 0xee, 0x87])
            }
            "utxo-script-version" => {
                utxos[0].script_public_key =
                    ScriptPublicKey::from_vec(65535, utxos[0].script_public_key.script().to_vec())
            }
            "payload" => tx.payload = b"KCC23\0bound payload".to_vec(),
            "gas" => tx.gas = u64::MAX,
            "single-missing-output" => {
                tx.outputs.pop();
            }
            "unsigned-budgets-and-scripts" => {
                tx.inputs[0].compute_commit = kaspa_consensus_core::mass::ComputeBudget(1).into();
                tx.inputs[0].signature_script = vec![0x51];
                tx.set_storage_mass(999);
            }
            "non-native-empty-payload" => tx.subnetwork_id = SubnetworkId::from_bytes([2; 20]),
            "non-native-with-payload" => {
                tx.subnetwork_id = SubnetworkId::from_bytes([2; 20]);
                tx.payload = vec![0, 1, 2];
            }
            "all-with-no-outputs" => tx.outputs.clear(),
            "output-script-version" => {
                tx.outputs[0].script_public_key = ScriptPublicKey::from_vec(
                    0x1234,
                    tx.outputs[0].script_public_key.script().to_vec(),
                )
            }
            "legacy-v0-control" => {
                tx.version = 0;
                for input in &mut tx.inputs {
                    input.compute_commit = kaspa_consensus_core::mass::SigopCount(1).into();
                }
                for output in &mut tx.outputs {
                    output.covenant = None;
                }
                for utxo in &mut utxos {
                    utxo.covenant_id = None;
                }
            }
            "base" => (),
            _ => unreachable!(),
        }
        let populated = PopulatedTransaction::new(&tx, utxos.clone());
        let expected: Vec<_> = (0..tx.inputs.len()).map(|index| {
            let hashes: Vec<_> = [1,2,4,129,130,132].into_iter().map(|mode| {
                let hash_type = SigHashType::from_u8(mode).unwrap();
                json!({"hashType":mode,
                    "schnorr":calc_schnorr_signature_hash(&populated,index,hash_type,&SigHashReusedValuesUnsync::new()).to_string(),
                    "ecdsa":calc_ecdsa_signature_hash(&populated,index,hash_type,&SigHashReusedValuesUnsync::new()).to_string()})
            }).collect();
            json!({"inputIndex":index,"hashes":hashes})
        }).collect();
        cases.push(json!({"name":name,"transaction":{
            "version":tx.version,"id":kaspa_consensus_core::hashing::tx::id(&tx).to_string(),
            "inputs":tx.inputs.iter().map(|i| json!({"transactionId":i.previous_outpoint.transaction_id.to_string(),"index":i.previous_outpoint.index,"sequence":i.sequence.to_string(),"computeBudget":i.compute_commit.compute_budget(),"sigOpCount":i.compute_commit.sig_op_count(),"signatureScript":hex(&i.signature_script)})).collect::<Vec<_>>(),
            "outputs":tx.outputs.iter().map(output).collect::<Vec<_>>(),
            "lockTime":tx.lock_time.to_string(),"gas":tx.gas.to_string(),"subnetworkId":hex(tx.subnetwork_id.as_ref()),"payload":hex(&tx.payload)},
            "utxos":utxos.iter().map(|u| json!({"amount":u.amount.to_string(),"scriptVersion":u.script_public_key.version(),"script":hex(u.script_public_key.script()),"covenantId":u.covenant_id.map(|c| c.to_string())})).collect::<Vec<_>>(),"expected":expected}));
    }
    println!("{}", serde_json::to_string_pretty(&json!({"reference":"a41a333b08848f41bf737b72592e463a6011b8ac","scope":"signature hashing only, no transaction acceptance","cases":cases,"legacyIdentityControls":legacy_identity_controls()})).unwrap());
}
