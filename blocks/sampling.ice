{
  "version": "1.2",
  "package": {
    "name": "Sampling",
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
          "id": "ff2c73de-7fe7-4d9c-abe2-58b003a152b0",
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
            "x": 576,
            "y": 608
          }
        },
        {
          "id": "e457c417-646a-444c-928a-250de3c944a5",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
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
  },
  "dependencies": {}
}