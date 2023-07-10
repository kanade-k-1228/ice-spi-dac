{
  "version": "1.2",
  "package": {
    "name": "SQUARE-WAVE",
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
          "id": "a0599706-fee8-4839-90c0-7fd27c1920b4",
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
            "x": 952,
            "y": 648
          }
        },
        {
          "id": "74ca995e-a3bb-4f25-9e69-b1e907d94166",
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
            "x": 1512,
            "y": 696
          }
        },
        {
          "id": "9115c54f-0cea-4b06-94ef-d5ad92bea1c0",
          "type": "basic.input",
          "data": {
            "name": "cnt",
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
            "x": 952,
            "y": 744
          }
        },
        {
          "id": "00d07df5-0482-4135-9218-4c62960568b2",
          "type": "basic.code",
          "data": {
            "code": "reg [15:0] counter;\nreg out;\n\nalways @(posedge clk) begin\n    if(counter == cnt) begin\n        counter <= 16'b0;\n        out <= ~out;\n    end \n    else counter <= counter + 16'b1;\nend\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "cnt",
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
            "x": 1120,
            "y": 632
          },
          "size": {
            "width": 352,
            "height": 192
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "a0599706-fee8-4839-90c0-7fd27c1920b4",
            "port": "out"
          },
          "target": {
            "block": "00d07df5-0482-4135-9218-4c62960568b2",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "00d07df5-0482-4135-9218-4c62960568b2",
            "port": "out"
          },
          "target": {
            "block": "74ca995e-a3bb-4f25-9e69-b1e907d94166",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9115c54f-0cea-4b06-94ef-d5ad92bea1c0",
            "port": "out"
          },
          "target": {
            "block": "00d07df5-0482-4135-9218-4c62960568b2",
            "port": "cnt"
          },
          "size": 16
        }
      ]
    }
  },
  "dependencies": {}
}