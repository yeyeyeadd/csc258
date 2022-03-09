/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

module LogisimToplevelShell( FPGA_INPUT_PIN_0,
                             FPGA_INPUT_PIN_1,
                             FPGA_INPUT_PIN_2,
                             FPGA_INPUT_PIN_3,
                             FPGA_INPUT_PIN_4,
                             FPGA_INPUT_PIN_5,
                             FPGA_INPUT_PIN_6,
                             FPGA_INPUT_PIN_7,
                             FPGA_INPUT_PIN_8,
                             FPGA_OUTPUT_PIN_0,
                             FPGA_OUTPUT_PIN_1);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_INPUT_PIN_0;
   input  FPGA_INPUT_PIN_1;
   input  FPGA_INPUT_PIN_2;
   input  FPGA_INPUT_PIN_3;
   input  FPGA_INPUT_PIN_4;
   input  FPGA_INPUT_PIN_5;
   input  FPGA_INPUT_PIN_6;
   input  FPGA_INPUT_PIN_7;
   input  FPGA_INPUT_PIN_8;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output FPGA_OUTPUT_PIN_0;
   output FPGA_OUTPUT_PIN_1;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LEDR_9;
   wire s_SW_0;
   wire s_SW_1;
   wire s_SW_9;
   wire s_m;
   wire s_s0;
   wire s_s1;
   wire s_u;
   wire s_v;
   wire s_w;
   wire s_x;

   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   assign s_v = ~FPGA_INPUT_PIN_0;
   assign s_u = ~FPGA_INPUT_PIN_1;
   assign s_SW_9 = ~FPGA_INPUT_PIN_2;
   assign FPGA_OUTPUT_PIN_0 = ~s_LEDR_9;
   assign s_s1 = ~FPGA_INPUT_PIN_3;
   assign s_SW_0 = ~FPGA_INPUT_PIN_4;
   assign s_s0 = ~FPGA_INPUT_PIN_5;
   assign s_SW_1 = ~FPGA_INPUT_PIN_6;
   assign FPGA_OUTPUT_PIN_1 = ~s_m;
   assign s_x = ~FPGA_INPUT_PIN_7;
   assign s_w = ~FPGA_INPUT_PIN_8;
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/

   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   main      main_0 (.LEDR_9(s_LEDR_9),
                     .SW_0(s_SW_0),
                     .SW_1(s_SW_1),
                     .SW_9(s_SW_9),
                     .m(s_m),
                     .s0(s_s0),
                     .s1(s_s1),
                     .u(s_u),
                     .v(s_v),
                     .w(s_w),
                     .x(s_x));


endmodule
