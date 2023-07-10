{
  "version": "1.2",
  "package": {
    "name": "Triangle-Wave",
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
          "id": "a5850d2a-e40b-42be-a65d-aee633978aea",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
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
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
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
  },
  "dependencies": {}
}