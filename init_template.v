// rst
// ap
(* mark_debug = "true" *) wire ap_start;   // rx
(* mark_debug = "true" *) wire ap_ready;   // rx
(* mark_debug = "true" *) wire ap_done;    // rx
(* mark_debug = "true" *) wire ap_idle;    // rx
(* mark_debug = "true" *) wire ap_rst_n;   // tx && rx

assign ap_rst_n = !rst;
assign ap_start = ap_rst_n;

// pre
(* mark_debug = "true" *) wire [31:0] out_pre_TDATA;
(* mark_debug = "true" *) wire [4:0]  out_pre_TUSER;
(* mark_debug = "true" *) wire [5:0]  out_pre_TID;
(* mark_debug = "true" *) wire [0:0 ] out_pre_TVALID;
(* mark_debug = "true" *) wire [0:0 ] out_pre_TLAST;

// post
(* mark_debug = "true" *) wire [31:0] out_post_TDATA;
(* mark_debug = "true" *) wire [4:0]  out_post_TUSER;
(* mark_debug = "true" *) wire [5:0]  out_post_TID;
(* mark_debug = "true" *) wire [0:0 ] out_post_TVALID;
(* mark_debug = "true" *) wire [0:0 ] out_post_TLAST;

// busy
(* mark_debug = "true" *) wire [31:0] busy_A;

spk_packet_0 spk_packet_tx (
  .ap_clk           (clk              ), // input wire ap_clk
  .ap_rst_n         (ap_rst_n         ), // input wire ap_rst_n
  
  .mua_stream_TVALID(valid_buf        ), // input wire mua_stream_TVALID
  .mua_stream_TREADY(mua_stream_TREADY), // output wire mua_stream_TREADY
  .mua_stream_TUSER (frame_No_buf     ), // input wire [31 : 0] mua_stream_TUSER
  .mua_stream_TDATA (v_buf            ), // input wire [31 : 0] mua_stream_TDATA
  .mua_stream_TID   (ch_buf           ), // input wire [5 : 0] mua_stream_TID
  .out_pre_TVALID   (out_pre_TVALID   ), // output wire out_pre_TVALID
  .out_pre_TREADY   (pre_in_TREADY    ), // *** input wire out_pre_TREADY ***
  .out_pre_TUSER    (out_pre_TUSER    ), // output wire [4 : 0] out_pre_TUSER
  .out_pre_TDATA    (out_pre_TDATA    ), // output wire [31 : 0] out_pre_TDATA
  .out_pre_TID      (out_pre_TID      ), // output wire [5 : 0] out_pre_TID
  .out_pre_TLAST    (out_pre_TLAST    ), // output wire [0 : 0] out_pre_TLAST
  .out_post_TVALID  (out_post_TVALID  ), // output wire out_post_TVALID
  .out_post_TREADY  (post_in_TREADY   ), // *** input wire out_post_TREADY ***
  .out_post_TUSER   (out_post_TUSER   ), // output wire [4 : 0] out_post_TUSER
  .out_post_TDATA   (out_post_TDATA   ), // output wire [31 : 0] out_post_TDATA
  .out_post_TID     (out_post_TID     ), // output wire [5 : 0] out_post_TID
  .out_post_TLAST   (out_post_TLAST   ), // output wire [0 : 0] out_post_TLAST
  .busy_V           (busy_A           )  // output wire [31 : 0] busy_V
);

(* mark_debug = "true" *) wire pre_in_TREADY;
(* mark_debug = "true" *) wire post_in_TREADY;
(* mark_debug = "true" *) wire [0:0 ] spk_stream_CH_VALID;
(* mark_debug = "true" *) wire [5:0 ] spk_stream_CH_TDATA;
(* mark_debug = "true" *) wire [0:0 ] spk_stream_TVALID;
(* mark_debug = "true" *) wire [31:0] spk_stream_TDATA;

spk_packet_rx_0 spk_packet_rx (
  .ap_clk                   (clk                ), // input wire ap_clk
  .ap_rst_n                 (ap_rst_n           ), // input wire ap_rst_n
  .ap_start                 (ap_start           ), // input wire ap_start
  .ap_done                  (ap_done            ), // output wire ap_done
  .ap_idle                  (ap_idle            ), // output wire ap_idle
  .ap_ready                 (ap_ready           ), // output wire ap_ready
  
  .pre_in_TVALID            (out_pre_TVALID     ), // input wire pre_in_TVALID
  .pre_in_TREADY            (pre_in_TREADY      ), // output wire pre_in_TREADY
  .pre_in_TUSER             (out_pre_TUSER      ), // input wire [4 : 0] pre_in_TUSER
  .pre_in_TDATA             (out_pre_TDATA      ), // input wire [31 : 0] pre_in_TDATA
  .pre_in_TLAST             (out_pre_TLAST      ), // input wire [0 : 0] pre_in_TLAST
  .pre_in_TID               (out_pre_TID        ), // input wire [5 : 0] pre_in_TID
  .post_in_TVALID           (out_post_TVALID    ), // input wire post_in_TVALID
  .post_in_TREADY           (post_in_TREADY     ), // output wire post_in_TREADY
  .post_in_TUSER            (out_post_TUSER     ), // input wire [4 : 0] post_in_TUSER
  .post_in_TDATA            (out_post_TDATA     ), // input wire [31 : 0] post_in_TDATA
  .post_in_TLAST            (out_post_TLAST     ), // input wire [0 : 0] post_in_TLAST
  .post_in_TID              (out_post_TID       ), // input wire [5 : 0] post_in_TID
  
  .ch_out_V_V_TVALID        (spk_stream_CH_VALID), // output wire ch_out_V_V_TVALID
  .ch_out_V_V_TREADY        (1                  ), // input wire ch_out_V_V_TREADY
  .ch_out_V_V_TDATA         (spk_stream_CH_TDATA), // output wire [7 : 0] ch_out_V_V_TDATA
  .spk_out_stream_V_V_TVALID(spk_stream_TVALID  ), // output wire spk_out_stream_V_V_TVALID
  .spk_out_stream_V_V_TREADY(1                  ), // input wire spk_out_stream_V_V_TREADY
  .spk_out_stream_V_V_TDATA (spk_stream_TDATA   )  // output wire [31 : 0] spk_out_stream_V_V_TDATA
);
