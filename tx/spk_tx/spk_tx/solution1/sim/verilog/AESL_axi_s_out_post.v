// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_OUT_out_post_TUSER "../tv/rtldatafile/rtl.spk_packet_tx.autotvout_out_post_V_user_V.dat"
`define EGRESS_STATUS_out_post_TUSER "../tv/stream_size/stream_egress_status_out_post_V_user_V.dat"
`define TV_OUT_out_post_TID "../tv/rtldatafile/rtl.spk_packet_tx.autotvout_out_post_V_id_V.dat"
`define EGRESS_STATUS_out_post_TID "../tv/stream_size/stream_egress_status_out_post_V_id_V.dat"
`define TV_OUT_out_post_TLAST "../tv/rtldatafile/rtl.spk_packet_tx.autotvout_out_post_V_last.dat"
`define EGRESS_STATUS_out_post_TLAST "../tv/stream_size/stream_egress_status_out_post_V_last.dat"
`define TV_OUT_out_post_TDATA "../tv/rtldatafile/rtl.spk_packet_tx.autotvout_out_post_V_data_V.dat"
`define EGRESS_STATUS_out_post_TDATA "../tv/stream_size/stream_egress_status_out_post_V_data_V.dat"

`define AUTOTB_TRANSACTION_NUM 10240

module AESL_axi_s_out_post (
    input clk,
    input reset,
    input [5 - 1:0] TRAN_out_post_TUSER,
    input [5 - 1:0] TRAN_out_post_TID,
    input TRAN_out_post_TLAST,
    input [96 - 1:0] TRAN_out_post_TDATA,
    input TRAN_out_post_TVALID,
    output TRAN_out_post_TREADY,
    input ready,
    input done,
    output [31:0] transaction);
    
    wire out_post_TUSER_full;
    wire out_post_TUSER_empty;
    reg out_post_TUSER_write_en;
    reg [5 - 1:0] out_post_TUSER_write_data;
    reg out_post_TUSER_read_en;
    wire [5 - 1:0] out_post_TUSER_read_data;
    
    fifo #(1, 5) fifo_out_post_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(out_post_TUSER_write_en),
        .write_data(out_post_TUSER_write_data),
        .read_clock(clk),
        .read_en(out_post_TUSER_read_en),
        .read_data(out_post_TUSER_read_data),
        .full(out_post_TUSER_full),
        .empty(out_post_TUSER_empty));
    
    always @ (*) begin
        out_post_TUSER_write_en <= TRAN_out_post_TVALID;
        out_post_TUSER_write_data <= TRAN_out_post_TUSER;
        out_post_TUSER_read_en <= 0;
    end
    
    wire out_post_TID_full;
    wire out_post_TID_empty;
    reg out_post_TID_write_en;
    reg [5 - 1:0] out_post_TID_write_data;
    reg out_post_TID_read_en;
    wire [5 - 1:0] out_post_TID_read_data;
    
    fifo #(1, 5) fifo_out_post_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(out_post_TID_write_en),
        .write_data(out_post_TID_write_data),
        .read_clock(clk),
        .read_en(out_post_TID_read_en),
        .read_data(out_post_TID_read_data),
        .full(out_post_TID_full),
        .empty(out_post_TID_empty));
    
    always @ (*) begin
        out_post_TID_write_en <= TRAN_out_post_TVALID;
        out_post_TID_write_data <= TRAN_out_post_TID;
        out_post_TID_read_en <= 0;
    end
    
    wire out_post_TLAST_full;
    wire out_post_TLAST_empty;
    reg out_post_TLAST_write_en;
    reg [1 - 1:0] out_post_TLAST_write_data;
    reg out_post_TLAST_read_en;
    wire [1 - 1:0] out_post_TLAST_read_data;
    
    fifo #(1, 1) fifo_out_post_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(out_post_TLAST_write_en),
        .write_data(out_post_TLAST_write_data),
        .read_clock(clk),
        .read_en(out_post_TLAST_read_en),
        .read_data(out_post_TLAST_read_data),
        .full(out_post_TLAST_full),
        .empty(out_post_TLAST_empty));
    
    always @ (*) begin
        out_post_TLAST_write_en <= TRAN_out_post_TVALID;
        out_post_TLAST_write_data <= TRAN_out_post_TLAST;
        out_post_TLAST_read_en <= 0;
    end
    
    wire out_post_TDATA_full;
    wire out_post_TDATA_empty;
    reg out_post_TDATA_write_en;
    reg [96 - 1:0] out_post_TDATA_write_data;
    reg out_post_TDATA_read_en;
    wire [96 - 1:0] out_post_TDATA_read_data;
    
    fifo #(1, 96) fifo_out_post_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(out_post_TDATA_write_en),
        .write_data(out_post_TDATA_write_data),
        .read_clock(clk),
        .read_en(out_post_TDATA_read_en),
        .read_data(out_post_TDATA_read_data),
        .full(out_post_TDATA_full),
        .empty(out_post_TDATA_empty));
    
    always @ (*) begin
        out_post_TDATA_write_en <= TRAN_out_post_TVALID;
        out_post_TDATA_write_data <= TRAN_out_post_TDATA;
        out_post_TDATA_read_en <= 0;
    end
    
    assign TRAN_out_post_TREADY = ~(out_post_TUSER_full || out_post_TID_full || out_post_TLAST_full || out_post_TDATA_full);
    
    function is_blank_char(input [7:0] char);
        if (char == " " || char == "\011" || char == "\012" || char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [215:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [215:0] rm_0x(input [215:0] token);
        reg [215:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_out_post_TUSER;
    
    assign transaction = transaction_save_out_post_TUSER;
    
    initial begin : AXI_stream_receiver_out_post_TUSER
        integer fp;
        reg [5 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_out_post_TUSER = 0;
        fifo_out_post_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_out_post_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_out_post_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_out_post_TUSER);
                while (~fifo_out_post_TUSER.empty) begin
                    fifo_out_post_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_out_post_TUSER = transaction_save_out_post_TUSER + 1;
                fifo_out_post_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_out_post_TID;
    
    initial begin : AXI_stream_receiver_out_post_TID
        integer fp;
        reg [5 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_out_post_TID = 0;
        fifo_out_post_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_out_post_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_out_post_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_out_post_TID);
                while (~fifo_out_post_TID.empty) begin
                    fifo_out_post_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_out_post_TID = transaction_save_out_post_TID + 1;
                fifo_out_post_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_out_post_TLAST;
    
    initial begin : AXI_stream_receiver_out_post_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_out_post_TLAST = 0;
        fifo_out_post_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_out_post_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_out_post_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_out_post_TLAST);
                while (~fifo_out_post_TLAST.empty) begin
                    fifo_out_post_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_out_post_TLAST = transaction_save_out_post_TLAST + 1;
                fifo_out_post_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_out_post_TDATA;
    
    initial begin : AXI_stream_receiver_out_post_TDATA
        integer fp;
        reg [96 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_out_post_TDATA = 0;
        fifo_out_post_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_out_post_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_out_post_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_out_post_TDATA);
                while (~fifo_out_post_TDATA.empty) begin
                    fifo_out_post_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_out_post_TDATA = transaction_save_out_post_TDATA + 1;
                fifo_out_post_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule
