/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : mux4to1                                                      **
 **                                                                          **
 ******************************************************************************/

module mux4to1( s0,
                s1,
                u,
                v,
                w,
                x,
                m);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  s0;
   input  s1;
   input  u;
   input  v;
   input  w;
   input  x;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output m;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_4                    = u;
   assign s_LOGISIM_NET_7                    = v;
   assign s_LOGISIM_NET_0                    = w;
   assign s_LOGISIM_NET_5                    = x;
   assign s_LOGISIM_NET_1                    = s0;
   assign s_LOGISIM_NET_8                    = s1;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign m                                  = s_LOGISIM_NET_2;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_4),
                             .MuxIn_1(s_LOGISIM_NET_7),
                             .MuxOut(s_LOGISIM_NET_6),
                             .Sel(s_LOGISIM_NET_1));

   Multiplexer_2      MUX_2 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_0),
                             .MuxIn_1(s_LOGISIM_NET_5),
                             .MuxOut(s_LOGISIM_NET_3),
                             .Sel(s_LOGISIM_NET_1));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_6),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_2),
                             .Sel(s_LOGISIM_NET_8));



endmodule
