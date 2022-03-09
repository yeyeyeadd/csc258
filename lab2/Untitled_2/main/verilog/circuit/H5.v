/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : H5                                                           **
 **                                                                          **
 ******************************************************************************/

module H5( c0,
           c1,
           c2,
           c3,
           bar5);

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
   output bar5;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
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
   assign s_LOGISIM_NET_4                    = c2;
   assign s_LOGISIM_NET_10                   = c3;
   assign s_LOGISIM_NET_11                   = c1;
   assign s_LOGISIM_NET_6                    = c0;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign bar5                               = s_LOGISIM_NET_8;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_9));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_1));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_11),
              .Result(s_LOGISIM_NET_5));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_13),
              .Input_2(s_LOGISIM_NET_4),
              .Input_3(s_LOGISIM_NET_7),
              .Result(s_LOGISIM_NET_0));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_NET_11),
                         .Result(s_LOGISIM_NET_7));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_6),
                         .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_7),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_NET_10),
                         .Result(s_LOGISIM_NET_13));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_NET_4),
                         .Result(s_LOGISIM_NET_3));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_12),
               .Input_2(s_LOGISIM_NET_0),
               .Input_3(s_LOGISIM_NET_9),
               .Input_4(s_LOGISIM_NET_1),
               .Input_5(s_LOGISIM_NET_5),
               .Result(s_LOGISIM_NET_8));



endmodule
