{
  "version": "1.2",
  "package": {
    "name": "LDAC",
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
          "id": "1c6087e5-db97-46e7-8caa-8849c20d76de",
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
            "x": 232,
            "y": 264
          }
        },
        {
          "id": "ea1e6fa2-c821-46dd-8717-6ee70dacf5ad",
          "type": "basic.output",
          "data": {
            "name": "ldac",
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
            "x": 720,
            "y": 336
          }
        },
        {
          "id": "19ef8ca1-f42d-4d31-9f48-81816eb5b381",
          "type": "basic.input",
          "data": {
            "name": "ss",
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
  },
  "dependencies": {}
}