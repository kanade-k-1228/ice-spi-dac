{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-BX",
    "graph": {
      "blocks": [
        {
          "id": "1407f819-dc73-4e08-ac6e-a9888eadac4e",
          "type": "basic.output",
          "data": {
            "name": "LDAC",
            "pins": [
              {
                "index": "0",
                "name": "PIN_9",
                "value": "E1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1240,
            "y": 424
          }
        },
        {
          "id": "a7879ffd-2fd4-4f15-a3f4-5c2ae36a23e7",
          "type": "basic.output",
          "data": {
            "name": "SS",
            "pins": [
              {
                "index": "0",
                "name": "PIN_6",
                "value": "D2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1104,
            "y": 504
          }
        },
        {
          "id": "c5aa159d-a0d8-400f-9851-945e72f96a50",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "B2"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": 112,
            "y": 520
          }
        },
        {
          "id": "3e85764c-b2f0-45ed-b447-616d9b7fb043",
          "type": "basic.output",
          "data": {
            "name": "sclk",
            "pins": [
              {
                "index": "0",
                "name": "PIN_7",
                "value": "D1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1104,
            "y": 576
          }
        },
        {
          "id": "7f78fb2c-5b03-4b4a-99b4-1cca9556dfc7",
          "type": "basic.output",
          "data": {
            "name": "mosi",
            "pins": [
              {
                "index": "0",
                "name": "PIN_8",
                "value": "E2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1104,
            "y": 648
          }
        },
        {
          "id": "aeb419c4-94c7-4d97-b78d-ee7b4efacb7f",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "4",
            "local": false
          },
          "position": {
            "x": 240,
            "y": 424
          }
        },
        {
          "id": "1bf1627a-d679-4349-902a-eb61be1db6c5",
          "type": "883fb3258cfd6161ddbe02b3db90f49e5f33e4d6",
          "position": {
            "x": 944,
            "y": 560
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "555ef4c8-025e-42eb-bdc5-7d89047bfe87",
          "type": "12b6b4a77e5d0c0e902d7bd42e66a42c69424df2",
          "position": {
            "x": 584,
            "y": 576
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "6387e59d-8857-45b6-b069-d2fe95a55aa3",
          "type": "9be23803adc91e79a23465cb6b4201777df92370",
          "position": {
            "x": 584,
            "y": 664
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "e359655f-4356-49c4-9e4f-13a2e90aa231",
          "type": "basic.code",
          "data": {
            "code": "assign dt=16'h0001;\nassign dx=16'h0001;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "dt",
                  "range": "[15:0]",
                  "size": 16
                },
                {
                  "name": "dx",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            }
          },
          "position": {
            "x": 112,
            "y": 696
          },
          "size": {
            "width": 216,
            "height": 64
          }
        },
        {
          "id": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
          "type": "6a50747141af6d1cfb3bb9d0093fb94862ff5a65",
          "position": {
            "x": 240,
            "y": 520
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a462403a-60d6-43a6-b035-9a2fd19e3fb8",
          "type": "5fc38e7411482b846dfced33c459cd268f68f8a6",
          "position": {
            "x": 392,
            "y": 576
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "b008cd7f-553f-4d3d-ae48-c30cc625fef1",
          "type": "basic.code",
          "data": {
            "code": "assign on =16'h0004;\nassign off=16'h00F0;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "on",
                  "range": "[15:0]",
                  "size": 16
                },
                {
                  "name": "off",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            }
          },
          "position": {
            "x": 112,
            "y": 608
          },
          "size": {
            "width": 216,
            "height": 64
          }
        },
        {
          "id": "045575ee-2e23-483c-b993-200841a3a08c",
          "type": "basic.code",
          "data": {
            "code": "assign tx = {\n    4'b0011,\n    wave[15:6],\n    2'b00\n};",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "wave",
                  "range": "[15:0]",
                  "size": 16
                }
              ],
              "out": [
                {
                  "name": "tx",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            }
          },
          "position": {
            "x": 712,
            "y": 656
          },
          "size": {
            "width": 168,
            "height": 104
          }
        },
        {
          "id": "8b375dc9-ecc1-4139-b769-67879fea0615",
          "type": "27bb4ea7dcaf98cb7f6018992c234d87c56c2a05",
          "position": {
            "x": 1104,
            "y": 424
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b2922ecb-e746-4d89-a2fc-a7a1d5fa215a",
          "type": "basic.info",
          "data": {
            "info": "1MHz",
            "readonly": true
          },
          "position": {
            "x": 400,
            "y": 512
          },
          "size": {
            "width": 64,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "555ef4c8-025e-42eb-bdc5-7d89047bfe87",
            "port": "cd911994-64cf-4184-9203-c2ebbc32678d"
          },
          "target": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "18c27fae-6c35-4f40-b69c-e83c3d719a8b"
          }
        },
        {
          "source": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "0eb1f9c5-8379-4463-8c57-f4fd3bf12ad2"
          },
          "target": {
            "block": "3e85764c-b2f0-45ed-b447-616d9b7fb043",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "b5486fe1-5a30-4a34-b0ff-f8c31cba9a49"
          },
          "target": {
            "block": "a7879ffd-2fd4-4f15-a3f4-5c2ae36a23e7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "a64172e2-9c3f-45fe-9d82-aa2f2d86a89b"
          },
          "target": {
            "block": "7f78fb2c-5b03-4b4a-99b4-1cca9556dfc7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "555ef4c8-025e-42eb-bdc5-7d89047bfe87",
            "port": "3794d29e-0ea1-487b-b800-8963e7a14d8d"
          }
        },
        {
          "source": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "6387e59d-8857-45b6-b069-d2fe95a55aa3",
            "port": "a5850d2a-e40b-42be-a65d-aee633978aea"
          }
        },
        {
          "source": {
            "block": "e359655f-4356-49c4-9e4f-13a2e90aa231",
            "port": "dt"
          },
          "target": {
            "block": "6387e59d-8857-45b6-b069-d2fe95a55aa3",
            "port": "6a9ccf20-d465-4d55-bafd-fea4ebbea619"
          },
          "size": 16
        },
        {
          "source": {
            "block": "e359655f-4356-49c4-9e4f-13a2e90aa231",
            "port": "dx"
          },
          "target": {
            "block": "6387e59d-8857-45b6-b069-d2fe95a55aa3",
            "port": "ff2fa03a-2c5e-4ecb-a186-1d454a7f5c39"
          },
          "size": 16
        },
        {
          "source": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "c4fd23aa-3b2d-4400-babf-cf31a9bdcbdb"
          }
        },
        {
          "source": {
            "block": "aeb419c4-94c7-4d97-b78d-ee7b4efacb7f",
            "port": "constant-out"
          },
          "target": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "c5aa159d-a0d8-400f-9851-945e72f96a50",
            "port": "out"
          },
          "target": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
          }
        },
        {
          "source": {
            "block": "a462403a-60d6-43a6-b035-9a2fd19e3fb8",
            "port": "e457c417-646a-444c-928a-250de3c944a5"
          },
          "target": {
            "block": "555ef4c8-025e-42eb-bdc5-7d89047bfe87",
            "port": "5e14aabc-c916-43b5-99c8-37ad32e7562e"
          }
        },
        {
          "source": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "a462403a-60d6-43a6-b035-9a2fd19e3fb8",
            "port": "ff2c73de-7fe7-4d9c-abe2-58b003a152b0"
          }
        },
        {
          "source": {
            "block": "b008cd7f-553f-4d3d-ae48-c30cc625fef1",
            "port": "on"
          },
          "target": {
            "block": "a462403a-60d6-43a6-b035-9a2fd19e3fb8",
            "port": "1040ab08-4094-4bd3-834b-06d61d2f2653"
          },
          "size": 16
        },
        {
          "source": {
            "block": "b008cd7f-553f-4d3d-ae48-c30cc625fef1",
            "port": "off"
          },
          "target": {
            "block": "a462403a-60d6-43a6-b035-9a2fd19e3fb8",
            "port": "4759e437-2209-44e0-8bef-8f559101eddd"
          },
          "size": 16
        },
        {
          "source": {
            "block": "6387e59d-8857-45b6-b069-d2fe95a55aa3",
            "port": "ce7feb55-c9c6-4add-a5d2-36e17095aba5"
          },
          "target": {
            "block": "045575ee-2e23-483c-b993-200841a3a08c",
            "port": "wave"
          },
          "size": 16
        },
        {
          "source": {
            "block": "045575ee-2e23-483c-b993-200841a3a08c",
            "port": "tx"
          },
          "target": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "01daa999-a2c3-4baa-ae19-02ae5c38b2c0"
          },
          "size": 16
        },
        {
          "source": {
            "block": "3c2157f5-a6fb-47d5-8dda-f0de1946d200",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "8b375dc9-ecc1-4139-b769-67879fea0615",
            "port": "1c6087e5-db97-46e7-8caa-8849c20d76de"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "1bf1627a-d679-4349-902a-eb61be1db6c5",
            "port": "b5486fe1-5a30-4a34-b0ff-f8c31cba9a49"
          },
          "target": {
            "block": "8b375dc9-ecc1-4139-b769-67879fea0615",
            "port": "19ef8ca1-f42d-4d31-9f48-81816eb5b381"
          }
        },
        {
          "source": {
            "block": "8b375dc9-ecc1-4139-b769-67879fea0615",
            "port": "ea1e6fa2-c821-46dd-8717-6ee70dacf5ad"
          },
          "target": {
            "block": "1407f819-dc73-4e08-ac6e-a9888eadac4e",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "883fb3258cfd6161ddbe02b3db90f49e5f33e4d6": {
      "package": {
        "name": "SPI-TX",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b5486fe1-5a30-4a34-b0ff-f8c31cba9a49",
              "type": "basic.output",
              "data": {
                "name": "SS"
              },
              "position": {
                "x": 760,
                "y": 56
              }
            },
            {
              "id": "c4fd23aa-3b2d-4400-babf-cf31a9bdcbdb",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -40,
                "y": 104
              }
            },
            {
              "id": "0eb1f9c5-8379-4463-8c57-f4fd3bf12ad2",
              "type": "basic.output",
              "data": {
                "name": "SCLK"
              },
              "position": {
                "x": 760,
                "y": 128
              }
            },
            {
              "id": "a64172e2-9c3f-45fe-9d82-aa2f2d86a89b",
              "type": "basic.output",
              "data": {
                "name": "MOSI"
              },
              "position": {
                "x": 760,
                "y": 200
              }
            },
            {
              "id": "18c27fae-6c35-4f40-b69c-e83c3d719a8b",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -40,
                "y": 304
              }
            },
            {
              "id": "01daa999-a2c3-4baa-ae19-02ae5c38b2c0",
              "type": "basic.input",
              "data": {
                "name": "tx",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": -40,
                "y": 352
              }
            },
            {
              "id": "4680fac1-88ce-4e24-a600-12e3c59684ed",
              "type": "bfc58be03693dfc5e3222ede9c420fed61c306cd",
              "position": {
                "x": 600,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "58f52589-c33a-4dea-bada-aaa38a9921e1",
              "type": "7ebc902cbb1c4db116741533a86182485900ecda",
              "position": {
                "x": 424,
                "y": 288
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "bc02ca6a-94da-4938-bb37-05709423d652",
              "type": "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139",
              "position": {
                "x": 296,
                "y": 264
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "23975673-f7ae-4693-837f-ce82c6ebee9d",
              "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
              "position": {
                "x": 424,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "a77bef51-fbb8-4abf-bb44-45ac72dbb70c",
              "type": "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139",
              "position": {
                "x": 424,
                "y": 104
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "d83432ee-7669-48a0-acd1-5bb5fad559d0",
              "type": "7ebc902cbb1c4db116741533a86182485900ecda",
              "position": {
                "x": 600,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "c4c56f03-4292-4fbd-b026-1663200e9257",
              "type": "4999968cefe8234ac52dbbb2d3e4dcd2cd03af53",
              "position": {
                "x": 96,
                "y": 192
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "16806411-40d6-4fb6-8d4e-ff1e1aa6c1ab",
              "type": "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139",
              "position": {
                "x": 600,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "01daa999-a2c3-4baa-ae19-02ae5c38b2c0",
                "port": "out"
              },
              "target": {
                "block": "4680fac1-88ce-4e24-a600-12e3c59684ed",
                "port": "b0d7031f-af07-40b0-9cfa-a06e6b47c1ad"
              },
              "size": 16
            },
            {
              "source": {
                "block": "4680fac1-88ce-4e24-a600-12e3c59684ed",
                "port": "2cc1dbdc-9d4d-43fb-a4c2-48e961d24764"
              },
              "target": {
                "block": "a64172e2-9c3f-45fe-9d82-aa2f2d86a89b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "58f52589-c33a-4dea-bada-aaa38a9921e1",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "4680fac1-88ce-4e24-a600-12e3c59684ed",
                "port": "6bb8a399-8044-4cf4-aec8-09a2fb68558d"
              }
            },
            {
              "source": {
                "block": "23975673-f7ae-4693-837f-ce82c6ebee9d",
                "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
              },
              "target": {
                "block": "4680fac1-88ce-4e24-a600-12e3c59684ed",
                "port": "e0f3afe2-9921-4ddf-9750-5319c7c3d0a8"
              }
            },
            {
              "source": {
                "block": "d83432ee-7669-48a0-acd1-5bb5fad559d0",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "0eb1f9c5-8379-4463-8c57-f4fd3bf12ad2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bc02ca6a-94da-4938-bb37-05709423d652",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "58f52589-c33a-4dea-bada-aaa38a9921e1",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "c4c56f03-4292-4fbd-b026-1663200e9257",
                "port": "367d5b55-9e82-4a72-b262-fae5edc1da1a"
              },
              "target": {
                "block": "bc02ca6a-94da-4938-bb37-05709423d652",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "18c27fae-6c35-4f40-b69c-e83c3d719a8b",
                "port": "out"
              },
              "target": {
                "block": "58f52589-c33a-4dea-bada-aaa38a9921e1",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "18c27fae-6c35-4f40-b69c-e83c3d719a8b",
                "port": "out"
              },
              "target": {
                "block": "c4c56f03-4292-4fbd-b026-1663200e9257",
                "port": "722d7de5-25c3-440e-8ead-6e1eaf8e41e9"
              }
            },
            {
              "source": {
                "block": "c4fd23aa-3b2d-4400-babf-cf31a9bdcbdb",
                "port": "out"
              },
              "target": {
                "block": "c4c56f03-4292-4fbd-b026-1663200e9257",
                "port": "0d86064f-38ca-4425-beb1-7937cbc3f392"
              }
            },
            {
              "source": {
                "block": "c4fd23aa-3b2d-4400-babf-cf31a9bdcbdb",
                "port": "out"
              },
              "target": {
                "block": "a77bef51-fbb8-4abf-bb44-45ac72dbb70c",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "c4c56f03-4292-4fbd-b026-1663200e9257",
                "port": "367d5b55-9e82-4a72-b262-fae5edc1da1a"
              },
              "target": {
                "block": "d83432ee-7669-48a0-acd1-5bb5fad559d0",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 192
                }
              ]
            },
            {
              "source": {
                "block": "a77bef51-fbb8-4abf-bb44-45ac72dbb70c",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "d83432ee-7669-48a0-acd1-5bb5fad559d0",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "c4fd23aa-3b2d-4400-babf-cf31a9bdcbdb",
                "port": "out"
              },
              "target": {
                "block": "4680fac1-88ce-4e24-a600-12e3c59684ed",
                "port": "5d5855ba-66bc-43b7-b7f2-1bc8d5a4a639"
              },
              "vertices": [
                {
                  "x": 480,
                  "y": 200
                }
              ]
            },
            {
              "source": {
                "block": "c4c56f03-4292-4fbd-b026-1663200e9257",
                "port": "367d5b55-9e82-4a72-b262-fae5edc1da1a"
              },
              "target": {
                "block": "16806411-40d6-4fb6-8d4e-ff1e1aa6c1ab",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 88
                }
              ]
            },
            {
              "source": {
                "block": "16806411-40d6-4fb6-8d4e-ff1e1aa6c1ab",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "b5486fe1-5a30-4a34-b0ff-f8c31cba9a49",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "bfc58be03693dfc5e3222ede9c420fed61c306cd": {
      "package": {
        "name": "SR-16",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5d5855ba-66bc-43b7-b7f2-1bc8d5a4a639",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 848,
                "y": 512
              }
            },
            {
              "id": "2cc1dbdc-9d4d-43fb-a4c2-48e961d24764",
              "type": "basic.output",
              "data": {
                "name": "s_out"
              },
              "position": {
                "x": 1504,
                "y": 536
              }
            },
            {
              "id": "e0f3afe2-9921-4ddf-9750-5319c7c3d0a8",
              "type": "basic.input",
              "data": {
                "name": "s_in",
                "clock": false
              },
              "position": {
                "x": 848,
                "y": 560
              }
            },
            {
              "id": "b0d7031f-af07-40b0-9cfa-a06e6b47c1ad",
              "type": "basic.input",
              "data": {
                "name": "p_in",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 848,
                "y": 616
              }
            },
            {
              "id": "24e3a0f2-4f15-4c3b-8d1a-13ee816c538d",
              "type": "basic.output",
              "data": {
                "name": "p_out",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 1504,
                "y": 640
              }
            },
            {
              "id": "6bb8a399-8044-4cf4-aec8-09a2fb68558d",
              "type": "basic.input",
              "data": {
                "name": "sp_sel",
                "clock": false
              },
              "position": {
                "x": 848,
                "y": 664
              }
            },
            {
              "id": "cf54e717-ebcc-4694-8ead-05109542caec",
              "type": "basic.code",
              "data": {
                "code": "// Shift Registor (16bit)\n\nreg [15:0] registors;\n\nalways @(posedge clk) begin\n    registors <= sp_sel \n               ? p_in\n               : {registors[14:0],s_in};\nend\n\nassign s_out = registors[15];\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "s_in"
                    },
                    {
                      "name": "p_in",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "sp_sel"
                    }
                  ],
                  "out": [
                    {
                      "name": "s_out"
                    },
                    {
                      "name": "registors",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 1024,
                "y": 520
              },
              "size": {
                "width": 384,
                "height": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cf54e717-ebcc-4694-8ead-05109542caec",
                "port": "s_out"
              },
              "target": {
                "block": "2cc1dbdc-9d4d-43fb-a4c2-48e961d24764",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "cf54e717-ebcc-4694-8ead-05109542caec",
                "port": "registors"
              },
              "target": {
                "block": "24e3a0f2-4f15-4c3b-8d1a-13ee816c538d",
                "port": "in"
              },
              "size": 16
            },
            {
              "source": {
                "block": "5d5855ba-66bc-43b7-b7f2-1bc8d5a4a639",
                "port": "out"
              },
              "target": {
                "block": "cf54e717-ebcc-4694-8ead-05109542caec",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e0f3afe2-9921-4ddf-9750-5319c7c3d0a8",
                "port": "out"
              },
              "target": {
                "block": "cf54e717-ebcc-4694-8ead-05109542caec",
                "port": "s_in"
              }
            },
            {
              "source": {
                "block": "b0d7031f-af07-40b0-9cfa-a06e6b47c1ad",
                "port": "out"
              },
              "target": {
                "block": "cf54e717-ebcc-4694-8ead-05109542caec",
                "port": "p_in"
              },
              "size": 16
            },
            {
              "source": {
                "block": "6bb8a399-8044-4cf4-aec8-09a2fb68558d",
                "port": "out"
              },
              "target": {
                "block": "cf54e717-ebcc-4694-8ead-05109542caec",
                "port": "sp_sel"
              }
            }
          ]
        }
      }
    },
    "7ebc902cbb1c4db116741533a86182485900ecda": {
      "package": {
        "name": "AND",
        "version": "1.0.0",
        "description": "AND logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20409.9h26v2h-26zM-252%20429.9h27v2h-27z%22/%3E%3Cpath%20d=%22M-227%20400.9v39.9h20.4c11.3%200%2020-9%2020-20s-8.7-20-20-20H-227zm2.9%202.8h17.6c9.8%200%2016.7%207.6%2016.7%2017.1%200%209.5-7.4%2017.1-17.1%2017.1H-224c-.1.1-.1-34.2-.1-34.2z%22/%3E%3Cpath%20d=%22M-187.911%20419.9H-162v2h-25.911z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 80
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 208
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "// AND logic gate\n\nassign c = a & b;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "96f0988f8164f7c1b216c8ee122d6ce3cf6bc139": {
      "package": {
        "name": "NOT",
        "version": "1.0.0",
        "description": "NOT logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "// NOT logic gate\n\nassign c = ~ a;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "c4dd08263a85a91ba53e2ae2b38de344c5efcb52": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 0\n\nassign v = 1'b0;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "4999968cefe8234ac52dbbb2d3e4dcd2cd03af53": {
      "package": {
        "name": "SPI-FSM",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0d86064f-38ca-4425-beb1-7937cbc3f392",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 576
              }
            },
            {
              "id": "367d5b55-9e82-4a72-b262-fae5edc1da1a",
              "type": "basic.output",
              "data": {
                "name": "is_sending"
              },
              "position": {
                "x": 840,
                "y": 576
              }
            },
            {
              "id": "722d7de5-25c3-440e-8ead-6e1eaf8e41e9",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 688
              }
            },
            {
              "id": "72ad4869-e358-4f93-9c32-0815ec9f3bd5",
              "type": "basic.output",
              "data": {
                "name": "clk_cnt",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 840,
                "y": 688
              }
            },
            {
              "id": "1365fba7-8e28-4e7d-b408-e876c65b4b2c",
              "type": "basic.code",
              "data": {
                "code": "reg is_sending = 1'b0;\nreg [3:0] clk_cnt = 4'b0000;\n\nalways @(posedge clk) begin\n    if(is_sending == 1'b0) begin\n        is_sending <= start;\n        clk_cnt <= 4'b0000;\n    end\n    if(is_sending == 1'b1) begin\n        is_sending <= clk_cnt == 4'b1111 ? 1'b0 : 1'b1;\n        clk_cnt <= clk_cnt + 4'b0001;\n    end\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "is_sending"
                    },
                    {
                      "name": "clk_cnt",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 272,
                "y": 552
              },
              "size": {
                "width": 488,
                "height": 224
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "722d7de5-25c3-440e-8ead-6e1eaf8e41e9",
                "port": "out"
              },
              "target": {
                "block": "1365fba7-8e28-4e7d-b408-e876c65b4b2c",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "0d86064f-38ca-4425-beb1-7937cbc3f392",
                "port": "out"
              },
              "target": {
                "block": "1365fba7-8e28-4e7d-b408-e876c65b4b2c",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "1365fba7-8e28-4e7d-b408-e876c65b4b2c",
                "port": "is_sending"
              },
              "target": {
                "block": "367d5b55-9e82-4a72-b262-fae5edc1da1a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1365fba7-8e28-4e7d-b408-e876c65b4b2c",
                "port": "clk_cnt"
              },
              "target": {
                "block": "72ad4869-e358-4f93-9c32-0815ec9f3bd5",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "12b6b4a77e5d0c0e902d7bd42e66a42c69424df2": {
      "package": {
        "name": "FMS",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3794d29e-0ea1-487b-b800-8963e7a14d8d",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 616,
                "y": 544
              }
            },
            {
              "id": "cd911994-64cf-4184-9203-c2ebbc32678d",
              "type": "basic.output",
              "data": {
                "name": "start"
              },
              "position": {
                "x": 1304,
                "y": 592
              }
            },
            {
              "id": "5e14aabc-c916-43b5-99c8-37ad32e7562e",
              "type": "basic.input",
              "data": {
                "name": "sampling",
                "clock": false
              },
              "position": {
                "x": 616,
                "y": 648
              }
            },
            {
              "id": "3ba5d558-187d-4a2d-9e1d-f189f2d106af",
              "type": "basic.code",
              "data": {
                "code": "reg [1:0] state = 2'b00;\n\nalways @(posedge clk) begin\n    case(state)\n    2'b00: state <= (sampling==1'b1) ? 2'b01 : 2'b00;\n    2'b01: state <= 2'b11;\n    2'b11: state <= 2'b00;\n    endcase\nend\n\nassign start = state[0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "sampling"
                    }
                  ],
                  "out": [
                    {
                      "name": "start"
                    }
                  ]
                }
              },
              "position": {
                "x": 776,
                "y": 520
              },
              "size": {
                "width": 480,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3794d29e-0ea1-487b-b800-8963e7a14d8d",
                "port": "out"
              },
              "target": {
                "block": "3ba5d558-187d-4a2d-9e1d-f189f2d106af",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "5e14aabc-c916-43b5-99c8-37ad32e7562e",
                "port": "out"
              },
              "target": {
                "block": "3ba5d558-187d-4a2d-9e1d-f189f2d106af",
                "port": "sampling"
              }
            },
            {
              "source": {
                "block": "3ba5d558-187d-4a2d-9e1d-f189f2d106af",
                "port": "start"
              },
              "target": {
                "block": "cd911994-64cf-4184-9203-c2ebbc32678d",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "9be23803adc91e79a23465cb6b4201777df92370": {
      "package": {
        "name": "Triangle-Wave",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a5850d2a-e40b-42be-a65d-aee633978aea",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 744,
                "y": 512
              }
            },
            {
              "id": "ce7feb55-c9c6-4add-a5d2-36e17095aba5",
              "type": "basic.output",
              "data": {
                "name": "out",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 1312,
                "y": 584
              }
            },
            {
              "id": "6a9ccf20-d465-4d55-bafd-fea4ebbea619",
              "type": "basic.input",
              "data": {
                "name": "dt",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 744,
                "y": 584
              }
            },
            {
              "id": "ff2fa03a-2c5e-4ecb-a186-1d454a7f5c39",
              "type": "basic.input",
              "data": {
                "name": "dx",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 744,
                "y": 648
              }
            },
            {
              "id": "e66b80ff-bca2-492d-aefe-7cbf73ec555f",
              "type": "basic.code",
              "data": {
                "code": "reg [15:0] cnt = 16'b0;\nreg [15:0] out = 16'b0;\n\nalways @(posedge clk) begin\n    if(cnt == dt) begin\n        cnt <= 16'b0;\n        out <= out + dx;\n    end \n    else cnt <= cnt + 16'b1;\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "dt",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "dx",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ],
                  "out": [
                    {
                      "name": "out",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 904,
                "y": 512
              },
              "size": {
                "width": 344,
                "height": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ff2fa03a-2c5e-4ecb-a186-1d454a7f5c39",
                "port": "out"
              },
              "target": {
                "block": "e66b80ff-bca2-492d-aefe-7cbf73ec555f",
                "port": "dx"
              },
              "size": 16
            },
            {
              "source": {
                "block": "6a9ccf20-d465-4d55-bafd-fea4ebbea619",
                "port": "out"
              },
              "target": {
                "block": "e66b80ff-bca2-492d-aefe-7cbf73ec555f",
                "port": "dt"
              },
              "size": 16
            },
            {
              "source": {
                "block": "a5850d2a-e40b-42be-a65d-aee633978aea",
                "port": "out"
              },
              "target": {
                "block": "e66b80ff-bca2-492d-aefe-7cbf73ec555f",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e66b80ff-bca2-492d-aefe-7cbf73ec555f",
                "port": "out"
              },
              "target": {
                "block": "ce7feb55-c9c6-4add-a5d2-36e17095aba5",
                "port": "in"
              },
              "size": 16
            }
          ]
        }
      }
    },
    "6a50747141af6d1cfb3bb9d0093fb94862ff5a65": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            },
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        }
      }
    },
    "5fc38e7411482b846dfced33c459cd268f68f8a6": {
      "package": {
        "name": "Sampling",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ff2c73de-7fe7-4d9c-abe2-58b003a152b0",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 576,
                "y": 472
              }
            },
            {
              "id": "1040ab08-4094-4bd3-834b-06d61d2f2653",
              "type": "basic.input",
              "data": {
                "name": "on_cnt",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 576,
                "y": 608
              }
            },
            {
              "id": "e457c417-646a-444c-928a-250de3c944a5",
              "type": "basic.output",
              "data": {
                "name": "out"
              },
              "position": {
                "x": 1248,
                "y": 608
              }
            },
            {
              "id": "4759e437-2209-44e0-8bef-8f559101eddd",
              "type": "basic.input",
              "data": {
                "name": "off_cnt",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 576,
                "y": 736
              }
            },
            {
              "id": "f1a3c3d5-6d94-4a66-929b-2e294899f4dd",
              "type": "basic.code",
              "data": {
                "code": "reg [15:0] clk_counter=16'b0;\nreg out=1;\n\nalways @(posedge clk) begin\n    if(out==0) begin\n        if(clk_counter==off_cnt) begin\n            clk_counter <= 16'b0;\n            out <= ~out;\n        end\n        else\n            clk_counter <= clk_counter + 1;\n    end\n    else if(out==1) begin\n        if(clk_counter==on_cnt) begin\n            clk_counter <= 16'b0;\n            out <= ~out;\n        end\n        else\n            clk_counter <= clk_counter + 1;\n    end\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "on_cnt",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "off_cnt",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 760,
                "y": 440
              },
              "size": {
                "width": 432,
                "height": 392
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ff2c73de-7fe7-4d9c-abe2-58b003a152b0",
                "port": "out"
              },
              "target": {
                "block": "f1a3c3d5-6d94-4a66-929b-2e294899f4dd",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "4759e437-2209-44e0-8bef-8f559101eddd",
                "port": "out"
              },
              "target": {
                "block": "f1a3c3d5-6d94-4a66-929b-2e294899f4dd",
                "port": "off_cnt"
              },
              "size": 16
            },
            {
              "source": {
                "block": "1040ab08-4094-4bd3-834b-06d61d2f2653",
                "port": "out"
              },
              "target": {
                "block": "f1a3c3d5-6d94-4a66-929b-2e294899f4dd",
                "port": "on_cnt"
              },
              "size": 16
            },
            {
              "source": {
                "block": "f1a3c3d5-6d94-4a66-929b-2e294899f4dd",
                "port": "out"
              },
              "target": {
                "block": "e457c417-646a-444c-928a-250de3c944a5",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "27bb4ea7dcaf98cb7f6018992c234d87c56c2a05": {
      "package": {
        "name": "LDAC",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1c6087e5-db97-46e7-8caa-8849c20d76de",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 264
              }
            },
            {
              "id": "ea1e6fa2-c821-46dd-8717-6ee70dacf5ad",
              "type": "basic.output",
              "data": {
                "name": "ldac"
              },
              "position": {
                "x": 720,
                "y": 336
              }
            },
            {
              "id": "19ef8ca1-f42d-4d31-9f48-81816eb5b381",
              "type": "basic.input",
              "data": {
                "name": "ss",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 416
              }
            },
            {
              "id": "d12d2955-f3ec-4fdb-ae65-4f03198500e5",
              "type": "basic.code",
              "data": {
                "code": "reg out =0;\nreg memo=0;\nalways @(posedge clk) begin\n    if(ss==0) begin\n        out  <= 0;\n        memo <= 0;\n    end\n    if(ss==1 && memo==0) begin\n        out  <= 1;\n        memo <= 1;\n    end\n    if(ss==1 && memo==1)begin\n        out <= 0;\n    end\nend\n\nassign ldac = ~out;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "ss"
                    }
                  ],
                  "out": [
                    {
                      "name": "ldac"
                    }
                  ]
                }
              },
              "position": {
                "x": 360,
                "y": 216
              },
              "size": {
                "width": 328,
                "height": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d12d2955-f3ec-4fdb-ae65-4f03198500e5",
                "port": "ldac"
              },
              "target": {
                "block": "ea1e6fa2-c821-46dd-8717-6ee70dacf5ad",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1c6087e5-db97-46e7-8caa-8849c20d76de",
                "port": "out"
              },
              "target": {
                "block": "d12d2955-f3ec-4fdb-ae65-4f03198500e5",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "19ef8ca1-f42d-4d31-9f48-81816eb5b381",
                "port": "out"
              },
              "target": {
                "block": "d12d2955-f3ec-4fdb-ae65-4f03198500e5",
                "port": "ss"
              }
            }
          ]
        }
      }
    }
  }
}