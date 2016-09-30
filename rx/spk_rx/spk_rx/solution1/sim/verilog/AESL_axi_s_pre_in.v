// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_IN_pre_in_TUSER "../tv/cdatafile/c.spk_packet_rx.autotvin_pre_in_V_user_V.dat"
`define INGRESS_STATUS_pre_in_TUSER "../tv/stream_size/stream_ingress_status_pre_in_V_user_V.dat"
`define TV_IN_pre_in_TLAST "../tv/cdatafile/c.spk_packet_rx.autotvin_pre_in_V_last.dat"
`define INGRESS_STATUS_pre_in_TLAST "../tv/stream_size/stream_ingress_status_pre_in_V_last.dat"
`define TV_IN_pre_in_TID "../tv/cdatafile/c.spk_packet_rx.autotvin_pre_in_V_id_V.dat"
`define INGRESS_STATUS_pre_in_TID "../tv/stream_size/stream_ingress_status_pre_in_V_id_V.dat"
`define TV_IN_pre_in_TDATA "../tv/cdatafile/c.spk_packet_rx.autotvin_pre_in_V_data_V.dat"
`define INGRESS_STATUS_pre_in_TDATA "../tv/stream_size/stream_ingress_status_pre_in_V_data_V.dat"

`define AUTOTB_TRANSACTION_NUM 38

module AESL_axi_s_pre_in (
    input clk,
    input reset,
    output [5 - 1:0] TRAN_pre_in_TUSER,
    output TRAN_pre_in_TLAST,
    output [6 - 1:0] TRAN_pre_in_TID,
    output [96 - 1:0] TRAN_pre_in_TDATA,
    output TRAN_pre_in_TVALID,
    input TRAN_pre_in_TREADY,
    input ready,
    input done,
    output [31:0] transaction);
    
    wire pre_in_TUSER_full;
    wire pre_in_TUSER_empty;
    reg pre_in_TUSER_write_en;
    reg [5 - 1:0] pre_in_TUSER_write_data;
    reg pre_in_TUSER_read_en;
    wire [5 - 1:0] pre_in_TUSER_read_data;
    
    fifo #(1, 5) fifo_pre_in_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(pre_in_TUSER_write_en),
        .write_data(pre_in_TUSER_write_data),
        .read_clock(clk),
        .read_en(pre_in_TUSER_read_en),
        .read_data(pre_in_TUSER_read_data),
        .full(pre_in_TUSER_full),
        .empty(pre_in_TUSER_empty));
    
    always @ (*) begin
        pre_in_TUSER_write_en <= 0;
        pre_in_TUSER_read_en <= TRAN_pre_in_TREADY;
    end
    
    assign TRAN_pre_in_TUSER = pre_in_TUSER_read_data;
    
    wire pre_in_TLAST_full;
    wire pre_in_TLAST_empty;
    reg pre_in_TLAST_write_en;
    reg [1 - 1:0] pre_in_TLAST_write_data;
    reg pre_in_TLAST_read_en;
    wire [1 - 1:0] pre_in_TLAST_read_data;
    
    fifo #(1, 1) fifo_pre_in_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(pre_in_TLAST_write_en),
        .write_data(pre_in_TLAST_write_data),
        .read_clock(clk),
        .read_en(pre_in_TLAST_read_en),
        .read_data(pre_in_TLAST_read_data),
        .full(pre_in_TLAST_full),
        .empty(pre_in_TLAST_empty));
    
    always @ (*) begin
        pre_in_TLAST_write_en <= 0;
        pre_in_TLAST_read_en <= TRAN_pre_in_TREADY;
    end
    
    assign TRAN_pre_in_TLAST = pre_in_TLAST_read_data;
    
    wire pre_in_TID_full;
    wire pre_in_TID_empty;
    reg pre_in_TID_write_en;
    reg [6 - 1:0] pre_in_TID_write_data;
    reg pre_in_TID_read_en;
    wire [6 - 1:0] pre_in_TID_read_data;
    
    fifo #(1, 6) fifo_pre_in_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(pre_in_TID_write_en),
        .write_data(pre_in_TID_write_data),
        .read_clock(clk),
        .read_en(pre_in_TID_read_en),
        .read_data(pre_in_TID_read_data),
        .full(pre_in_TID_full),
        .empty(pre_in_TID_empty));
    
    always @ (*) begin
        pre_in_TID_write_en <= 0;
        pre_in_TID_read_en <= TRAN_pre_in_TREADY;
    end
    
    assign TRAN_pre_in_TID = pre_in_TID_read_data;
    
    wire pre_in_TDATA_full;
    wire pre_in_TDATA_empty;
    reg pre_in_TDATA_write_en;
    reg [96 - 1:0] pre_in_TDATA_write_data;
    reg pre_in_TDATA_read_en;
    wire [96 - 1:0] pre_in_TDATA_read_data;
    
    fifo #(1, 96) fifo_pre_in_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(pre_in_TDATA_write_en),
        .write_data(pre_in_TDATA_write_data),
        .read_clock(clk),
        .read_en(pre_in_TDATA_read_en),
        .read_data(pre_in_TDATA_read_data),
        .full(pre_in_TDATA_full),
        .empty(pre_in_TDATA_empty));
    
    always @ (*) begin
        pre_in_TDATA_write_en <= 0;
        pre_in_TDATA_read_en <= TRAN_pre_in_TREADY;
    end
    
    assign TRAN_pre_in_TDATA = pre_in_TDATA_read_data;
    
    reg pre_in_TUSER_valid = 0; // ingress buffer indicator: pre_in_TUSER
    reg pre_in_TLAST_valid = 0; // ingress buffer indicator: pre_in_TLAST
    reg pre_in_TID_valid = 0; // ingress buffer indicator: pre_in_TID
    reg pre_in_TDATA_valid = 0; // ingress buffer indicator: pre_in_TDATA
    
    assign TRAN_pre_in_TVALID = ~(pre_in_TUSER_empty || pre_in_TLAST_empty || pre_in_TID_empty || pre_in_TDATA_empty) || (pre_in_TUSER_valid && pre_in_TLAST_valid && pre_in_TID_valid && pre_in_TDATA_valid);
    
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
    
    reg [31:0] transaction_load_pre_in_TUSER;
    
    assign transaction = transaction_load_pre_in_TUSER;
    
    initial begin : AXI_stream_driver_pre_in_TUSER
        integer fp;
        reg [215:0] token;
        reg [5 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_pre_in_TUSER = 0;
        fifo_pre_in_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_pre_in_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_pre_in_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_pre_in_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_pre_in_TUSER);
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
                    fifo_pre_in_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_pre_in_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_pre_in_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    pre_in_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_pre_in_TUSER.snapshot();
                end else begin
                    fifo_pre_in_TUSER.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_pre_in_TUSER = transaction_load_pre_in_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_pre_in_TLAST;
    
    initial begin : AXI_stream_driver_pre_in_TLAST
        integer fp;
        reg [215:0] token;
        reg [1 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_pre_in_TLAST = 0;
        fifo_pre_in_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_pre_in_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_pre_in_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_pre_in_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_pre_in_TLAST);
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
                    fifo_pre_in_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_pre_in_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_pre_in_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    pre_in_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_pre_in_TLAST.snapshot();
                end else begin
                    fifo_pre_in_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_pre_in_TLAST = transaction_load_pre_in_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_pre_in_TID;
    
    initial begin : AXI_stream_driver_pre_in_TID
        integer fp;
        reg [215:0] token;
        reg [6 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_pre_in_TID = 0;
        fifo_pre_in_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_pre_in_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_pre_in_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_pre_in_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_pre_in_TID);
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
                    fifo_pre_in_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_pre_in_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_pre_in_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    pre_in_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_pre_in_TID.snapshot();
                end else begin
                    fifo_pre_in_TID.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_pre_in_TID = transaction_load_pre_in_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_pre_in_TDATA;
    
    initial begin : AXI_stream_driver_pre_in_TDATA
        integer fp;
        reg [215:0] token;
        reg [96 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_pre_in_TDATA = 0;
        fifo_pre_in_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_pre_in_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_pre_in_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_pre_in_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_pre_in_TDATA);
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
                    fifo_pre_in_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_pre_in_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_pre_in_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    pre_in_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_pre_in_TDATA.snapshot();
                end else begin
                    fifo_pre_in_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_pre_in_TDATA = transaction_load_pre_in_TDATA + 1;
            end
        end
    end

endmodule
