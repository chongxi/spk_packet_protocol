// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_IN_mua_stream_TUSER "../tv/cdatafile/c.spk_packet_tx.autotvin_mua_stream_V_user.dat"
`define INGRESS_STATUS_mua_stream_TUSER "../tv/stream_size/stream_ingress_status_mua_stream_V_user.dat"
`define TV_IN_mua_stream_TID "../tv/cdatafile/c.spk_packet_tx.autotvin_mua_stream_V_id_V.dat"
`define INGRESS_STATUS_mua_stream_TID "../tv/stream_size/stream_ingress_status_mua_stream_V_id_V.dat"
`define TV_IN_mua_stream_TDATA "../tv/cdatafile/c.spk_packet_tx.autotvin_mua_stream_V_data_V.dat"
`define INGRESS_STATUS_mua_stream_TDATA "../tv/stream_size/stream_ingress_status_mua_stream_V_data_V.dat"

`define AUTOTB_TRANSACTION_NUM 10240

module AESL_axi_s_mua_stream (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_mua_stream_TUSER,
    output [5 - 1:0] TRAN_mua_stream_TID,
    output [96 - 1:0] TRAN_mua_stream_TDATA,
    output TRAN_mua_stream_TVALID,
    input TRAN_mua_stream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);
    
    wire mua_stream_TUSER_full;
    wire mua_stream_TUSER_empty;
    reg mua_stream_TUSER_write_en;
    reg [32 - 1:0] mua_stream_TUSER_write_data;
    reg mua_stream_TUSER_read_en;
    wire [32 - 1:0] mua_stream_TUSER_read_data;
    
    fifo #(1, 32) fifo_mua_stream_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(mua_stream_TUSER_write_en),
        .write_data(mua_stream_TUSER_write_data),
        .read_clock(clk),
        .read_en(mua_stream_TUSER_read_en),
        .read_data(mua_stream_TUSER_read_data),
        .full(mua_stream_TUSER_full),
        .empty(mua_stream_TUSER_empty));
    
    always @ (*) begin
        mua_stream_TUSER_write_en <= 0;
        mua_stream_TUSER_read_en <= TRAN_mua_stream_TREADY;
    end
    
    assign TRAN_mua_stream_TUSER = mua_stream_TUSER_read_data;
    
    wire mua_stream_TID_full;
    wire mua_stream_TID_empty;
    reg mua_stream_TID_write_en;
    reg [5 - 1:0] mua_stream_TID_write_data;
    reg mua_stream_TID_read_en;
    wire [5 - 1:0] mua_stream_TID_read_data;
    
    fifo #(1, 5) fifo_mua_stream_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(mua_stream_TID_write_en),
        .write_data(mua_stream_TID_write_data),
        .read_clock(clk),
        .read_en(mua_stream_TID_read_en),
        .read_data(mua_stream_TID_read_data),
        .full(mua_stream_TID_full),
        .empty(mua_stream_TID_empty));
    
    always @ (*) begin
        mua_stream_TID_write_en <= 0;
        mua_stream_TID_read_en <= TRAN_mua_stream_TREADY;
    end
    
    assign TRAN_mua_stream_TID = mua_stream_TID_read_data;
    
    wire mua_stream_TDATA_full;
    wire mua_stream_TDATA_empty;
    reg mua_stream_TDATA_write_en;
    reg [96 - 1:0] mua_stream_TDATA_write_data;
    reg mua_stream_TDATA_read_en;
    wire [96 - 1:0] mua_stream_TDATA_read_data;
    
    fifo #(1, 96) fifo_mua_stream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(mua_stream_TDATA_write_en),
        .write_data(mua_stream_TDATA_write_data),
        .read_clock(clk),
        .read_en(mua_stream_TDATA_read_en),
        .read_data(mua_stream_TDATA_read_data),
        .full(mua_stream_TDATA_full),
        .empty(mua_stream_TDATA_empty));
    
    always @ (*) begin
        mua_stream_TDATA_write_en <= 0;
        mua_stream_TDATA_read_en <= TRAN_mua_stream_TREADY;
    end
    
    assign TRAN_mua_stream_TDATA = mua_stream_TDATA_read_data;
    
    reg mua_stream_TUSER_valid = 0; // ingress buffer indicator: mua_stream_TUSER
    reg mua_stream_TID_valid = 0; // ingress buffer indicator: mua_stream_TID
    reg mua_stream_TDATA_valid = 0; // ingress buffer indicator: mua_stream_TDATA
    
    assign TRAN_mua_stream_TVALID = ~(mua_stream_TUSER_empty || mua_stream_TID_empty || mua_stream_TDATA_empty) || (mua_stream_TUSER_valid && mua_stream_TID_valid && mua_stream_TDATA_valid);
    
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
    
    reg [31:0] transaction_load_mua_stream_TUSER;
    
    assign transaction = transaction_load_mua_stream_TUSER;
    
    initial begin : AXI_stream_driver_mua_stream_TUSER
        integer fp;
        reg [215:0] token;
        reg [32 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_mua_stream_TUSER = 0;
        fifo_mua_stream_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_mua_stream_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_mua_stream_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_mua_stream_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_mua_stream_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_mua_stream_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_mua_stream_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_mua_stream_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    mua_stream_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_mua_stream_TUSER.snapshot();
                end else begin
                    fifo_mua_stream_TUSER.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_mua_stream_TUSER = transaction_load_mua_stream_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_mua_stream_TID;
    
    initial begin : AXI_stream_driver_mua_stream_TID
        integer fp;
        reg [215:0] token;
        reg [5 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_mua_stream_TID = 0;
        fifo_mua_stream_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_mua_stream_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_mua_stream_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_mua_stream_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_mua_stream_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_mua_stream_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_mua_stream_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_mua_stream_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    mua_stream_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_mua_stream_TID.snapshot();
                end else begin
                    fifo_mua_stream_TID.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_mua_stream_TID = transaction_load_mua_stream_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_mua_stream_TDATA;
    
    initial begin : AXI_stream_driver_mua_stream_TDATA
        integer fp;
        reg [215:0] token;
        reg [96 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_mua_stream_TDATA = 0;
        fifo_mua_stream_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_mua_stream_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_mua_stream_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_mua_stream_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_mua_stream_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_mua_stream_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_mua_stream_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_mua_stream_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    mua_stream_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_mua_stream_TDATA.snapshot();
                end else begin
                    fifo_mua_stream_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_mua_stream_TDATA = transaction_load_mua_stream_TDATA + 1;
            end
        end
    end

endmodule
