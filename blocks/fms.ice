{
  "version": "1.2",
  "package": {
    "name": "FMS",
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
          "id": "3794d29e-0ea1-487b-b800-8963e7a14d8d",
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
            "x": 616,
            "y": 544
          }
        },
        {
          "id": "cd911994-64cf-4184-9203-c2ebbc32678d",
          "type": "basic.output",
          "data": {
            "name": "start",
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
            "x": 1304,
            "y": 592
          }
        },
        {
          "id": "5e14aabc-c916-43b5-99c8-37ad32e7562e",
          "type": "basic.input",
          "data": {
            "name": "sampling",
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
  },
  "dependencies": {}
}