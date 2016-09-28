// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_OUT_spk_out_stream_TID "../tv/rtldatafile/rtl.spk_packet_rx.autotvout_spk_out_stream_V_id_V.dat"
`define EGRESS_STATUS_spk_out_stream_TID "../tv/stream_size/stream_egress_status_spk_out_stream_V_id_V.dat"
`define TV_OUT_spk_out_stream_TUSER "../tv/rtldatafile/rtl.spk_packet_rx.autotvout_spk_out_stream_V_user.dat"
`define EGRESS_STATUS_spk_out_stream_TUSER "../tv/stream_size/stream_egress_status_spk_out_stream_V_user.dat"
`define TV_OUT_spk_out_stream_TDATA "../tv/rtldatafile/rtl.spk_packet_rx.autotvout_spk_out_stream_V_data_V.dat"
`define EGRESS_STATUS_spk_out_stream_TDATA "../tv/stream_size/stream_egress_status_spk_out_stream_V_data_V.dat"

`define AUTOTB_TRANSACTION_NUM 38

module AESL_axi_s_spk_out_stream (
    input clk,
    input reset,
    input [6 - 1:0] TRAN_spk_out_stream_TID,
    input [32 - 1:0] TRAN_spk_out_stream_TUSER,
    input [32 - 1:0] TRAN_spk_out_stream_TDATA,
    input TRAN_spk_out_stream_TVALID,
    output TRAN_spk_out_stream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);
    
    wire spk_out_stream_TID_full;
    wire spk_out_stream_TID_empty;
    reg spk_out_stream_TID_write_en;
    reg [6 - 1:0] spk_out_stream_TID_write_data;
    reg spk_out_stream_TID_read_en;
    wire [6 - 1:0] spk_out_stream_TID_read_data;
    
    fifo #(19, 6) fifo_spk_out_stream_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(spk_out_stream_TID_write_en),
        .write_data(spk_out_stream_TID_write_data),
        .read_clock(clk),
        .read_en(spk_out_stream_TID_read_en),
        .read_data(spk_out_stream_TID_read_data),
        .full(spk_out_stream_TID_full),
        .empty(spk_out_stream_TID_empty));
    
    always @ (*) begin
        spk_out_stream_TID_write_en <= TRAN_spk_out_stream_TVALID;
        spk_out_stream_TID_write_data <= TRAN_spk_out_stream_TID;
        spk_out_stream_TID_read_en <= 0;
    end
    
    wire spk_out_stream_TUSER_full;
    wire spk_out_stream_TUSER_empty;
    reg spk_out_stream_TUSER_write_en;
    reg [32 - 1:0] spk_out_stream_TUSER_write_data;
    reg spk_out_stream_TUSER_read_en;
    wire [32 - 1:0] spk_out_stream_TUSER_read_data;
    
    fifo #(19, 32) fifo_spk_out_stream_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(spk_out_stream_TUSER_write_en),
        .write_data(spk_out_stream_TUSER_write_data),
        .read_clock(clk),
        .read_en(spk_out_stream_TUSER_read_en),
        .read_data(spk_out_stream_TUSER_read_data),
        .full(spk_out_stream_TUSER_full),
        .empty(spk_out_stream_TUSER_empty));
    
    always @ (*) begin
        spk_out_stream_TUSER_write_en <= TRAN_spk_out_stream_TVALID;
        spk_out_stream_TUSER_write_data <= TRAN_spk_out_stream_TUSER;
        spk_out_stream_TUSER_read_en <= 0;
    end
    
    wire spk_out_stream_TDATA_full;
    wire spk_out_stream_TDATA_empty;
    reg spk_out_stream_TDATA_write_en;
    reg [32 - 1:0] spk_out_stream_TDATA_write_data;
    reg spk_out_stream_TDATA_read_en;
    wire [32 - 1:0] spk_out_stream_TDATA_read_data;
    
    fifo #(19, 32) fifo_spk_out_stream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(spk_out_stream_TDATA_write_en),
        .write_data(spk_out_stream_TDATA_write_data),
        .read_clock(clk),
        .read_en(spk_out_stream_TDATA_read_en),
        .read_data(spk_out_stream_TDATA_read_data),
        .full(spk_out_stream_TDATA_full),
        .empty(spk_out_stream_TDATA_empty));
    
    always @ (*) begin
        spk_out_stream_TDATA_write_en <= TRAN_spk_out_stream_TVALID;
        spk_out_stream_TDATA_write_data <= TRAN_spk_out_stream_TDATA;
        spk_out_stream_TDATA_read_en <= 0;
    end
    
    assign TRAN_spk_out_stream_TREADY = ~(spk_out_stream_TID_full || spk_out_stream_TUSER_full || spk_out_stream_TDATA_full);
    
    function is_blank_char(input [7:0] char);
        if (char == " " || char == "\011" || char == "\012" || char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [191:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [191:0] rm_0x(input [191:0] token);
        reg [191:0] token_tmp;
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
    
    reg [31:0] transaction_save_spk_out_stream_TID;
    
    assign transaction = transaction_save_spk_out_stream_TID;
    
    initial begin : AXI_stream_receiver_spk_out_stream_TID
        integer fp;
        reg [6 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_spk_out_stream_TID = 0;
        fifo_spk_out_stream_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_spk_out_stream_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_spk_out_stream_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_spk_out_stream_TID);
                while (~fifo_spk_out_stream_TID.empty) begin
                    fifo_spk_out_stream_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_spk_out_stream_TID = transaction_save_spk_out_stream_TID + 1;
                fifo_spk_out_stream_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_spk_out_stream_TUSER;
    
    initial begin : AXI_stream_receiver_spk_out_stream_TUSER
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_spk_out_stream_TUSER = 0;
        fifo_spk_out_stream_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_spk_out_stream_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_spk_out_stream_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_spk_out_stream_TUSER);
                while (~fifo_spk_out_stream_TUSER.empty) begin
                    fifo_spk_out_stream_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_spk_out_stream_TUSER = transaction_save_spk_out_stream_TUSER + 1;
                fifo_spk_out_stream_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_spk_out_stream_TDATA;
    
    initial begin : AXI_stream_receiver_spk_out_stream_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_spk_out_stream_TDATA = 0;
        fifo_spk_out_stream_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_spk_out_stream_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_spk_out_stream_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_spk_out_stream_TDATA);
                while (~fifo_spk_out_stream_TDATA.empty) begin
                    fifo_spk_out_stream_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_spk_out_stream_TDATA = transaction_save_spk_out_stream_TDATA + 1;
                fifo_spk_out_stream_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule