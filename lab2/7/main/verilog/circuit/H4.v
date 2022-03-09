/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : H4                                                           **
 **                                                                          **
 ******************************************************************************/

module H4( c0,
           c1,
           c2,
           c3,
           bar4);

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
   output bar4;

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
   assign s_LOGISIM_NET_5                    = c2;
   assign s_LOGISIM_NET_9                    = c0;
   assign s_LOGISIM_NET_8                    = c3;
   assign s_LOGISIM_NET_3                    = c1;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign bar4                               = s_LOGISIM_NET_10;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_NET_5),
                         .Result(s_LOGISIM_NET_0));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_9),
                         .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_6));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_NET_3),
                         .Result());

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_3),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_4));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_8),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_1));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_8),
              .Input_2(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_7));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_4),
              .Input_3(s_LOGISIM_NET_1),
              .Input_4(s_LOGISIM_NET_7),
              .Result(s_LOGISIM_NET_10));



endmodule
