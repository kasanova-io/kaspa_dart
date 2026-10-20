// Generated from the pinned Rust node; regenerate with tool/v1_reference.
const v1SigningFixture = r'''{
  "cases": [
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "e6bc129f64de248d358aa0c82021078515c205e4cfdf8cc5f676815d2f81363a",
              "hashType": 1,
              "schnorr": "ea388dcc045bbc91b89af19c701d213025e9ee4ec7829e297d0c3239a4ee15ae"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "bb989934d62133d802205cb7b3afc6a27a6cad1daa46040306b1bffb439c3eeb",
              "hashType": 4,
              "schnorr": "3c977a870c77be4a5ddc1f92169c7847dc0ccf3d5a7675ff773af749f2a57bfa"
            },
            {
              "ecdsa": "458e7ba6577e0fd50a3e59288b622c626d3438c75974ef0f43ffe2235f9f18a4",
              "hashType": 129,
              "schnorr": "d5070f012b41ea513445f179515f3be8dd7df47419034343d9cbafcd40d8eec7"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "6a5fa9bad4285b4ce371783ed02f0abe99f6d6cae09058ea708c4e4725252422",
              "hashType": 132,
              "schnorr": "e1efe173d252d3dc8c3772ed95a394f4ec4bb8b15ce1826532de0d7aec7b02a5"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "78e63e2d49bb4e27c267c6e1ecc2b2a0e80892c2db93511dec696a764a1b04f5",
              "hashType": 1,
              "schnorr": "537aba21007cbf70b2bcf5ca4deb87ebca4b9a929aa883e22ebad32b47151132"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "42c99a7868caa770a877bc1a065367156c3fa64340a8b94507a93c1f95e6bace",
              "hashType": 129,
              "schnorr": "aef6f8a42755dac273a5d4325ffd2c72ca246954d73a7e1e66c028c37e388fe1"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "base",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "da4f6b010a96bd0d4b88c311b19a060e5713548b0cedd79f46d7c8398d91a9ce",
              "hashType": 1,
              "schnorr": "f31ce627e841f05990c95716717183d422e90a489e5cc93a5646b14f6dcba33c"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "2abec48ddb2fc0cb251ae23083760b30c5a34e7c47963515e2e253246ca18e62",
              "hashType": 4,
              "schnorr": "82a77da74fdcc4843b9eec98aa4f4dc22a66b64aea074517e624b395c4f28995"
            },
            {
              "ecdsa": "0afd8d5912496161821327c21c0478b32edfcf1730dde2db138d918ab8b55cc7",
              "hashType": 129,
              "schnorr": "e39ef7ee6dac04dea4e3bb2544e340b90580d552f6a7d7f8794373bc79d4db1b"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "0224d498c5991b47536781828275c89f0315b52f86a768062b557bc008777cf0",
              "hashType": 132,
              "schnorr": "29bb1f2c6a553be2af2df3efd701c0deaebf539259a20f8e0543882ba04f1639"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "a167c0a8c6be0198f0d37ab5e4cdf3ffe6921d8e85318bb505fe1dfb75652081",
              "hashType": 1,
              "schnorr": "f9f83e537bf77b49b39424166ae35a5fbf6588d4ea54a90cadf13ec16d0154c9"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "759ec9a622f75bf43a10ae0e4d5645dceef6f248c5f776a4d225038076841fd3",
              "hashType": 129,
              "schnorr": "3f5d0ba2e0adf51fc513b865707f9711b04603f9541d23843fe7908302cf4763"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "binding-id",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "bcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbc"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "b0b3f3bc7909e4e81f7f889c8353431be2ab26b8636c2c9f4939a3b6b1e69a2f",
              "hashType": 1,
              "schnorr": "6a41635dd68d0d8c7af9c3c136e498b508838e92c2e0dfbe57edcda7edab580a"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "e12a7a1c1a351030884060c4ae34d7ab9a56269e6f587cfaa19f5ef0538f1184",
              "hashType": 4,
              "schnorr": "0e6f15942431aa1355b61292cce92058a6706df425670d9bd6a81214b45e31a1"
            },
            {
              "ecdsa": "8954288f15297b7519ef1f5acecb03fbbfcf06afcd9724f295df260a2cdfec19",
              "hashType": 129,
              "schnorr": "02d2f6b96b1a40a767a81f4d3770121684c487e85c54af3132b4f8edd8a257a2"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "884df1f6014a2e4740375f3e92857247156dbbe8449fae5f95fe74171d60fb26",
              "hashType": 132,
              "schnorr": "3105a325216e19c76aa5a3f5e314f92c8560b66154598ce64987eb8591c3063f"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "e82894520e865557e66820e9e4787d5436d17b59afd2b57740b5fb2bcbdbc5ca",
              "hashType": 1,
              "schnorr": "2168ebaca6d2656a3d7474fef97a2b0e02a9b1449b576557e174dec7c76a3ae0"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "a3ff37b050b59eb5b1f50cac4ee5c4ec7a2526892ec72d6b27a9a474b5805380",
              "hashType": 129,
              "schnorr": "c8dcc252908b95f127b6e1d57fa487d6aec24d8f802f0aa0a6848cebd8c1c058"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "authorizing-input",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 1,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "7e7c5471174cb2206ff562a9085f8aae84ff26f09ce0b3157c78e7417ecfd465",
              "hashType": 1,
              "schnorr": "791bf9e65d135817c540612c61cfa1e3dc63548670b3e68570e6fe9fd4222970"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "13e5fb83db0abca897ae2f4dec3b4c531c54cb963dc2e49760f2bb62646b7184",
              "hashType": 4,
              "schnorr": "c459d84fd0cc5624e23da1129319e15817a292f4e4e57060c50b4c16e45da3fd"
            },
            {
              "ecdsa": "9a809bd2519cc4bacfe6b81ae54ca7ea390726e4785eb6d655b257017edb4594",
              "hashType": 129,
              "schnorr": "561f0f403d216ccfefb764b0269de64c8d7a9d72816299a5b26e6ebabfb68f7b"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "8948b77ee6e3ec95866abdfc6702e2cd52740cc4a24164077a3cab84e0922b9d",
              "hashType": 132,
              "schnorr": "cb1def21f0cdde279b6600bb59de104120c50eeec60088a1dfc8b88c786f2488"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "d64ab0b8b799c91c8277fed57ce96adbd2efa8db9221a2712b9b5e71366d2001",
              "hashType": 1,
              "schnorr": "8bf95486960d5d60045f4283013ccca45ae545462ed2873c032af85d7e2b621b"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "7af239e28f11be88e803cc1b85f49367cb24b5bd3db096bfbfab57e98ffb06f4",
              "hashType": 129,
              "schnorr": "306a77966e3caa14a6799d34f43078ca3872e9c59100e52e3be31c9532a2b951"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "no-binding",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": null,
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "e1f6ab21b623c0d364bcb8d49820451b122a94584e8b3aab10f4cf7c478d44e2",
              "hashType": 1,
              "schnorr": "54d1cea70859aee044d21f98c9cc8b07e13df83f379b8c7e4272bba4693c1aa8"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "bb989934d62133d802205cb7b3afc6a27a6cad1daa46040306b1bffb439c3eeb",
              "hashType": 4,
              "schnorr": "3c977a870c77be4a5ddc1f92169c7847dc0ccf3d5a7675ff773af749f2a57bfa"
            },
            {
              "ecdsa": "458e7ba6577e0fd50a3e59288b622c626d3438c75974ef0f43ffe2235f9f18a4",
              "hashType": 129,
              "schnorr": "d5070f012b41ea513445f179515f3be8dd7df47419034343d9cbafcd40d8eec7"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "6a5fa9bad4285b4ce371783ed02f0abe99f6d6cae09058ea708c4e4725252422",
              "hashType": 132,
              "schnorr": "e1efe173d252d3dc8c3772ed95a394f4ec4bb8b15ce1826532de0d7aec7b02a5"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "7ce34f1e30320e5f74d8e755d5acdd9cb05d18f883f7147bc245166a1609fbb5",
              "hashType": 1,
              "schnorr": "f72857255e0abbfd0aa64dd526bd28688c072619b594776412df5c96050dd6a5"
            },
            {
              "ecdsa": "edb9ed5e20d7931bda399ba50b3a28d9b1a8e81a062e13b9dcd3d66b78117318",
              "hashType": 2,
              "schnorr": "e120832cf14deb48ebf6a0957e638bbacf7a72525f3cf25c4e5c09d9d0843ae0"
            },
            {
              "ecdsa": "2dc6f5094323b50ee1376d648bda65c7484897f03a034111e12e0f271c489898",
              "hashType": 4,
              "schnorr": "79718c6dbbd375a35c09ff6df2b0f17ff74c2c42c84787e8c8f32240af4c615e"
            },
            {
              "ecdsa": "c74026eac06494bf56f0b37d87d3430744b0dbaa58571a5e1fae5e799e9a9b5e",
              "hashType": 129,
              "schnorr": "e909bc86e3fa8f109bad77ca188096bdb52816bf482f52321999afa2688f0eef"
            },
            {
              "ecdsa": "3ab4bba83f89ec95baf2c4b22edd92676df672a9266db8f733c9322975ec0551",
              "hashType": 130,
              "schnorr": "f6fa9b4d8cb70b44258097900f51f5dc4d9fe59bf4a67a616ef519a9aa75c072"
            },
            {
              "ecdsa": "3849664ab55913062629fe9d25646d1d5fb6b39ae3fb939fd779ce3e3e97ae20",
              "hashType": 132,
              "schnorr": "ad6e37f9cca14b576c9ce6aa02f69f78fcf0c6cff2027f2bd859685d038c10be"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "sequence",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "43",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "16787f26e6c1618ca7832eb409016494f5ea0068d8afcff6bf39a6387a730db2",
              "hashType": 1,
              "schnorr": "4914557de6c5e4e7153cee0771dcba08b3f70785fd035b050bd6d64f87430198"
            },
            {
              "ecdsa": "e6b983ff219580d6dafd83db8c87240ec0660fd68f4b6aec10b5d688fa4a6bd1",
              "hashType": 2,
              "schnorr": "f94d12ea69d6e4b2f4153f273db5bcd729e806279b22f93f99f8b411b45c7cb9"
            },
            {
              "ecdsa": "24e2eef461d5cdcc2bf56799be840a5a754c0796befdb98b88e012e81deafc02",
              "hashType": 4,
              "schnorr": "2694950137abd4e06fe7142f8d7c53782f11e0c92e718cdfb35bfc9f4e05f06c"
            },
            {
              "ecdsa": "92166c03d9b60ba5849ad22aaa3052f34b8f402dcc29b5e96d114698a758e7f1",
              "hashType": 129,
              "schnorr": "c1c374235999b0114e256db4a2d498422e369ea5d907aaa32625a9f8985109fa"
            },
            {
              "ecdsa": "6b18369b306cc5fed35d947df8cd82bd2a44660769dfc44ed7fcc8b170ba1121",
              "hashType": 130,
              "schnorr": "95ce7cac8419ce60068da7df15ddc0e871a296fb4f478bfb6ce7cf1fa35c38b3"
            },
            {
              "ecdsa": "5380fa73cc263e947fe7468a941886cd700fa4d771cfb175e97b4d79848389b9",
              "hashType": 132,
              "schnorr": "6efd2b88560b13f3a34785d13f01bc47a976981acec3ae0e63a428bfcd7eee48"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "96ea621eea4640a8817646b36b0a224b96b2341493f6c441d209ba641f070029",
              "hashType": 1,
              "schnorr": "49d4a91f9bb794bff6ecbf14890034c04b639da53d67c7bc2da28c174a810182"
            },
            {
              "ecdsa": "9797db04f075bb5871ea8386d6586358b8d2968eca7d16023c7ec336d13c717d",
              "hashType": 2,
              "schnorr": "a6135e35a70ef6dfacfad7a0df079b79a3223bd86c4a0a901d3534af0752166c"
            },
            {
              "ecdsa": "7c000f42466ba63d19748bc03a6f61b0138c8076d23f57fb0876654956c71d9b",
              "hashType": 4,
              "schnorr": "5f6e89a6f29b2c25e30ddb7b63cd310d4e716bfd2d0ecc02d2ec5628a716c0e8"
            },
            {
              "ecdsa": "42c99a7868caa770a877bc1a065367156c3fa64340a8b94507a93c1f95e6bace",
              "hashType": 129,
              "schnorr": "aef6f8a42755dac273a5d4325ffd2c72ca246954d73a7e1e66c028c37e388fe1"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "outpoint",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 7,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "dafe3f40c9b5f93a40bb73d831141707fdeecfab90bde29cbe9f4079f7fbc60a",
              "hashType": 1,
              "schnorr": "bd57244396a0983e4659e6958849dba74781b8d3e82f5900867c6ea6425277af"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "bb989934d62133d802205cb7b3afc6a27a6cad1daa46040306b1bffb439c3eeb",
              "hashType": 4,
              "schnorr": "3c977a870c77be4a5ddc1f92169c7847dc0ccf3d5a7675ff773af749f2a57bfa"
            },
            {
              "ecdsa": "5002e36bc8a3614882b632a5d3f0b50141d3fa9da992c21707c2bce3651e2a41",
              "hashType": 129,
              "schnorr": "993141d43ee537b7bf73cb6be823bb631b0ca89e535141a93b8e696a8662928f"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "6a5fa9bad4285b4ce371783ed02f0abe99f6d6cae09058ea708c4e4725252422",
              "hashType": 132,
              "schnorr": "e1efe173d252d3dc8c3772ed95a394f4ec4bb8b15ce1826532de0d7aec7b02a5"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "e9e90d53ec1b8858c06d50c89d1d76a9c39fd7125608fa9ee6b0da990cd1036d",
              "hashType": 1,
              "schnorr": "35c6141176ec8dc8516c67d2b500be3366d509f47bec21bbf8f1d9b8f7618112"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "4274dec15039f6a68b578d4b6620189328436c027ec56b553702f8c6e3ab0e8c",
              "hashType": 4,
              "schnorr": "ae2db400e4d8cce163e491d3a1cdec636ab409f5e5932288c6863718ac553500"
            },
            {
              "ecdsa": "8191efa3850710609a992ef63523d3dd10372acd69d329424730fe64d99aadf6",
              "hashType": 129,
              "schnorr": "1780e2f06877bed2cb9f8f31ae7a99df229894412b977a48dad2d7e5da905479"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "95bcec2ab3a0736c3131f4dc5658cc374d102bbb6176dd9918a7f332af25b125",
              "hashType": 132,
              "schnorr": "1894a2f242c09baa4da67866aeff46ade8361885eaee78bda20f0ef6670b497b"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "output-value",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "18"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "b729efcfcf4a86aaf41989c92fe4b2f5bf652b3d5248d6ebcb89ab4b11ed9b0e",
              "hashType": 1,
              "schnorr": "3610fb3a126c77944f6817abce7f60b837854037c5cd1ad39f047a9704873e05"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "ae4439233ae19c97c8ddc8a79b10849a69d8f3ca64a1e11de4da03a3189aef8f",
              "hashType": 4,
              "schnorr": "8032ef9b358cf2c73445141b0a60f78ee31e4b8a5338e92f4efcdbef60b0e60f"
            },
            {
              "ecdsa": "1594bcc9bac795abdf12147caf65db92360e98475833962a6cc19776c6ea9e56",
              "hashType": 129,
              "schnorr": "9380888a073406a3a4cfb9e5f55f1bbc070db66b0103f60feebd2d5771f197b9"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "c0f392e60a7f576b73b5857b8b10d779ea75df44ddd9562a231eb006cb755ee5",
              "hashType": 132,
              "schnorr": "d156517018bcef367a3c71ba189a7ff079b4baa07de57a0123aa7ff031ad2853"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "e00af1700358723b31bfc78a2a5bccda9550369103589040a808b0c8ef1ec13d",
              "hashType": 1,
              "schnorr": "a4cabbaf2ecc3cd6d5d885e63d188fbf99cbadf0a89d9e93a39ef996416d0e35"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "a1f393e6989f4e5e4ad7f286dfe2481c5d2c71901d7b794ea0562775e03fca40",
              "hashType": 129,
              "schnorr": "52a4b8ded2eaf5faab4dbc564aaf0126f3e844578485060ed95c749239929011"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "max-output-value",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "18446744073709551615"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "e6e7e86e109f2acd0e5fcb0fa14e8b9902b801f566d301cf240695d0b2bcf445",
              "hashType": 1,
              "schnorr": "15576fa27bc01c489af012de74ca82a0120cbec46c181236df74d12935775c2c"
            },
            {
              "ecdsa": "76db735ef59808234a553b9f8be2db4aa2149543309fa8709a6d2bacacd83db6",
              "hashType": 2,
              "schnorr": "8d037cebd36cb935449d7d0a2e43844ce1bb2a99bf6024d2b588b3f04d69278b"
            },
            {
              "ecdsa": "85c6c467aa21f95348147e0ff88413a41616a4242c3b96cf8cadb24a1f193bb1",
              "hashType": 4,
              "schnorr": "6c3e4eaeaf9e88a56a5e6f6d8bcff238455f4f96bca54e1a06f2ba002a9e5308"
            },
            {
              "ecdsa": "53fbab59430dd3874cba3708499a58a75b9e09c3478d32b561b96e536ebe5058",
              "hashType": 129,
              "schnorr": "4ba1dc31a267a79a9ed1a638e07b07da586ddc010e775798d52eee96e48f3901"
            },
            {
              "ecdsa": "1384ed80680643d5604d0850725fd86930b2d6c3900c3acccaf091da5a18f851",
              "hashType": 130,
              "schnorr": "6ff925531da25f13f33b17186607993badeb063e18fbcf6d6eb8e369c08d0aa7"
            },
            {
              "ecdsa": "02da47235efe295bcc596fe1457b9dcb49d11af1dc8a8a7741738ee7f41ac612",
              "hashType": 132,
              "schnorr": "fac1fd835d99e1714b4b3625b301d81098eda9c235f0c908e1fb87a1c32b2c0b"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "78e63e2d49bb4e27c267c6e1ecc2b2a0e80892c2db93511dec696a764a1b04f5",
              "hashType": 1,
              "schnorr": "537aba21007cbf70b2bcf5ca4deb87ebca4b9a929aa883e22ebad32b47151132"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "42c99a7868caa770a877bc1a065367156c3fa64340a8b94507a93c1f95e6bace",
              "hashType": 129,
              "schnorr": "aef6f8a42755dac273a5d4325ffd2c72ca246954d73a7e1e66c028c37e388fe1"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "utxo-amount",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741011",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "55107cd889bae26f139fada5ea4f386b9ecbcd2ab59f820181f526ebe66630d7",
              "hashType": 1,
              "schnorr": "bc66e4f8d4197c9f43dcf4ec4b42882144955d227227ccc8b1654fbd337fc8fe"
            },
            {
              "ecdsa": "bb254233d46139b94201ec9f05b44d92dd81867bdc16c87147cc9f24e916599e",
              "hashType": 2,
              "schnorr": "86e6b71d289867ece0ba000dfc31df2d91ed655332f3ae884c7e4288c627de9c"
            },
            {
              "ecdsa": "fa0176d078dcf622f8923e6769973a34dc347f55d6707d797152c3173a33de80",
              "hashType": 4,
              "schnorr": "07ecf23cfc1b758e7f14ef1fba32deca282b4fcfdf50f9d0f2f81365bac1248f"
            },
            {
              "ecdsa": "c21bacbcbbb269ec4aceb8646afa732475a598373e6465f951a15bf96ca9406b",
              "hashType": 129,
              "schnorr": "166e9ba88b627e66f92f8158e11c98e9a803fb545bfc52c8370d709912b9026d"
            },
            {
              "ecdsa": "0f2495790fbbe32c77b56920074085cd1f8ebd594f3a91c229bce5692ef3f26d",
              "hashType": 130,
              "schnorr": "6481caf49e3312e96effa6eb168cf2eed8c4cf9940b4ea165de1d0af543e5e4e"
            },
            {
              "ecdsa": "055a2ed3225587470e66ddeb1dd9e3d42e17f8accc2d4000eb69ad3667e05ccb",
              "hashType": 132,
              "schnorr": "54b3de62ee03c6127cb80fab1c45002b40a37876dd919846cbaef465e9a16fab"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "78e63e2d49bb4e27c267c6e1ecc2b2a0e80892c2db93511dec696a764a1b04f5",
              "hashType": 1,
              "schnorr": "537aba21007cbf70b2bcf5ca4deb87ebca4b9a929aa883e22ebad32b47151132"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "42c99a7868caa770a877bc1a065367156c3fa64340a8b94507a93c1f95e6bace",
              "hashType": 129,
              "schnorr": "aef6f8a42755dac273a5d4325ffd2c72ca246954d73a7e1e66c028c37e388fe1"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "utxo-script",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ee87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "1bef076b3adbe0d69333f894d9617a2864d3fd8dd501705b75535a4503434895",
              "hashType": 1,
              "schnorr": "281444062cc07175429c0af3ecf472ca0ff33e266fb7660ae44c18a7a2668fbb"
            },
            {
              "ecdsa": "0be20755d365878429f3364b7aa154d797065a3faf9a12d3e1facf5970564ea2",
              "hashType": 2,
              "schnorr": "a1172dc8aa37d074ef17b318b0ceb1b8ae0d8a26c060b9ef20ed859a26dedae1"
            },
            {
              "ecdsa": "be5a68bf2cfdda58f50f8bef7f7cb82f4acdafc831bf89656b891082797be3c6",
              "hashType": 4,
              "schnorr": "442f0154ca331a88d25b40057d7c61599744094def883624a2ee2d4d5287d6d1"
            },
            {
              "ecdsa": "6b2a8ae1ebdf3d348ce490c558d963dfcfea24b897d6cc9866503bb31609fdcb",
              "hashType": 129,
              "schnorr": "705907eb8fd057136e9e4f5f64ca0a44d62bb128e291bcf431bff6d1c36a8ea6"
            },
            {
              "ecdsa": "305cc472bf7d890e33ee14d5c7db4d4eceea8763763d6f138b545909ead8060f",
              "hashType": 130,
              "schnorr": "bb7f92b84229476fb91a0b685362bcc7850f62f4cfc4c9391e37020117c63acf"
            },
            {
              "ecdsa": "8d0f157a345a96683a234fc07da33a045fff19ccb937be8516a163c77a421b39",
              "hashType": 132,
              "schnorr": "b049041c375fab62bd270e22c3664f7571eb23ae0499bbe250364d72c7893f43"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "78e63e2d49bb4e27c267c6e1ecc2b2a0e80892c2db93511dec696a764a1b04f5",
              "hashType": 1,
              "schnorr": "537aba21007cbf70b2bcf5ca4deb87ebca4b9a929aa883e22ebad32b47151132"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "42c99a7868caa770a877bc1a065367156c3fa64340a8b94507a93c1f95e6bace",
              "hashType": 129,
              "schnorr": "aef6f8a42755dac273a5d4325ffd2c72ca246954d73a7e1e66c028c37e388fe1"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "utxo-script-version",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 65535
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "83054b310160d724f5758e5f4568ac10ad7b2381f09e13c52d751f39dea4674a",
              "hashType": 1,
              "schnorr": "8aeb231824d55def2f714fd8f8245a221246080f41fb26b9f1de39784ebcca50"
            },
            {
              "ecdsa": "2222638b4b5d4d8c771ec7c1c8d875cb25a9a5f5ee60545fabbe5cf7f8f47fcf",
              "hashType": 2,
              "schnorr": "692fa0cef016e001323250d8b73b931c5181593c9b4bd4f41332bd12ce594293"
            },
            {
              "ecdsa": "bea326a47cdd90cfe51fab8279d4bf35faffb8151fbfe385c7d63b2db4d2f435",
              "hashType": 4,
              "schnorr": "636bc8e752c68b5a2de8253dad8281206cd8ff3f4865f4b407c81ced6fa22663"
            },
            {
              "ecdsa": "2ef989253393065162ea777b6ca19d7232ac2255f0e655410ccc52364f76d7d5",
              "hashType": 129,
              "schnorr": "3e1b245bca1af50eb557c5792835bca4ef35669b5b790c144980be9600910319"
            },
            {
              "ecdsa": "66cc5bcfd41c5eaf87f9f1907cee71c755764105d4d2d272159ef3a78469c91b",
              "hashType": 130,
              "schnorr": "f33eb9ddf80c0c85e409fe90edb8a5f83c1ce0c0ed7af2f79188a957892e45bd"
            },
            {
              "ecdsa": "62b1995f3c791cff87094546f64a0abbdc6f19688b0826e3d5b8b48950f3fd5f",
              "hashType": 132,
              "schnorr": "9b2b42479412820922cbd2b435524e85a83535c3abee1148f835bba954bfe4d3"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "160dee976eb2428adfa964d7b64c90444f46f56192459e1416917953e7b08aca",
              "hashType": 1,
              "schnorr": "e794f379108c520998a9af1d3bf780cab91cf45677957bcf8f1e1a1db364af0b"
            },
            {
              "ecdsa": "f2540c087ce23616834bb9e393fb3c95a50b87fd3dd11a54c717685f39ed18ec",
              "hashType": 2,
              "schnorr": "71162878f26246620ebca31da57604e81db5aafa3e375cbf37f0b684ae876962"
            },
            {
              "ecdsa": "7df3ec1ea97d90a1c3e6cde81aeb50c303101b9fdd5574b9bcd1a7b2332b30d2",
              "hashType": 4,
              "schnorr": "6c13e95865bb3c04ccde352c208428b2899fa96ec4d640a02c0e8c6b030016eb"
            },
            {
              "ecdsa": "b96989a4e4675f1263f1abb4c69a188ed11b4f09b9bf009aa061e5668a272209",
              "hashType": 129,
              "schnorr": "f62e938d2230e32669f8b36e73b234c2211059d1024f8ef02f326c1eacdea324"
            },
            {
              "ecdsa": "8f901d8bbb94e3ba4cdb463f6231f4375f74d2c598191b7d20c6a99650d7dc24",
              "hashType": 130,
              "schnorr": "e5e77e669f33cb8c51ca31f2ad06044035e2c2a3f040cca811ddc946a57a783a"
            },
            {
              "ecdsa": "c029af89090d55aad68becae9eaa344befcf4ce9ee19d6b7012c0241269ad9ea",
              "hashType": 132,
              "schnorr": "18797370ab9134b6c63b5655ba43c8b1aa7071661c3648c92ce6576f5a03dfa3"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "payload",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "4b4343323300626f756e64207061796c6f6164",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "17f889fb111e82c61a0ee993a4382426a5f71ae422623344a6c0ebaed2ffbcf9",
              "hashType": 1,
              "schnorr": "b05f80b58383213e5ce9c4735e67b3eb9a959ded3783df4e0ccbd121d750b32c"
            },
            {
              "ecdsa": "c1f29f41b9b072b89a1d9b1709d6bb0543f4abef309e9391f7a778c6499c6e63",
              "hashType": 2,
              "schnorr": "091b5b7230ae33da09f8e5ecd502ef7449b91eea96afcb6a0295820e0bb1aa97"
            },
            {
              "ecdsa": "50c12d7591e0b0c82c809a9ddc0ae98b22ac0da4b7fe0e882f6fec5f8ba0daa8",
              "hashType": 4,
              "schnorr": "38dd8d2c70a4848ccfea216a0d784a146c98a123b76598df30d231e5eb42ea47"
            },
            {
              "ecdsa": "477b6c0762c796c1edffbb836a251d8c6bb7a2e267cb5468724f53f6d81190dd",
              "hashType": 129,
              "schnorr": "c8a6da24550d57c1c2c8cbb6fde29bf9691b9c8c8b09a27f9ee56fbeb3a17a19"
            },
            {
              "ecdsa": "9d5e93d976164190c5bdb12c4170bd49cfb70280e800c3766e747e7aefba4e47",
              "hashType": 130,
              "schnorr": "32a0b32f5ba2c4b6a67429298f8e6eae3d05125bdb2dd94bd8dea5120ce31479"
            },
            {
              "ecdsa": "88831360f8b7545a11b02d417c302dd361c59f1570fdfe61b572fdcb3d078a1d",
              "hashType": 132,
              "schnorr": "a5f5058e127738711e702420b73500feb774a7ed115b951008b0c71fcf4bfd0e"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "7800644a7054435a99845ac2903d236f4dac3f834089b6953ea03973b8be75ff",
              "hashType": 1,
              "schnorr": "fbcc0ed1c6acab8801f072e9def19dae1115f806fcdb1d0475343265a2853549"
            },
            {
              "ecdsa": "81812a4ef579b1b295400457ed465051382c0e64124f5ac0468286c6209c43fe",
              "hashType": 2,
              "schnorr": "c6efa23c988a03d5b64fa4a1dd31e01245c1e404fd48651774efe31bfda018e8"
            },
            {
              "ecdsa": "df558e38a00ed0c5ddbdc3e2e3af0318aff4de55ed8094a61e84701f6b6fd5ff",
              "hashType": 4,
              "schnorr": "c1dbd50b9102010418c7095a706f83e7c8a17d62f3d53d699488ff085eeaa86c"
            },
            {
              "ecdsa": "55a95ef21510986a5869047a90ce66009bbff62fa3587c914647fc54f2f60243",
              "hashType": 129,
              "schnorr": "e03883ee947e3aa734021b7794fef6fd7ec403c1264da35a87db7811b4895f97"
            },
            {
              "ecdsa": "6362f5e2ef1e5cc826775c0181399dc89243915b90d714de5bb8fd5182d0a570",
              "hashType": 130,
              "schnorr": "cf5440f5a9d4d7afdc8a87d0d8cf2deeb38ab3eb9de6b4ec0880ed4dc3426c3a"
            },
            {
              "ecdsa": "0bfdf136f09350d9e9b16a0281e0b444d2c195243a30dc1cf9276665fc4ad3bb",
              "hashType": 132,
              "schnorr": "43479b02eb1ce1ebd1b0cabef8a4e94386363bda380cf577304af465a3ed6113"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "gas",
      "transaction": {
        "gas": "18446744073709551615",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "bac8d6811c8b088fd7a38e8cca5913fc3c10d13f20febdad7b173bedfb12ab4f",
              "hashType": 1,
              "schnorr": "b77d26a69be9c63c82a18f41a54a243efc99278a5132f96bf97bf582f9cd4cfd"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "bb989934d62133d802205cb7b3afc6a27a6cad1daa46040306b1bffb439c3eeb",
              "hashType": 4,
              "schnorr": "3c977a870c77be4a5ddc1f92169c7847dc0ccf3d5a7675ff773af749f2a57bfa"
            },
            {
              "ecdsa": "a7063bc4a1ce2490781e9e0908935440566147c090e93978de7cef06f6fd6e93",
              "hashType": 129,
              "schnorr": "7b9bf6e353596bf44bf283df016095aa9cb0056548998703a6acbfa50108bd13"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "6a5fa9bad4285b4ce371783ed02f0abe99f6d6cae09058ea708c4e4725252422",
              "hashType": 132,
              "schnorr": "e1efe173d252d3dc8c3772ed95a394f4ec4bb8b15ce1826532de0d7aec7b02a5"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "7f30ec77e51ea1cf1e25e75753d6ca38a8aed6ca95d72eb30f3516d27424e305",
              "hashType": 1,
              "schnorr": "24a5527c6e9a92c7db725723f46bc9a97840eaf1ccbbb464e63685cce7f30165"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "b579774e145a336cf68043b537b454f1c62a68f66d23bffe6be3a855606567d0",
              "hashType": 4,
              "schnorr": "589bfef4b1a09b3217761a5b911fc97105dcf436ff22126cd12d05997eafce43"
            },
            {
              "ecdsa": "2901900c22774ec18f46600d3f4657b5b2a09ccf4b4e03c3c0dec649a17fbac9",
              "hashType": 129,
              "schnorr": "394f0e5e8c09e891f8bfda30068576570488526967f55fa59f2331e8fee8bc23"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "5a62e7bf40e257df8113d26072bb528a89206c426ce238cfbe34d1b5eaef83a4",
              "hashType": 132,
              "schnorr": "e4d9f839a5fd94bd6e41426bff3088f05cf105621209720cd4a1c5562c51cc26"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "single-missing-output",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "e6bc129f64de248d358aa0c82021078515c205e4cfdf8cc5f676815d2f81363a",
              "hashType": 1,
              "schnorr": "ea388dcc045bbc91b89af19c701d213025e9ee4ec7829e297d0c3239a4ee15ae"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "bb989934d62133d802205cb7b3afc6a27a6cad1daa46040306b1bffb439c3eeb",
              "hashType": 4,
              "schnorr": "3c977a870c77be4a5ddc1f92169c7847dc0ccf3d5a7675ff773af749f2a57bfa"
            },
            {
              "ecdsa": "458e7ba6577e0fd50a3e59288b622c626d3438c75974ef0f43ffe2235f9f18a4",
              "hashType": 129,
              "schnorr": "d5070f012b41ea513445f179515f3be8dd7df47419034343d9cbafcd40d8eec7"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "6a5fa9bad4285b4ce371783ed02f0abe99f6d6cae09058ea708c4e4725252422",
              "hashType": 132,
              "schnorr": "e1efe173d252d3dc8c3772ed95a394f4ec4bb8b15ce1826532de0d7aec7b02a5"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "78e63e2d49bb4e27c267c6e1ecc2b2a0e80892c2db93511dec696a764a1b04f5",
              "hashType": 1,
              "schnorr": "537aba21007cbf70b2bcf5ca4deb87ebca4b9a929aa883e22ebad32b47151132"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "f9bfa38c07c28a495a846d89b42f85c48fe2b103fccc13acf603826a994afc22",
              "hashType": 4,
              "schnorr": "af1672f91fd6ad305d1deaed8665840149bb94fe7dfb3577ab27b0e30190f2a0"
            },
            {
              "ecdsa": "42c99a7868caa770a877bc1a065367156c3fa64340a8b94507a93c1f95e6bace",
              "hashType": 129,
              "schnorr": "aef6f8a42755dac273a5d4325ffd2c72ca246954d73a7e1e66c028c37e388fe1"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "63f8aa226a57100e46e189117b47f42e2bcfb66f87e953f66381b43c933f4749",
              "hashType": 132,
              "schnorr": "c71047b567c19c247edea885954c63c57495c6ebaed75bc97431d7d8a7bdb710"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "unsigned-budgets-and-scripts",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 1,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "51",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "0488cf70a0dfe5b0f5a63ec6e7a94cc57ebd8c0b0d5fb81380200a5e1928106f",
              "hashType": 1,
              "schnorr": "5affc43157a8876a6026bc9a4cb4ac8d8d0e455f5dafdd43e2e16aa9e7bfa464"
            },
            {
              "ecdsa": "2b520a31cefaeb1925e66f36960ae54e09b459a57e22bdb12f01b4fa07db0d10",
              "hashType": 2,
              "schnorr": "6744f84e05ea428ea5d2fa49ef4b79d05ab70a48ef7bc8ae1eacebea9e7d4f16"
            },
            {
              "ecdsa": "deea5462c1309d94a862bfadcaea751af9572694539eb93963bce6dad1999afa",
              "hashType": 4,
              "schnorr": "70a31625e5d7f70b6868944f21ee4d61f08ee690dc444182ab5d54427105fad6"
            },
            {
              "ecdsa": "31642ad6e52527d10815b499556712e2cfc62d7f325f3e1d702cd50b3d3fd8d7",
              "hashType": 129,
              "schnorr": "565cf328b066c5f82c899c0f445c0b202638effa807efc365ef8f7c940f849df"
            },
            {
              "ecdsa": "32cc19aa7210a3b2fb34503a8e8fb787534e8782cc22efaea88c76a9416a1e13",
              "hashType": 130,
              "schnorr": "c84b6a8101c943de2e2e009f46dc890c84f91d521cea42aa5f9f6c46affc7bd6"
            },
            {
              "ecdsa": "2321d720928b5abf36a01ac606b08c53f03b5c94b48935d038ca5266da179b80",
              "hashType": 132,
              "schnorr": "12612cb99bf28af5bfb07ddae4441ec1c1eee9ac11b9b2ab213c282df0523b79"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "f1d7c534c05046ba9ec774dac8768247f5e431f3d69cddfc24e312389a9ae997",
              "hashType": 1,
              "schnorr": "226247433c3f82901e830feb5dd29edc9410a0b6ddd65391cf7884a74c046f69"
            },
            {
              "ecdsa": "c9b66be7d07f2b8a78505f623beaf6e7cfd5a47c5d0a289fbb48309eaf304988",
              "hashType": 2,
              "schnorr": "d6f931abc9e29ad253e3946f58869aba482b9ef9b06090715b993e2aed2a3da7"
            },
            {
              "ecdsa": "889a29365bb24d278b1c0379f024f05864601842725cb968744068d4bac7b0b3",
              "hashType": 4,
              "schnorr": "f161d2ac014eea8f9678f5c0d270af1707d97f99e0315542b4896cac6b06a4d1"
            },
            {
              "ecdsa": "86cae3ca3cdc9d058f343eda94c42e1d3da7c4f9d389c05487340afdb3af66b4",
              "hashType": 129,
              "schnorr": "05e9e42bcfa88c88357289b8e402eb6e3a539a4efd1733288db97edb75afdeef"
            },
            {
              "ecdsa": "2038f4bd7a49fa3b4f84184d907f401e09001977a5e0628b4624aecb93afa03e",
              "hashType": 130,
              "schnorr": "58873c16ed715ba56be6eb0be9002b458529a4b42416cda81b03cec74b676194"
            },
            {
              "ecdsa": "e07d39a0614545d9205c5d3021377a7fbc7d8dfbbce6e00f6efac8e3ba975bf6",
              "hashType": 132,
              "schnorr": "c99509377d8c51daf45e2294abf836d3fa3df1219534a753144dfc8033cde371"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "non-native-empty-payload",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "",
        "subnetworkId": "0202020202020202020202020202020202020202",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "cf27c9c237ca2e0f6377f25dfa4dbce7e84a714149a1dc9ca889ac0617ad5e25",
              "hashType": 1,
              "schnorr": "00d78a8ab6c3c876da6c8023bb9095a4f843665f3510097e5b097385c91add21"
            },
            {
              "ecdsa": "d46b05db556fab29f76cb867ba81de860bdaea8be339ac6323de10e379240bce",
              "hashType": 2,
              "schnorr": "bbb79cb439dfde2f2172e8c3fcef7179f9d412760487e1424b3562cbfd8679bf"
            },
            {
              "ecdsa": "a31697e1a10609ebfc536afed85ae2b398b869d0945f17b130383ca5215ac1a1",
              "hashType": 4,
              "schnorr": "173464febc4df3bd1209ef10be65312afaf648fc62fc93ba548f803b3c68c427"
            },
            {
              "ecdsa": "b1c2d15c8f65eb0b9a5c878407084336b529ef80f3d33839356b7fad40e1ead6",
              "hashType": 129,
              "schnorr": "c142bd32fca821c623eaf8cd8a40a2bbb4f8dd0799486f7871e4db0fd4aaf7e8"
            },
            {
              "ecdsa": "32800d70486bdb04865f3fe8b6f5faed30ebe133b71ca7c40fb31a1ddc8a634e",
              "hashType": 130,
              "schnorr": "429eb1e6f0e3961ee9a8959ba69e273918cdbc0ab6e73f5ff617833d845dfb51"
            },
            {
              "ecdsa": "b1bec8b87af49bd3503ed5abc5fba22a44f291c8f0e1b8f326fdb4b3b9ea0c47",
              "hashType": 132,
              "schnorr": "8082d80c46153824600161bc9fe7831e3acac32d2125e5843712801885ae2254"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "fe9a11dae78097132322c0ea8662ad1c8fe6d6dfc555b5942a00f958e946f0c6",
              "hashType": 1,
              "schnorr": "ed751a2f83599fb0e657143e3151036633f4e47316afe60e230287efa644ec74"
            },
            {
              "ecdsa": "9ae9571269eebdc93e6a2f7f3d6007e553e7ad15c26bac9f9f7e5d4c5db29350",
              "hashType": 2,
              "schnorr": "e392b59ed723d62d5d489440b8d9975f3730707551e42e5a65b0b44880b3db96"
            },
            {
              "ecdsa": "217c54fe26f211b28aa7859c01a14df0cc754da8e4807360d0c32c9b30919dc4",
              "hashType": 4,
              "schnorr": "3a04e3bca907cb0a46fa2c7d26c0baccecf0afc259c2f63466b76619e78cb649"
            },
            {
              "ecdsa": "7ba0de9060acb0312241056e2bd2f4e61e7412feb728ee659c203c7ededc92e0",
              "hashType": 129,
              "schnorr": "ca08483ea86fa0407645c4f7a9b4d91a89912ae2ff975e0fdb5bfc7e056f20ee"
            },
            {
              "ecdsa": "baf9de71c5e26b58287fb53c273b5a27ebed27f9fd81212ed7072c8a602d52b4",
              "hashType": 130,
              "schnorr": "d460fc71f0f8e8aa1eb290f28415d033fae293f4bb5514e2b3c2abe410c77925"
            },
            {
              "ecdsa": "568682d9eb6ccd162adb95e9c3704add83b310d0e25ebdd37e67ac8dac2ebbfd",
              "hashType": 132,
              "schnorr": "0640daa90d477abe2166e0541bd8f6bcca6c99b188a2e311b0bf10db8b19b7ec"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "non-native-with-payload",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [
          {
            "covenant": {
              "authorizingInput": 0,
              "covenantId": "abababababababababababababababababababababababababababababababab"
            },
            "script": "aa20ab87",
            "scriptVersion": 0,
            "value": "9007199254740993"
          },
          {
            "covenant": null,
            "script": "20cdac",
            "scriptVersion": 0,
            "value": "17"
          }
        ],
        "payload": "000102",
        "subnetworkId": "0202020202020202020202020202020202020202",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    },
    {
      "expected": [
        {
          "hashes": [
            {
              "ecdsa": "d9b74bcea3e4c4953137c932fb51cd3d787cbd038d5b90401bdb814814c27fc6",
              "hashType": 1,
              "schnorr": "e3e8fde966ed448fe9b39b6980cc15d73213f0045ef61dac4b12b73ee98cc2c6"
            },
            {
              "ecdsa": "4d925258d0616c49f349797ffdfd942aaaf984441a6dfd50736911654b57e60c",
              "hashType": 2,
              "schnorr": "c1497551096dc0c1d7fb8bd767c51524080af1f22ae8f49ebb939652599c5813"
            },
            {
              "ecdsa": "94acac7a56cc79fb9d71b9e93bfe458d0ae5738485f393843379fed79f2a96ac",
              "hashType": 4,
              "schnorr": "ee4e38adbc046ed00da0606f14aea22ee60ae5281295a571181c6280e5492ab8"
            },
            {
              "ecdsa": "51bec29654631bbcc987bf026ab54cc714bbe473f1ababad5ac07762765336bd",
              "hashType": 129,
              "schnorr": "d165e9d13007401f1890b074b2a4b8e611d57c2dfa015ebfb35c6afc4d7837eb"
            },
            {
              "ecdsa": "fd3370adb2e18f7b7a6e1f550aed20ad764b78ceeefc45e262b9cc49b9053b99",
              "hashType": 130,
              "schnorr": "80ef6b63afdcf6b4c83158eff6f52f0ebf6a427303c11f560b378b64f65f04a4"
            },
            {
              "ecdsa": "da0d91befab4e8633885c45f24feb8eb904af28121b214b090a262021734aa9e",
              "hashType": 132,
              "schnorr": "f3923f5a4b18d479f7fca6fa75d4a1cf4be698f00202bb156c0a76b36ef832f3"
            }
          ],
          "inputIndex": 0
        },
        {
          "hashes": [
            {
              "ecdsa": "237d5a1b375f7697919fbd28b3b6228a29dc89ecf8e1ca95d7b7db8d21beeb98",
              "hashType": 1,
              "schnorr": "0a5e36ac8d9a57edeb20b938ace886c70db22315797359f466a2f26d4e45f60e"
            },
            {
              "ecdsa": "7ebdbf75926b7a5e7cdfdd8dc5804ee972537b78381de904d1ed429d94725c21",
              "hashType": 2,
              "schnorr": "bbd054e39dbb485b3004dc53d0bc33633477b021b9c81a69ae8ddc3c052e4cb2"
            },
            {
              "ecdsa": "b579774e145a336cf68043b537b454f1c62a68f66d23bffe6be3a855606567d0",
              "hashType": 4,
              "schnorr": "589bfef4b1a09b3217761a5b911fc97105dcf436ff22126cd12d05997eafce43"
            },
            {
              "ecdsa": "f667c05380edb3cf1f3dbc26847802b59f8cde3d8ddc6d15f1dca3b0fc00b27b",
              "hashType": 129,
              "schnorr": "ca38c3ee76705d73239ce6e773d4b8ac2024236ac1148edabd0f3ccf0da9254e"
            },
            {
              "ecdsa": "ef977dc378b21730df9f417ca68223e1dd1ad7cb67854346961c18170b34e4af",
              "hashType": 130,
              "schnorr": "20822506208ca581e91cff7801064acee8c5cbf2275f26c753525654f271890a"
            },
            {
              "ecdsa": "5a62e7bf40e257df8113d26072bb528a89206c426ce238cfbe34d1b5eaef83a4",
              "hashType": 132,
              "schnorr": "e4d9f839a5fd94bd6e41426bff3088f05cf105621209720cd4a1c5562c51cc26"
            }
          ],
          "inputIndex": 1
        }
      ],
      "name": "all-with-no-outputs",
      "transaction": {
        "gas": "0",
        "inputs": [
          {
            "computeBudget": 65535,
            "index": 0,
            "sequence": "18446744073709551615",
            "signatureScript": "",
            "transactionId": "1111111111111111111111111111111111111111111111111111111111111111"
          },
          {
            "computeBudget": 0,
            "index": 4294967295,
            "sequence": "42",
            "signatureScript": "",
            "transactionId": "2222222222222222222222222222222222222222222222222222222222222222"
          }
        ],
        "lockTime": "18446744073709551615",
        "outputs": [],
        "payload": "",
        "subnetworkId": "0000000000000000000000000000000000000000",
        "version": 1
      },
      "utxos": [
        {
          "amount": "9007199254741010",
          "covenantId": "abababababababababababababababababababababababababababababababab",
          "script": "aa20ef87",
          "scriptVersion": 0
        },
        {
          "amount": "18446744073709551615",
          "covenantId": null,
          "script": "20ddac",
          "scriptVersion": 0
        }
      ]
    }
  ],
  "reference": "a41a333b08848f41bf737b72592e463a6011b8ac",
  "scope": "signature hashing only, no transaction acceptance"
}
''';
