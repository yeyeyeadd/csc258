/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 ******************************************************************************/

module main( SW_0,
             SW_1,
             SW_9,
             s0,
             s1,
             u,
             v,
             w,
             x,
             LEDR_9,
             m);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  SW_0;
   input  SW_1;
   input  SW_9;
   input  s0;
   input  s1;
   input  u;
   input  v;
   input  w;
   input  x;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output LEDR_9;
   output m;

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
   assign s_LOGISIM_NET_10                   = u;
   assign s_LOGISIM_NET_8                    = v;
   assign s_LOGISIM_NET_7                    = w;
   assign s_LOGISIM_NET_4                    = x;
   assign s_LOGISIM_NET_6                    = s0;
   assign s_LOGISIM_NET_0                    = s1;
   assign s_LOGISIM_NET_1                    = SW_0;
   assign s_LOGISIM_NET_2                    = SW_1;
   assign s_LOGISIM_NET_3                    = SW_9;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign m                                  = s_LOGISIM_NET_5;
   assign LEDR_9                             = s_LOGISIM_NET_9;

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   mux4to1      mux4to1_1 (.m(s_LOGISIM_NET_5),
                           .s0(s_LOGISIM_NET_6),
                           .s1(s_LOGISIM_NET_0),
                           .u(s_LOGISIM_NET_10),
                           .v(s_LOGISIM_NET_8),
                           .w(s_LOGISIM_NET_7),
                           .x(s_LOGISIM_NET_4));

   mux2to1      b (.m(s_LOGISIM_NET_9),
                   .s(s_LOGISIM_NET_3),
                   .x(s_LOGISIM_NET_1),
                   .y(s_LOGISIM_NET_2));



endmodule
