/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 ******************************************************************************/

module main( c0,
             c1,
             c2,
             c3,
             LOGISIM_OUTPUT_BUBBLES);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  c0;
   input  c1;
   input  c2;
   input  c3;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] LOGISIM_OUTPUT_BUBBLES;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_1                    = c3;
   assign s_LOGISIM_NET_5                    = c2;
   assign s_LOGISIM_NET_4                    = c1;
   assign s_LOGISIM_NET_2                    = c0;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign LOGISIM_OUTPUT_BUBBLES[0] = s_LOGISIM_NET_9;
   assign LOGISIM_OUTPUT_BUBBLES[1] = s_LOGISIM_NET_8;
   assign LOGISIM_OUTPUT_BUBBLES[2] = s_LOGISIM_NET_0;
   assign LOGISIM_OUTPUT_BUBBLES[3] = s_LOGISIM_NET_10;
   assign LOGISIM_OUTPUT_BUBBLES[4] = s_LOGISIM_NET_6;
   assign LOGISIM_OUTPUT_BUBBLES[5] = s_LOGISIM_NET_3;
   assign LOGISIM_OUTPUT_BUBBLES[6] = s_LOGISIM_NET_7;
   assign LOGISIM_OUTPUT_BUBBLES[7] = 1'b0;

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   H1      H1_1 (.bar1(s_LOGISIM_NET_8),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));

   H2      H2_1 (.bar2(s_LOGISIM_NET_0),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));

   H3      H3_1 (.bar3(s_LOGISIM_NET_10),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));

   H0      H0_1 (.bar0(s_LOGISIM_NET_9),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));

   H4      H4_1 (.bar4(s_LOGISIM_NET_6),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));

   H5      H5_1 (.bar5(s_LOGISIM_NET_3),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));

   H6      H6_1 (.bar6(s_LOGISIM_NET_7),
                 .c0(s_LOGISIM_NET_2),
                 .c1(s_LOGISIM_NET_4),
                 .c2(s_LOGISIM_NET_5),
                 .c3(s_LOGISIM_NET_1));



endmodule
