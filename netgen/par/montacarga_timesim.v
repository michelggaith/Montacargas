////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: montacarga_timesim.v
// /___/   /\     Timestamp: Thu Feb 18 16:59:55 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf montacarga.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim montacarga.ncd montacarga_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-10-13)
// Input file	: montacarga.ncd
// Output file	: C:\Xilinx\montacargas\netgen\par\montacarga_timesim.v
// # of Modules	: 1
// Design Name	: montacarga
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module montacarga (
  clk, fc1, fc2, fc3, fc4, fc5, led_puerta, reset, led_emergencia, puerta, emergencia, tr, salida, display, selector
);
  input clk;
  input fc1;
  input fc2;
  input fc3;
  input fc4;
  input fc5;
  output led_puerta;
  input reset;
  output led_emergencia;
  input puerta;
  input emergencia;
  output tr;
  output [1 : 0] salida;
  output [6 : 0] display;
  input [4 : 0] selector;
  wire NlwRenamedSig_IO_fc5;
  wire display_3_OBUF_0;
  wire led_puerta_OBUF_497;
  wire led_emergencia_OBUF_499;
  wire fc1_IBUF_501;
  wire fc2_IBUF_502;
  wire fc3_IBUF_503;
  wire fc4_IBUF_504;
  wire fc5_IBUF_505;
  wire selector_0_IBUF_508;
  wire selector_1_IBUF_509;
  wire selector_2_IBUF_510;
  wire reset_IBUF_511;
  wire selector_3_IBUF_512;
  wire puerta_IBUF_513;
  wire selector_4_IBUF_514;
  wire emergencia_IBUF_515;
  wire clk_BUFGP;
  wire estado_FSM_FFd9_522;
  wire estado_FSM_FFd2_523;
  wire estado_FSM_FFd4_524;
  wire estado_FSM_FFd6_525;
  wire estado_FSM_FFd8_526;
  wire estado_or0000;
  wire estado_FSM_FFd1_528;
  wire estado_FSM_FFd10_529;
  wire estado_FSM_FFd11_530;
  wire estado_FSM_FFd12_531;
  wire estado_or0001;
  wire \estado_FSM_FFd1-In6_0 ;
  wire estado_cmp_eq0004;
  wire estado_FSM_FFd13_536;
  wire N30;
  wire estado_FSM_FFd5_538;
  wire estado_FSM_FFd3_539;
  wire estado_FSM_FFd7_540;
  wire N27_0;
  wire estado_cmp_eq0000_0;
  wire \estado_FSM_FFd12-In_SW0/O ;
  wire N15_0;
  wire estado_FSM_N2;
  wire \estado_FSM_FFd8-In8_0 ;
  wire \estado_FSM_FFd3-In22_0 ;
  wire \estado_FSM_FFd3-In52/O ;
  wire \estado_FSM_FFd3-In48_0 ;
  wire \estado_FSM_FFd13-In7_0 ;
  wire \estado_FSM_FFd13-In18/O ;
  wire \estado_FSM_FFd2-In_SW2/O ;
  wire estado_cmp_eq0002_0;
  wire \estado_FSM_FFd7-In6_0 ;
  wire \estado_FSM_FFd7-In28/O ;
  wire \estado_FSM_FFd7-In24_0 ;
  wire \estado_FSM_FFd4-In21_SW0/O ;
  wire estado_cmp_eq0001_0;
  wire \estado_FSM_FFd6-In_SW0/O ;
  wire N12_0;
  wire \estado_FSM_FFd8-In5_0 ;
  wire \estado_FSM_FFd8-In22/O ;
  wire N25_0;
  wire \estado_FSM_FFd5-In6_0 ;
  wire \estado_FSM_FFd5-In28/O ;
  wire \estado_FSM_FFd5-In24_0 ;
  wire led_emergencia_mux000019_0;
  wire led_emergencia_mux000014_0;
  wire \led_emergencia_mux000043_SW1/O ;
  wire led_emergencia_mux00005_0;
  wire estado_cmp_eq0003_0;
  wire estado_FSM_N3;
  wire \estado_FSM_FFd9-In11_0 ;
  wire N20_0;
  wire N211_0;
  wire \led_emergencia_mux0000110/O ;
  wire \estado_FSM_FFd10-In_SW0/O ;
  wire N18_0;
  wire \estado_FSM_FFd9-In0/O ;
  wire \estado_FSM_FFd9-In3_0 ;
  wire N33;
  wire estado_FSM_N24;
  wire N32;
  wire estado_or0002_584;
  wire estado_or0003_585;
  wire estado_FSM_N25;
  wire N6_0;
  wire N4_0;
  wire \led_puerta/O ;
  wire \display<6>/O ;
  wire \clk/INBUF ;
  wire \selector<0>/INBUF ;
  wire \led_emergencia/O ;
  wire \fc2/INBUF ;
  wire \fc4/INBUF ;
  wire \tr/O ;
  wire \fc1/INBUF ;
  wire \selector<1>/INBUF ;
  wire \selector<2>/INBUF ;
  wire \salida<0>/O ;
  wire \fc3/INBUF ;
  wire \fc5/INBUF ;
  wire \salida<1>/O ;
  wire \estado_FSM_FFd5/DXMUX_1276 ;
  wire \estado_FSM_FFd5-In ;
  wire \estado_FSM_FFd5-In28/O_pack_2 ;
  wire \estado_FSM_FFd5/CLKINV_1260 ;
  wire \estado_FSM_FFd7-In24_1464 ;
  wire N12;
  wire \estado_FSM_FFd8/DXMUX_1241 ;
  wire \estado_FSM_FFd8-In ;
  wire \estado_FSM_FFd8-In22/O_pack_1 ;
  wire \estado_FSM_FFd8/CLKINV_1225 ;
  wire \estado_FSM_FFd9-In11_1337 ;
  wire estado_FSM_N3_pack_1;
  wire \estado_FSM_FFd6/DXMUX_1206 ;
  wire \estado_FSM_FFd6-In_1203 ;
  wire \estado_FSM_FFd6-In_SW0/O_pack_2 ;
  wire \estado_FSM_FFd6/CLKINV_1189 ;
  wire \estado_FSM_FFd7/DXMUX_1136 ;
  wire \estado_FSM_FFd7-In ;
  wire \estado_FSM_FFd7-In28/O_pack_2 ;
  wire \estado_FSM_FFd7/CLKINV_1120 ;
  wire \estado_FSM_FFd4/DXMUX_1171 ;
  wire \estado_FSM_FFd4-In ;
  wire \estado_FSM_FFd4-In21_SW0/O_pack_2 ;
  wire \estado_FSM_FFd4/CLKINV_1155 ;
  wire \led_puerta_OBUF/DXMUX_1368 ;
  wire led_puerta_mux0000_1365;
  wire \led_emergencia_mux0000110/O_pack_1 ;
  wire \led_puerta_OBUF/CLKINV_1351 ;
  wire \led_puerta_OBUF/CEINV_1350 ;
  wire \estado_FSM_FFd10/DXMUX_1401 ;
  wire \estado_FSM_FFd10-In_1398 ;
  wire \estado_FSM_FFd10-In_SW0/O_pack_2 ;
  wire \estado_FSM_FFd10/CLKINV_1385 ;
  wire \estado_FSM_FFd9/DXMUX_1436 ;
  wire \estado_FSM_FFd9-In ;
  wire \estado_FSM_FFd9-In0/O_pack_2 ;
  wire \estado_FSM_FFd9/CLKINV_1418 ;
  wire \estado_FSM_FFd13/DXMUX_1067 ;
  wire \estado_FSM_FFd13-In ;
  wire \estado_FSM_FFd13-In18/O_pack_2 ;
  wire \estado_FSM_FFd13/CLKINV_1049 ;
  wire \estado_FSM_FFd2/DXMUX_1101 ;
  wire \estado_FSM_FFd2-In_1098 ;
  wire \estado_FSM_FFd2-In_SW2/O_pack_2 ;
  wire \estado_FSM_FFd2/CLKINV_1084 ;
  wire \led_emergencia_OBUF/DXMUX_1311 ;
  wire led_emergencia_mux0000;
  wire \led_emergencia_mux000043_SW1/O_pack_1 ;
  wire \led_emergencia_OBUF/CLKINV_1296 ;
  wire \led_emergencia_OBUF/CEINV_1295 ;
  wire \estado_FSM_FFd3/DXMUX_1032 ;
  wire \estado_FSM_FFd3-In ;
  wire \estado_FSM_FFd3-In52/O_pack_2 ;
  wire \estado_FSM_FFd3/CLKINV_1016 ;
  wire display_2_OBUF_1776;
  wire display_0_OBUF_1769;
  wire \estado_FSM_FFd5-In24_1860 ;
  wire \estado_FSM_FFd1-In6_1920 ;
  wire display_3_OBUF_1584;
  wire salida_1_OBUF_1577;
  wire N15;
  wire N18;
  wire estado_cmp_eq0002;
  wire N25;
  wire N6;
  wire \estado_FSM_FFd11-In8_1752 ;
  wire N20;
  wire estado_cmp_eq0000;
  wire \estado_FSM_FFd3-In22_1480 ;
  wire display_4_OBUF_1704;
  wire estado_or0002_pack_1;
  wire display_5_OBUF_1728;
  wire estado_or0003_pack_1;
  wire estado_cmp_eq0003;
  wire N32_pack_1;
  wire salida_0_OBUF_1800;
  wire display_1_OBUF_1793;
  wire \estado_FSM_FFd7-In6_1836 ;
  wire estado_FSM_N24_pack_1;
  wire \estado_FSM_FFd5-In6_1848 ;
  wire led_emergencia_mux000019_1884;
  wire estado_cmp_eq0001;
  wire N33_pack_1;
  wire \estado_FSM_FFd13-In7_1632 ;
  wire estado_FSM_N25_pack_1;
  wire N4;
  wire N211;
  wire led_emergencia_mux00005_1601;
  wire \estado_FSM_FFd3-In48_1560 ;
  wire \estado_FSM_FFd8-In5_1551 ;
  wire led_emergencia_mux000014_1656;
  wire \estado_FSM_FFd9-In3_1649 ;
  wire \display<3>/O ;
  wire \reset/INBUF ;
  wire \display<0>/O ;
  wire \selector<3>/INBUF ;
  wire \display<4>/O ;
  wire \puerta/INBUF ;
  wire \display<1>/O ;
  wire \display<2>/O ;
  wire \selector<4>/INBUF ;
  wire \emergencia/INBUF ;
  wire \display<5>/O ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \estado_FSM_FFd12/DXMUX_973 ;
  wire \estado_FSM_FFd12-In_970 ;
  wire \estado_FSM_FFd12-In_SW0/O_pack_2 ;
  wire \estado_FSM_FFd12/CLKINV_957 ;
  wire N27;
  wire N30_pack_1;
  wire \estado_FSM_FFd11/DXMUX_889 ;
  wire \estado_FSM_FFd11/F5MUX_887 ;
  wire N35;
  wire \estado_FSM_FFd11/BXINV_879 ;
  wire N34;
  wire \estado_FSM_FFd11/CLKINV_871 ;
  wire \estado_FSM_FFd1/DXMUX_853 ;
  wire \estado_FSM_FFd1/F5MUX_851 ;
  wire N37;
  wire \estado_FSM_FFd1/BXINV_841 ;
  wire N36;
  wire \estado_FSM_FFd1/CLKINV_833 ;
  wire \estado_or0000/F5MUX_797 ;
  wire \estado_or0000/F ;
  wire \estado_or0000/BXINV_786 ;
  wire estado_or00001_784;
  wire \estado_FSM_FFd8-In8_1001 ;
  wire estado_FSM_N2_pack_1;
  wire \estado_or0001/F5MUX_822 ;
  wire \estado_or0001/F ;
  wire \estado_or0001/BXINV_811 ;
  wire estado_or00011_809;
  wire \estado_cmp_eq0004/F5MUX_919 ;
  wire estado_cmp_eq00041_917;
  wire \estado_cmp_eq0004/BXINV_912 ;
  wire \estado_cmp_eq0004/G ;
  wire \estado_FSM_FFd1/FFX/RSTAND_858 ;
  wire \estado_FSM_FFd12/FFX/RSTAND_978 ;
  wire \estado_FSM_FFd11/FFX/RSTAND_894 ;
  wire \estado_FSM_FFd3/FFX/RSTAND_1037 ;
  wire \estado_FSM_FFd2/FFX/RSTAND_1106 ;
  wire \estado_FSM_FFd4/FFX/RSTAND_1176 ;
  wire \estado_FSM_FFd13/FFX/SET ;
  wire \estado_FSM_FFd7/FFX/RSTAND_1141 ;
  wire \estado_FSM_FFd8/FFX/RSTAND_1246 ;
  wire \estado_FSM_FFd6/FFX/RSTAND_1211 ;
  wire \estado_FSM_FFd5/FFX/RSTAND_1281 ;
  wire \estado_FSM_FFd9/FFX/RSTAND_1441 ;
  wire \estado_FSM_FFd10/FFX/RSTAND_1406 ;
  wire \tr/OUTPUT/OFF/O1INV_626 ;
  wire GND;
  wire VCC;
  assign
    NlwRenamedSig_IO_fc5 = fc5;
  initial $sdf_annotate("netgen/par/montacarga_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD70" ))
  \led_puerta/PAD  (
    .PAD(led_puerta)
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  led_puerta_OBUF (
    .I(\led_puerta/O ),
    .O(led_puerta)
  );
  X_OPAD #(
    .LOC ( "PAD52" ))
  \display<6>/PAD  (
    .PAD(display[6])
  );
  X_OBUF #(
    .LOC ( "PAD52" ))
  display_6_OBUF (
    .I(\display<6>/O ),
    .O(display[6])
  );
  X_IPAD #(
    .LOC ( "IPAD13" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD13" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD60" ))
  \selector<0>/IFF/IMUX  (
    .I(\selector<0>/INBUF ),
    .O(selector_0_IBUF_508)
  );
  X_IPAD #(
    .LOC ( "IPAD60" ))
  \selector<0>/PAD  (
    .PAD(selector[0])
  );
  X_BUF #(
    .LOC ( "IPAD60" ))
  selector_0_IBUF (
    .I(selector[0]),
    .O(\selector<0>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \led_emergencia/PAD  (
    .PAD(led_emergencia)
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  led_emergencia_OBUF (
    .I(\led_emergencia/O ),
    .O(led_emergencia)
  );
  X_IPAD #(
    .LOC ( "IPAD23" ))
  \fc2/PAD  (
    .PAD(fc2)
  );
  X_BUF #(
    .LOC ( "IPAD23" ))
  fc2_IBUF (
    .I(fc2),
    .O(\fc2/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD11" ))
  \fc4/PAD  (
    .PAD(fc4)
  );
  X_BUF #(
    .LOC ( "PAD11" ))
  fc4_IBUF (
    .I(fc4),
    .O(\fc4/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD45" ))
  \tr/PAD  (
    .PAD(tr)
  );
  X_OBUF #(
    .LOC ( "PAD45" ))
  tr_OBUF (
    .I(\tr/O ),
    .O(tr)
  );
  X_IPAD #(
    .LOC ( "IPAD36" ))
  \fc1/PAD  (
    .PAD(fc1)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  fc1_IBUF (
    .I(fc1),
    .O(\fc1/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD83" ))
  \selector<1>/PAD  (
    .PAD(selector[1])
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  selector_1_IBUF (
    .I(selector[1]),
    .O(\selector<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \selector<1>/IFF/IMUX  (
    .I(\selector<1>/INBUF ),
    .O(selector_1_IBUF_509)
  );
  X_BUF #(
    .LOC ( "IPAD86" ))
  \selector<2>/IFF/IMUX  (
    .I(\selector<2>/INBUF ),
    .O(selector_2_IBUF_510)
  );
  X_IPAD #(
    .LOC ( "IPAD86" ))
  \selector<2>/PAD  (
    .PAD(selector[2])
  );
  X_BUF #(
    .LOC ( "IPAD86" ))
  selector_2_IBUF (
    .I(selector[2]),
    .O(\selector<2>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD69" ))
  \salida<0>/PAD  (
    .PAD(salida[0])
  );
  X_OBUF #(
    .LOC ( "PAD69" ))
  salida_0_OBUF (
    .I(\salida<0>/O ),
    .O(salida[0])
  );
  X_IPAD #(
    .LOC ( "PAD72" ))
  \fc3/PAD  (
    .PAD(fc3)
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  fc3_IBUF (
    .I(fc3),
    .O(\fc3/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD108" ))
  \fc5/PAD  (
    .PAD(NlwRenamedSig_IO_fc5)
  );
  X_PU #(
    .LOC ( "PAD108" ))
  \fc5/PULLUP  (
    .O(NlwRenamedSig_IO_fc5)
  );
  X_BUF #(
    .LOC ( "PAD108" ))
  fc5_IBUF (
    .I(NlwRenamedSig_IO_fc5),
    .O(\fc5/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD58" ))
  \salida<1>/PAD  (
    .PAD(salida[1])
  );
  X_OBUF #(
    .LOC ( "PAD58" ))
  salida_1_OBUF (
    .I(\salida<1>/O ),
    .O(salida[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y14" ))
  \estado_FSM_FFd5/DXMUX  (
    .I(\estado_FSM_FFd5-In ),
    .O(\estado_FSM_FFd5/DXMUX_1276 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y14" ))
  \estado_FSM_FFd5/YUSED  (
    .I(\estado_FSM_FFd5-In28/O_pack_2 ),
    .O(\estado_FSM_FFd5-In28/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y14" ))
  \estado_FSM_FFd5/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd5/CLKINV_1260 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y18" ))
  \estado_FSM_FFd7-In24/XUSED  (
    .I(\estado_FSM_FFd7-In24_1464 ),
    .O(\estado_FSM_FFd7-In24_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y18" ))
  \estado_FSM_FFd7-In24/YUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \estado_FSM_FFd8/DXMUX  (
    .I(\estado_FSM_FFd8-In ),
    .O(\estado_FSM_FFd8/DXMUX_1241 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \estado_FSM_FFd8/YUSED  (
    .I(\estado_FSM_FFd8-In22/O_pack_1 ),
    .O(\estado_FSM_FFd8-In22/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \estado_FSM_FFd8/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd8/CLKINV_1225 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \estado_FSM_FFd9-In11/XUSED  (
    .I(\estado_FSM_FFd9-In11_1337 ),
    .O(\estado_FSM_FFd9-In11_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \estado_FSM_FFd9-In11/YUSED  (
    .I(estado_FSM_N3_pack_1),
    .O(estado_FSM_N3)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y15" ))
  \estado_FSM_FFd6/DXMUX  (
    .I(\estado_FSM_FFd6-In_1203 ),
    .O(\estado_FSM_FFd6/DXMUX_1206 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y15" ))
  \estado_FSM_FFd6/YUSED  (
    .I(\estado_FSM_FFd6-In_SW0/O_pack_2 ),
    .O(\estado_FSM_FFd6-In_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y15" ))
  \estado_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd6/CLKINV_1189 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \estado_FSM_FFd7/DXMUX  (
    .I(\estado_FSM_FFd7-In ),
    .O(\estado_FSM_FFd7/DXMUX_1136 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \estado_FSM_FFd7/YUSED  (
    .I(\estado_FSM_FFd7-In28/O_pack_2 ),
    .O(\estado_FSM_FFd7-In28/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \estado_FSM_FFd7/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd7/CLKINV_1120 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y16" ))
  \estado_FSM_FFd4/DXMUX  (
    .I(\estado_FSM_FFd4-In ),
    .O(\estado_FSM_FFd4/DXMUX_1171 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y16" ))
  \estado_FSM_FFd4/YUSED  (
    .I(\estado_FSM_FFd4-In21_SW0/O_pack_2 ),
    .O(\estado_FSM_FFd4-In21_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y16" ))
  \estado_FSM_FFd4/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd4/CLKINV_1155 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \led_puerta_OBUF/DXMUX  (
    .I(led_puerta_mux0000_1365),
    .O(\led_puerta_OBUF/DXMUX_1368 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \led_puerta_OBUF/YUSED  (
    .I(\led_emergencia_mux0000110/O_pack_1 ),
    .O(\led_emergencia_mux0000110/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \led_puerta_OBUF/CLKINV  (
    .I(clk_BUFGP),
    .O(\led_puerta_OBUF/CLKINV_1351 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \led_puerta_OBUF/CEINV  (
    .I(reset_IBUF_511),
    .O(\led_puerta_OBUF/CEINV_1350 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \estado_FSM_FFd10/DXMUX  (
    .I(\estado_FSM_FFd10-In_1398 ),
    .O(\estado_FSM_FFd10/DXMUX_1401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \estado_FSM_FFd10/YUSED  (
    .I(\estado_FSM_FFd10-In_SW0/O_pack_2 ),
    .O(\estado_FSM_FFd10-In_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \estado_FSM_FFd10/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd10/CLKINV_1385 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \estado_FSM_FFd9/DXMUX  (
    .I(\estado_FSM_FFd9-In ),
    .O(\estado_FSM_FFd9/DXMUX_1436 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \estado_FSM_FFd9/YUSED  (
    .I(\estado_FSM_FFd9-In0/O_pack_2 ),
    .O(\estado_FSM_FFd9-In0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \estado_FSM_FFd9/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd9/CLKINV_1418 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \estado_FSM_FFd13/DXMUX  (
    .I(\estado_FSM_FFd13-In ),
    .O(\estado_FSM_FFd13/DXMUX_1067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \estado_FSM_FFd13/YUSED  (
    .I(\estado_FSM_FFd13-In18/O_pack_2 ),
    .O(\estado_FSM_FFd13-In18/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \estado_FSM_FFd13/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd13/CLKINV_1049 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y21" ))
  \estado_FSM_FFd2/DXMUX  (
    .I(\estado_FSM_FFd2-In_1098 ),
    .O(\estado_FSM_FFd2/DXMUX_1101 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y21" ))
  \estado_FSM_FFd2/YUSED  (
    .I(\estado_FSM_FFd2-In_SW2/O_pack_2 ),
    .O(\estado_FSM_FFd2-In_SW2/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y21" ))
  \estado_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd2/CLKINV_1084 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y15" ))
  \led_emergencia_OBUF/DXMUX  (
    .I(led_emergencia_mux0000),
    .O(\led_emergencia_OBUF/DXMUX_1311 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y15" ))
  \led_emergencia_OBUF/YUSED  (
    .I(\led_emergencia_mux000043_SW1/O_pack_1 ),
    .O(\led_emergencia_mux000043_SW1/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y15" ))
  \led_emergencia_OBUF/CLKINV  (
    .I(clk_BUFGP),
    .O(\led_emergencia_OBUF/CLKINV_1296 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y15" ))
  \led_emergencia_OBUF/CEINV  (
    .I(reset_IBUF_511),
    .O(\led_emergencia_OBUF/CEINV_1295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \estado_FSM_FFd3/DXMUX  (
    .I(\estado_FSM_FFd3-In ),
    .O(\estado_FSM_FFd3/DXMUX_1032 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \estado_FSM_FFd3/YUSED  (
    .I(\estado_FSM_FFd3-In52/O_pack_2 ),
    .O(\estado_FSM_FFd3-In52/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \estado_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd3/CLKINV_1016 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y16" ))
  \estado_FSM_FFd5-In24/XUSED  (
    .I(\estado_FSM_FFd5-In24_1860 ),
    .O(\estado_FSM_FFd5-In24_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \estado_FSM_FFd1-In6/XUSED  (
    .I(\estado_FSM_FFd1-In6_1920 ),
    .O(\estado_FSM_FFd1-In6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y4" ))
  \display_3_OBUF/XUSED  (
    .I(display_3_OBUF_1584),
    .O(display_3_OBUF_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \N15/XUSED  (
    .I(N15),
    .O(N15_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \N15/YUSED  (
    .I(N18),
    .O(N18_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \estado_cmp_eq0002/XUSED  (
    .I(estado_cmp_eq0002),
    .O(estado_cmp_eq0002_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y19" ))
  \N25/XUSED  (
    .I(N25),
    .O(N25_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y19" ))
  \N25/YUSED  (
    .I(N6),
    .O(N6_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y15" ))
  \estado_FSM_FFd11-In8/YUSED  (
    .I(N20),
    .O(N20_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y23" ))
  \estado_cmp_eq0000/XUSED  (
    .I(estado_cmp_eq0000),
    .O(estado_cmp_eq0000_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y23" ))
  \estado_cmp_eq0000/YUSED  (
    .I(\estado_FSM_FFd3-In22_1480 ),
    .O(\estado_FSM_FFd3-In22_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y15" ))
  \display_4_OBUF/YUSED  (
    .I(estado_or0002_pack_1),
    .O(estado_or0002_584)
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y14" ))
  \display_5_OBUF/YUSED  (
    .I(estado_or0003_pack_1),
    .O(estado_or0003_585)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y17" ))
  \estado_cmp_eq0003/XUSED  (
    .I(estado_cmp_eq0003),
    .O(estado_cmp_eq0003_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y17" ))
  \estado_cmp_eq0003/YUSED  (
    .I(N32_pack_1),
    .O(N32)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y19" ))
  \estado_FSM_FFd7-In6/XUSED  (
    .I(\estado_FSM_FFd7-In6_1836 ),
    .O(\estado_FSM_FFd7-In6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y19" ))
  \estado_FSM_FFd7-In6/YUSED  (
    .I(estado_FSM_N24_pack_1),
    .O(estado_FSM_N24)
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \estado_FSM_FFd5-In6/XUSED  (
    .I(\estado_FSM_FFd5-In6_1848 ),
    .O(\estado_FSM_FFd5-In6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y16" ))
  \led_emergencia_mux000019/XUSED  (
    .I(led_emergencia_mux000019_1884),
    .O(led_emergencia_mux000019_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \estado_cmp_eq0001/XUSED  (
    .I(estado_cmp_eq0001),
    .O(estado_cmp_eq0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \estado_cmp_eq0001/YUSED  (
    .I(N33_pack_1),
    .O(N33)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y20" ))
  \estado_FSM_FFd13-In7/XUSED  (
    .I(\estado_FSM_FFd13-In7_1632 ),
    .O(\estado_FSM_FFd13-In7_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y20" ))
  \estado_FSM_FFd13-In7/YUSED  (
    .I(estado_FSM_N25_pack_1),
    .O(estado_FSM_N25)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y16" ))
  \N4/XUSED  (
    .I(N4),
    .O(N4_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y14" ))
  \N211/XUSED  (
    .I(N211),
    .O(N211_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y14" ))
  \N211/YUSED  (
    .I(led_emergencia_mux00005_1601),
    .O(led_emergencia_mux00005_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \estado_FSM_FFd3-In48/XUSED  (
    .I(\estado_FSM_FFd3-In48_1560 ),
    .O(\estado_FSM_FFd3-In48_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \estado_FSM_FFd3-In48/YUSED  (
    .I(\estado_FSM_FFd8-In5_1551 ),
    .O(\estado_FSM_FFd8-In5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \led_emergencia_mux000014/XUSED  (
    .I(led_emergencia_mux000014_1656),
    .O(led_emergencia_mux000014_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \led_emergencia_mux000014/YUSED  (
    .I(\estado_FSM_FFd9-In3_1649 ),
    .O(\estado_FSM_FFd9-In3_0 )
  );
  X_OPAD #(
    .LOC ( "PAD59" ))
  \display<3>/PAD  (
    .PAD(display[3])
  );
  X_OBUF #(
    .LOC ( "PAD59" ))
  display_3_OBUF (
    .I(\display<3>/O ),
    .O(display[3])
  );
  X_BUF #(
    .LOC ( "IPAD73" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_511)
  );
  X_IPAD #(
    .LOC ( "IPAD73" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "IPAD73" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD48" ))
  \display<0>/PAD  (
    .PAD(display[0])
  );
  X_OBUF #(
    .LOC ( "PAD48" ))
  display_0_OBUF (
    .I(\display<0>/O ),
    .O(display[0])
  );
  X_IPAD #(
    .LOC ( "IPAD3" ))
  \selector<3>/PAD  (
    .PAD(selector[3])
  );
  X_BUF #(
    .LOC ( "IPAD3" ))
  selector_3_IBUF (
    .I(selector[3]),
    .O(\selector<3>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD56" ))
  \display<4>/PAD  (
    .PAD(display[4])
  );
  X_OBUF #(
    .LOC ( "PAD56" ))
  display_4_OBUF (
    .I(\display<4>/O ),
    .O(display[4])
  );
  X_IPAD #(
    .LOC ( "PAD99" ))
  \puerta/PAD  (
    .PAD(puerta)
  );
  X_BUF #(
    .LOC ( "PAD99" ))
  puerta_IBUF (
    .I(puerta),
    .O(\puerta/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD39" ))
  \display<1>/PAD  (
    .PAD(display[1])
  );
  X_OBUF #(
    .LOC ( "PAD39" ))
  display_1_OBUF (
    .I(\display<1>/O ),
    .O(display[1])
  );
  X_OPAD #(
    .LOC ( "PAD53" ))
  \display<2>/PAD  (
    .PAD(display[2])
  );
  X_OBUF #(
    .LOC ( "PAD53" ))
  display_2_OBUF (
    .I(\display<2>/O ),
    .O(display[2])
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \selector<4>/IFF/IMUX  (
    .I(\selector<4>/INBUF ),
    .O(selector_4_IBUF_514)
  );
  X_IPAD #(
    .LOC ( "PAD94" ))
  \selector<4>/PAD  (
    .PAD(selector[4])
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  selector_4_IBUF (
    .I(selector[4]),
    .O(\selector<4>/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD100" ))
  \emergencia/IFF/IMUX  (
    .I(\emergencia/INBUF ),
    .O(emergencia_IBUF_515)
  );
  X_IPAD #(
    .LOC ( "IPAD100" ))
  \emergencia/PAD  (
    .PAD(emergencia)
  );
  X_BUF #(
    .LOC ( "IPAD100" ))
  emergencia_IBUF (
    .I(emergencia),
    .O(\emergencia/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD49" ))
  \display<5>/PAD  (
    .PAD(display[5])
  );
  X_OBUF #(
    .LOC ( "PAD49" ))
  display_5_OBUF (
    .I(\display<5>/O ),
    .O(display[5])
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \estado_FSM_FFd12/DXMUX  (
    .I(\estado_FSM_FFd12-In_970 ),
    .O(\estado_FSM_FFd12/DXMUX_973 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \estado_FSM_FFd12/YUSED  (
    .I(\estado_FSM_FFd12-In_SW0/O_pack_2 ),
    .O(\estado_FSM_FFd12-In_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \estado_FSM_FFd12/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd12/CLKINV_957 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y14" ))
  \N27/XUSED  (
    .I(N27),
    .O(N27_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y14" ))
  \N27/YUSED  (
    .I(N30_pack_1),
    .O(N30)
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11/DXMUX  (
    .I(\estado_FSM_FFd11/F5MUX_887 ),
    .O(\estado_FSM_FFd11/DXMUX_889 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11/F5MUX  (
    .IA(N34),
    .IB(N35),
    .SEL(\estado_FSM_FFd11/BXINV_879 ),
    .O(\estado_FSM_FFd11/F5MUX_887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11/BXINV  (
    .I(\estado_FSM_FFd11-In8_1752 ),
    .O(\estado_FSM_FFd11/BXINV_879 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd11/CLKINV_871 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1/DXMUX  (
    .I(\estado_FSM_FFd1/F5MUX_851 ),
    .O(\estado_FSM_FFd1/DXMUX_853 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1/F5MUX  (
    .IA(N36),
    .IB(N37),
    .SEL(\estado_FSM_FFd1/BXINV_841 ),
    .O(\estado_FSM_FFd1/F5MUX_851 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1/BXINV  (
    .I(puerta_IBUF_513),
    .O(\estado_FSM_FFd1/BXINV_841 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\estado_FSM_FFd1/CLKINV_833 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y17" ))
  \estado_or0000/XUSED  (
    .I(\estado_or0000/F5MUX_797 ),
    .O(estado_or0000)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y17" ))
  \estado_or0000/F5MUX  (
    .IA(estado_or00001_784),
    .IB(\estado_or0000/F ),
    .SEL(\estado_or0000/BXINV_786 ),
    .O(\estado_or0000/F5MUX_797 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y17" ))
  \estado_or0000/BXINV  (
    .I(estado_FSM_FFd9_522),
    .O(\estado_or0000/BXINV_786 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \estado_FSM_FFd8-In8/XUSED  (
    .I(\estado_FSM_FFd8-In8_1001 ),
    .O(\estado_FSM_FFd8-In8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \estado_FSM_FFd8-In8/YUSED  (
    .I(estado_FSM_N2_pack_1),
    .O(estado_FSM_N2)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y17" ))
  \estado_or0001/XUSED  (
    .I(\estado_or0001/F5MUX_822 ),
    .O(estado_or0001)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y17" ))
  \estado_or0001/F5MUX  (
    .IA(estado_or00011_809),
    .IB(\estado_or0001/F ),
    .SEL(\estado_or0001/BXINV_811 ),
    .O(\estado_or0001/F5MUX_822 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y17" ))
  \estado_or0001/BXINV  (
    .I(estado_FSM_FFd2_523),
    .O(\estado_or0001/BXINV_811 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \estado_cmp_eq0004/XUSED  (
    .I(\estado_cmp_eq0004/F5MUX_919 ),
    .O(estado_cmp_eq0004)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y16" ))
  \estado_cmp_eq0004/F5MUX  (
    .IA(\estado_cmp_eq0004/G ),
    .IB(estado_cmp_eq00041_917),
    .SEL(\estado_cmp_eq0004/BXINV_912 ),
    .O(\estado_cmp_eq0004/F5MUX_919 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \estado_cmp_eq0004/BXINV  (
    .I(selector_4_IBUF_514),
    .O(\estado_cmp_eq0004/BXINV_912 )
  );
  X_BUF #(
    .LOC ( "PAD99" ))
  \puerta/IFF/IMUX  (
    .I(\puerta/INBUF ),
    .O(puerta_IBUF_513)
  );
  X_BUF #(
    .LOC ( "IPAD3" ))
  \selector<3>/IFF/IMUX  (
    .I(\selector<3>/INBUF ),
    .O(selector_3_IBUF_512)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  \fc1/IFF/IMUX  (
    .I(\fc1/INBUF ),
    .O(fc1_IBUF_501)
  );
  X_BUF #(
    .LOC ( "PAD11" ))
  \fc4/IFF/IMUX  (
    .I(\fc4/INBUF ),
    .O(fc4_IBUF_504)
  );
  X_BUF #(
    .LOC ( "PAD108" ))
  \fc5/IFF/IMUX  (
    .I(\fc5/INBUF ),
    .O(fc5_IBUF_505)
  );
  X_BUF #(
    .LOC ( "IPAD23" ))
  \fc2/IFF/IMUX  (
    .I(\fc2/INBUF ),
    .O(fc2_IBUF_502)
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \fc3/IFF/IMUX  (
    .I(\fc3/INBUF ),
    .O(fc3_IBUF_503)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd1 (
    .I(\estado_FSM_FFd1/DXMUX_853 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd1/CLKINV_833 ),
    .SET(GND),
    .RST(\estado_FSM_FFd1/FFX/RSTAND_858 ),
    .O(estado_FSM_FFd1_528)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd1/FFX/RSTAND_858 )
  );
  X_LUT4 #(
    .INIT ( 16'h3320 ),
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1-In33_F  (
    .ADR0(estado_FSM_FFd9_522),
    .ADR1(emergencia_IBUF_515),
    .ADR2(fc5_IBUF_505),
    .ADR3(\estado_FSM_FFd1-In6_0 ),
    .O(N36)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y17" ))
  estado_or00001 (
    .ADR0(estado_FSM_FFd4_524),
    .ADR1(estado_FSM_FFd6_525),
    .ADR2(estado_FSM_FFd2_523),
    .ADR3(estado_FSM_FFd8_526),
    .O(estado_or00001_784)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X19Y17" ))
  estado_or00011 (
    .ADR0(estado_FSM_FFd10_529),
    .ADR1(estado_FSM_FFd11_530),
    .ADR2(estado_FSM_FFd12_531),
    .ADR3(estado_FSM_FFd1_528),
    .O(estado_or00011_809)
  );
  X_LUT4 #(
    .INIT ( 16'hAB00 ),
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11-In33_F  (
    .ADR0(puerta_IBUF_513),
    .ADR1(emergencia_IBUF_515),
    .ADR2(fc3_IBUF_503),
    .ADR3(estado_FSM_FFd11_530),
    .O(N34)
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X15Y20" ))
  \estado_FSM_FFd1-In33_G  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(estado_FSM_FFd1_528),
    .ADR3(VCC),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFC ),
    .LOC ( "SLICE_X15Y17" ))
  \estado_FSM_FFd6-In11  (
    .ADR0(VCC),
    .ADR1(estado_FSM_FFd1_528),
    .ADR2(estado_FSM_FFd5_538),
    .ADR3(estado_FSM_FFd3_539),
    .O(estado_FSM_N2_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hCCC0 ),
    .LOC ( "SLICE_X15Y17" ))
  \estado_FSM_FFd8-In8  (
    .ADR0(VCC),
    .ADR1(estado_cmp_eq0004),
    .ADR2(estado_FSM_FFd7_540),
    .ADR3(estado_FSM_N2),
    .O(\estado_FSM_FFd8-In8_1001 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X14Y14" ))
  led_puerta_mux0000111 (
    .ADR0(estado_FSM_FFd7_540),
    .ADR1(estado_FSM_FFd5_538),
    .ADR2(estado_FSM_FFd1_528),
    .ADR3(estado_FSM_FFd3_539),
    .O(N30_pack_1)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd12 (
    .I(\estado_FSM_FFd12/DXMUX_973 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd12/CLKINV_957 ),
    .SET(GND),
    .RST(\estado_FSM_FFd12/FFX/RSTAND_978 ),
    .O(estado_FSM_FFd12_531)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y16" ))
  \estado_FSM_FFd12/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd12/FFX/RSTAND_978 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA02 ),
    .LOC ( "SLICE_X15Y16" ))
  \estado_FSM_FFd12-In_SW0  (
    .ADR0(estado_FSM_FFd12_531),
    .ADR1(fc2_IBUF_502),
    .ADR2(emergencia_IBUF_515),
    .ADR3(puerta_IBUF_513),
    .O(\estado_FSM_FFd12-In_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hBA00 ),
    .LOC ( "SLICE_X14Y25" ))
  \estado_FSM_FFd3-In52  (
    .ADR0(estado_FSM_FFd2_523),
    .ADR1(emergencia_IBUF_515),
    .ADR2(estado_FSM_FFd10_529),
    .ADR3(\estado_FSM_FFd3-In48_0 ),
    .O(\estado_FSM_FFd3-In52/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hBB33 ),
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11-In33_G  (
    .ADR0(puerta_IBUF_513),
    .ADR1(emergencia_IBUF_515),
    .ADR2(VCC),
    .ADR3(estado_FSM_FFd11_530),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hFEF0 ),
    .LOC ( "SLICE_X14Y25" ))
  \estado_FSM_FFd3-In57  (
    .ADR0(\estado_FSM_FFd3-In22_0 ),
    .ADR1(puerta_IBUF_513),
    .ADR2(\estado_FSM_FFd3-In52/O ),
    .ADR3(estado_FSM_FFd3_539),
    .O(\estado_FSM_FFd3-In )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X2Y16" ))
  estado_cmp_eq00041 (
    .ADR0(selector_0_IBUF_508),
    .ADR1(selector_3_IBUF_512),
    .ADR2(selector_2_IBUF_510),
    .ADR3(selector_1_IBUF_509),
    .O(estado_cmp_eq00041_917)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ),
    .LOC ( "SLICE_X15Y16" ))
  \estado_FSM_FFd12-In  (
    .ADR0(estado_cmp_eq0000_0),
    .ADR1(N15_0),
    .ADR2(\estado_FSM_FFd12-In_SW0/O ),
    .ADR3(estado_FSM_FFd13_536),
    .O(\estado_FSM_FFd12-In_970 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd11 (
    .I(\estado_FSM_FFd11/DXMUX_889 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd11/CLKINV_871 ),
    .SET(GND),
    .RST(\estado_FSM_FFd11/FFX/RSTAND_894 ),
    .O(estado_FSM_FFd11_530)
  );
  X_INV #(
    .LOC ( "SLICE_X13Y17" ))
  \estado_FSM_FFd11/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd11/FFX/RSTAND_894 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd3 (
    .I(\estado_FSM_FFd3/DXMUX_1032 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd3/CLKINV_1016 ),
    .SET(GND),
    .RST(\estado_FSM_FFd3/FFX/RSTAND_1037 ),
    .O(estado_FSM_FFd3_539)
  );
  X_INV #(
    .LOC ( "SLICE_X14Y25" ))
  \estado_FSM_FFd3/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd3/FFX/RSTAND_1037 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0E4 ),
    .LOC ( "SLICE_X14Y14" ))
  led_emergencia_mux000043_SW0 (
    .ADR0(estado_FSM_FFd13_536),
    .ADR1(led_emergencia_OBUF_499),
    .ADR2(emergencia_IBUF_515),
    .ADR3(N30),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'hBB00 ),
    .LOC ( "SLICE_X15Y15" ))
  \estado_FSM_FFd6-In_SW0  (
    .ADR0(puerta_IBUF_513),
    .ADR1(fc2_IBUF_502),
    .ADR2(VCC),
    .ADR3(estado_FSM_FFd6_525),
    .O(\estado_FSM_FFd6-In_SW0/O_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd2 (
    .I(\estado_FSM_FFd2/DXMUX_1101 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd2/CLKINV_1084 ),
    .SET(GND),
    .RST(\estado_FSM_FFd2/FFX/RSTAND_1106 ),
    .O(estado_FSM_FFd2_523)
  );
  X_INV #(
    .LOC ( "SLICE_X14Y21" ))
  \estado_FSM_FFd2/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd2/FFX/RSTAND_1106 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDDF ),
    .LOC ( "SLICE_X13Y16" ))
  \estado_FSM_FFd4-In21_SW0  (
    .ADR0(estado_cmp_eq0001_0),
    .ADR1(emergencia_IBUF_515),
    .ADR2(estado_FSM_FFd1_528),
    .ADR3(estado_FSM_FFd3_539),
    .O(\estado_FSM_FFd4-In21_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA2F ),
    .LOC ( "SLICE_X13Y16" ))
  \estado_FSM_FFd4-In21  (
    .ADR0(estado_FSM_FFd4_524),
    .ADR1(fc3_IBUF_503),
    .ADR2(\estado_FSM_FFd4-In21_SW0/O ),
    .ADR3(puerta_IBUF_513),
    .O(\estado_FSM_FFd4-In )
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ),
    .LOC ( "SLICE_X15Y21" ))
  \estado_FSM_FFd7-In33  (
    .ADR0(puerta_IBUF_513),
    .ADR1(estado_FSM_FFd7_540),
    .ADR2(\estado_FSM_FFd7-In6_0 ),
    .ADR3(\estado_FSM_FFd7-In28/O ),
    .O(\estado_FSM_FFd7-In )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y16" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd4 (
    .I(\estado_FSM_FFd4/DXMUX_1171 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd4/CLKINV_1155 ),
    .SET(GND),
    .RST(\estado_FSM_FFd4/FFX/RSTAND_1176 ),
    .O(estado_FSM_FFd4_524)
  );
  X_INV #(
    .LOC ( "SLICE_X13Y16" ))
  \estado_FSM_FFd4/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd4/FFX/RSTAND_1176 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFC0 ),
    .LOC ( "SLICE_X12Y24" ))
  \estado_FSM_FFd13-In20  (
    .ADR0(VCC),
    .ADR1(estado_FSM_FFd13_536),
    .ADR2(\estado_FSM_FFd13-In7_0 ),
    .ADR3(\estado_FSM_FFd13-In18/O ),
    .O(\estado_FSM_FFd13-In )
  );
  X_LUT4 #(
    .INIT ( 16'hF780 ),
    .LOC ( "SLICE_X15Y15" ))
  \estado_FSM_FFd6-In  (
    .ADR0(estado_cmp_eq0000_0),
    .ADR1(estado_FSM_N2),
    .ADR2(N12_0),
    .ADR3(\estado_FSM_FFd6-In_SW0/O ),
    .O(\estado_FSM_FFd6-In_1203 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA08 ),
    .LOC ( "SLICE_X15Y21" ))
  \estado_FSM_FFd7-In28  (
    .ADR0(\estado_FSM_FFd7-In24_0 ),
    .ADR1(estado_FSM_FFd12_531),
    .ADR2(emergencia_IBUF_515),
    .ADR3(estado_FSM_FFd6_525),
    .O(\estado_FSM_FFd7-In28/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h8BAB ),
    .LOC ( "SLICE_X14Y21" ))
  \estado_FSM_FFd2-In  (
    .ADR0(estado_FSM_FFd2_523),
    .ADR1(puerta_IBUF_513),
    .ADR2(\estado_FSM_FFd2-In_SW2/O ),
    .ADR3(fc4_IBUF_504),
    .O(\estado_FSM_FFd2-In_1098 )
  );
  X_LUT4 #(
    .INIT ( 16'hF7F7 ),
    .LOC ( "SLICE_X14Y21" ))
  \estado_FSM_FFd2-In_SW2  (
    .ADR0(estado_FSM_FFd1_528),
    .ADR1(estado_cmp_eq0002_0),
    .ADR2(emergencia_IBUF_515),
    .ADR3(VCC),
    .O(\estado_FSM_FFd2-In_SW2/O_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 1'b1 ))
  estado_FSM_FFd13 (
    .I(\estado_FSM_FFd13/DXMUX_1067 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd13/CLKINV_1049 ),
    .SET(\estado_FSM_FFd13/FFX/SET ),
    .RST(GND),
    .O(estado_FSM_FFd13_536)
  );
  X_INV #(
    .LOC ( "SLICE_X12Y24" ))
  \estado_FSM_FFd13/FFX/SETOR  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd13/FFX/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd7 (
    .I(\estado_FSM_FFd7/DXMUX_1136 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd7/CLKINV_1120 ),
    .SET(GND),
    .RST(\estado_FSM_FFd7/FFX/RSTAND_1141 ),
    .O(estado_FSM_FFd7_540)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y21" ))
  \estado_FSM_FFd7/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd7/FFX/RSTAND_1141 )
  );
  X_LUT4 #(
    .INIT ( 16'h00C0 ),
    .LOC ( "SLICE_X12Y24" ))
  \estado_FSM_FFd13-In18  (
    .ADR0(VCC),
    .ADR1(estado_FSM_FFd8_526),
    .ADR2(fc1_IBUF_501),
    .ADR3(puerta_IBUF_513),
    .O(\estado_FSM_FFd13-In18/O_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd8 (
    .I(\estado_FSM_FFd8/DXMUX_1241 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd8/CLKINV_1225 ),
    .SET(GND),
    .RST(\estado_FSM_FFd8/FFX/RSTAND_1246 ),
    .O(estado_FSM_FFd8_526)
  );
  X_INV #(
    .LOC ( "SLICE_X14Y17" ))
  \estado_FSM_FFd8/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd8/FFX/RSTAND_1246 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFA8 ),
    .LOC ( "SLICE_X12Y14" ))
  \estado_FSM_FFd5-In33  (
    .ADR0(estado_FSM_FFd5_538),
    .ADR1(puerta_IBUF_513),
    .ADR2(\estado_FSM_FFd5-In6_0 ),
    .ADR3(\estado_FSM_FFd5-In28/O ),
    .O(\estado_FSM_FFd5-In )
  );
  X_LUT4 #(
    .INIT ( 16'h3020 ),
    .LOC ( "SLICE_X14Y22" ))
  \estado_FSM_FFd9-In11  (
    .ADR0(estado_FSM_FFd3_539),
    .ADR1(puerta_IBUF_513),
    .ADR2(estado_cmp_eq0003_0),
    .ADR3(estado_FSM_N3),
    .O(\estado_FSM_FFd9-In11_1337 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd6 (
    .I(\estado_FSM_FFd6/DXMUX_1206 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd6/CLKINV_1189 ),
    .SET(GND),
    .RST(\estado_FSM_FFd6/FFX/RSTAND_1211 ),
    .O(estado_FSM_FFd6_525)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y15" ))
  \estado_FSM_FFd6/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd6/FFX/RSTAND_1211 )
  );
  X_LUT4 #(
    .INIT ( 16'hBBBA ),
    .LOC ( "SLICE_X14Y17" ))
  \estado_FSM_FFd8-In50  (
    .ADR0(\estado_FSM_FFd8-In5_0 ),
    .ADR1(puerta_IBUF_513),
    .ADR2(\estado_FSM_FFd8-In22/O ),
    .ADR3(\estado_FSM_FFd8-In8_0 ),
    .O(\estado_FSM_FFd8-In )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b0 ))
  led_puerta_598 (
    .I(\led_puerta_OBUF/DXMUX_1368 ),
    .CE(\led_puerta_OBUF/CEINV_1350 ),
    .CLK(\led_puerta_OBUF/CLKINV_1351 ),
    .SET(GND),
    .RST(GND),
    .O(led_puerta_OBUF_497)
  );
  X_LUT4 #(
    .INIT ( 16'hCC08 ),
    .LOC ( "SLICE_X12Y14" ))
  \estado_FSM_FFd5-In28  (
    .ADR0(estado_FSM_FFd11_530),
    .ADR1(\estado_FSM_FFd5-In24_0 ),
    .ADR2(emergencia_IBUF_515),
    .ADR3(estado_FSM_FFd4_524),
    .O(\estado_FSM_FFd5-In28/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE02 ),
    .LOC ( "SLICE_X14Y19" ))
  led_puerta_mux0000 (
    .ADR0(N20_0),
    .ADR1(N30),
    .ADR2(\led_emergencia_mux0000110/O ),
    .ADR3(N211_0),
    .O(led_puerta_mux0000_1365)
  );
  X_LUT4 #(
    .INIT ( 16'hFE00 ),
    .LOC ( "SLICE_X14Y17" ))
  \estado_FSM_FFd8-In22  (
    .ADR0(estado_FSM_N2),
    .ADR1(estado_FSM_FFd9_522),
    .ADR2(N25_0),
    .ADR3(emergencia_IBUF_515),
    .O(\estado_FSM_FFd8-In22/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 1'b0 ))
  led_emergencia_578 (
    .I(\led_emergencia_OBUF/DXMUX_1311 ),
    .CE(\led_emergencia_OBUF/CEINV_1295 ),
    .CLK(\led_emergencia_OBUF/CLKINV_1296 ),
    .SET(GND),
    .RST(GND),
    .O(led_emergencia_OBUF_499)
  );
  X_LUT4 #(
    .INIT ( 16'hF0E2 ),
    .LOC ( "SLICE_X14Y15" ))
  led_emergencia_mux000043 (
    .ADR0(N27_0),
    .ADR1(led_emergencia_mux000019_0),
    .ADR2(\led_emergencia_mux000043_SW1/O ),
    .ADR3(led_emergencia_mux000014_0),
    .O(led_emergencia_mux0000)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFA ),
    .LOC ( "SLICE_X14Y22" ))
  \estado_FSM_FFd10-In11  (
    .ADR0(estado_FSM_FFd7_540),
    .ADR1(VCC),
    .ADR2(estado_FSM_FFd5_538),
    .ADR3(estado_FSM_FFd13_536),
    .O(estado_FSM_N3_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFCEC ),
    .LOC ( "SLICE_X14Y15" ))
  led_emergencia_mux000043_SW1 (
    .ADR0(estado_FSM_FFd13_536),
    .ADR1(led_emergencia_mux00005_0),
    .ADR2(emergencia_IBUF_515),
    .ADR3(N30),
    .O(\led_emergencia_mux000043_SW1/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd5 (
    .I(\estado_FSM_FFd5/DXMUX_1276 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd5/CLKINV_1260 ),
    .SET(GND),
    .RST(\estado_FSM_FFd5/FFX/RSTAND_1281 ),
    .O(estado_FSM_FFd5_538)
  );
  X_INV #(
    .LOC ( "SLICE_X12Y14" ))
  \estado_FSM_FFd5/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd5/FFX/RSTAND_1281 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFAA ),
    .LOC ( "SLICE_X14Y19" ))
  led_emergencia_mux0000110 (
    .ADR0(led_emergencia_mux000019_0),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(led_emergencia_mux000014_0),
    .O(\led_emergencia_mux0000110/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd9 (
    .I(\estado_FSM_FFd9/DXMUX_1436 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd9/CLKINV_1418 ),
    .SET(GND),
    .RST(\estado_FSM_FFd9/FFX/RSTAND_1441 ),
    .O(estado_FSM_FFd9_522)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y22" ))
  \estado_FSM_FFd9/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd9/FFX/RSTAND_1441 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA3B ),
    .LOC ( "SLICE_X14Y18" ))
  \estado_FSM_FFd6-In_SW1  (
    .ADR0(estado_FSM_FFd6_525),
    .ADR1(emergencia_IBUF_515),
    .ADR2(fc2_IBUF_502),
    .ADR3(puerta_IBUF_513),
    .O(N12)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 1'b0 ))
  estado_FSM_FFd10 (
    .I(\estado_FSM_FFd10/DXMUX_1401 ),
    .CE(VCC),
    .CLK(\estado_FSM_FFd10/CLKINV_1385 ),
    .SET(GND),
    .RST(\estado_FSM_FFd10/FFX/RSTAND_1406 ),
    .O(estado_FSM_FFd10_529)
  );
  X_INV #(
    .LOC ( "SLICE_X14Y23" ))
  \estado_FSM_FFd10/FFX/RSTAND  (
    .I(reset_IBUF_511),
    .O(\estado_FSM_FFd10/FFX/RSTAND_1406 )
  );
  X_LUT4 #(
    .INIT ( 16'hC5C5 ),
    .LOC ( "SLICE_X15Y23" ))
  \estado_FSM_FFd10-In_SW1  (
    .ADR0(emergencia_IBUF_515),
    .ADR1(estado_FSM_FFd10_529),
    .ADR2(puerta_IBUF_513),
    .ADR3(VCC),
    .O(N18)
  );
  X_LUT4 #(
    .INIT ( 16'hA0B0 ),
    .LOC ( "SLICE_X14Y23" ))
  \estado_FSM_FFd10-In_SW0  (
    .ADR0(puerta_IBUF_513),
    .ADR1(emergencia_IBUF_515),
    .ADR2(estado_FSM_FFd10_529),
    .ADR3(fc4_IBUF_504),
    .O(\estado_FSM_FFd10-In_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X15Y22" ))
  \estado_FSM_FFd9-In0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(puerta_IBUF_513),
    .ADR3(estado_FSM_FFd9_522),
    .O(\estado_FSM_FFd9-In0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF5F4 ),
    .LOC ( "SLICE_X15Y22" ))
  \estado_FSM_FFd9-In32  (
    .ADR0(emergencia_IBUF_515),
    .ADR1(\estado_FSM_FFd9-In3_0 ),
    .ADR2(\estado_FSM_FFd9-In0/O ),
    .ADR3(\estado_FSM_FFd9-In11_0 ),
    .O(\estado_FSM_FFd9-In )
  );
  X_LUT4 #(
    .INIT ( 16'h8A2A ),
    .LOC ( "SLICE_X2Y23" ))
  \estado_FSM_FFd3-In22  (
    .ADR0(estado_FSM_N24),
    .ADR1(selector_3_IBUF_512),
    .ADR2(N33),
    .ADR3(selector_2_IBUF_510),
    .O(\estado_FSM_FFd3-In22_1480 )
  );
  X_LUT4 #(
    .INIT ( 16'h4040 ),
    .LOC ( "SLICE_X2Y23" ))
  estado_cmp_eq00001 (
    .ADR0(selector_2_IBUF_510),
    .ADR1(selector_3_IBUF_512),
    .ADR2(N33),
    .ADR3(VCC),
    .O(estado_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0C00 ),
    .LOC ( "SLICE_X3Y17" ))
  estado_cmp_eq00031 (
    .ADR0(VCC),
    .ADR1(selector_0_IBUF_508),
    .ADR2(selector_1_IBUF_509),
    .ADR3(N32),
    .O(estado_cmp_eq0003)
  );
  X_LUT4 #(
    .INIT ( 16'hF030 ),
    .LOC ( "SLICE_X15Y25" ))
  \estado_FSM_FFd8-In5  (
    .ADR0(VCC),
    .ADR1(fc1_IBUF_501),
    .ADR2(estado_FSM_FFd8_526),
    .ADR3(puerta_IBUF_513),
    .O(\estado_FSM_FFd8-In5_1551 )
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X14Y18" ))
  \estado_FSM_FFd7-In24  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(fc2_IBUF_502),
    .ADR3(puerta_IBUF_513),
    .O(\estado_FSM_FFd7-In24_1464 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8F0 ),
    .LOC ( "SLICE_X14Y23" ))
  \estado_FSM_FFd10-In  (
    .ADR0(N18_0),
    .ADR1(estado_cmp_eq0002_0),
    .ADR2(\estado_FSM_FFd10-In_SW0/O ),
    .ADR3(estado_FSM_N3),
    .O(\estado_FSM_FFd10-In_1398 )
  );
  X_LUT4 #(
    .INIT ( 16'h0003 ),
    .LOC ( "SLICE_X3Y17" ))
  estado_cmp_eq000211 (
    .ADR0(VCC),
    .ADR1(selector_2_IBUF_510),
    .ADR2(selector_4_IBUF_514),
    .ADR3(selector_3_IBUF_512),
    .O(N32_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hC5C5 ),
    .LOC ( "SLICE_X15Y23" ))
  \estado_FSM_FFd12-In_SW1  (
    .ADR0(emergencia_IBUF_515),
    .ADR1(estado_FSM_FFd12_531),
    .ADR2(puerta_IBUF_513),
    .ADR3(VCC),
    .O(N15)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X22Y15" ))
  estado_or0002 (
    .ADR0(estado_FSM_FFd4_524),
    .ADR1(N6_0),
    .ADR2(estado_FSM_FFd5_538),
    .ADR3(estado_FSM_FFd3_539),
    .O(estado_or0002_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFF ),
    .LOC ( "SLICE_X22Y15" ))
  \inst_seg/salidas<4>1  (
    .ADR0(estado_or0001),
    .ADR1(estado_or0000),
    .ADR2(estado_or0002_584),
    .ADR3(estado_or0003_585),
    .O(display_4_OBUF_1704)
  );
  X_LUT4 #(
    .INIT ( 16'h5050 ),
    .LOC ( "SLICE_X15Y25" ))
  \estado_FSM_FFd3-In48  (
    .ADR0(puerta_IBUF_513),
    .ADR1(VCC),
    .ADR2(fc4_IBUF_504),
    .ADR3(VCC),
    .O(\estado_FSM_FFd3-In48_1560 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X22Y14" ))
  estado_or0003 (
    .ADR0(estado_FSM_FFd4_524),
    .ADR1(N4_0),
    .ADR2(estado_FSM_FFd8_526),
    .ADR3(estado_FSM_FFd3_539),
    .O(estado_or0003_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ),
    .LOC ( "SLICE_X22Y14" ))
  \inst_seg/salidas<5>1  (
    .ADR0(estado_or0001),
    .ADR1(estado_or0000),
    .ADR2(estado_or0002_584),
    .ADR3(estado_or0003_585),
    .O(display_5_OBUF_1728)
  );
  X_LUT4 #(
    .INIT ( 16'hFBFA ),
    .LOC ( "SLICE_X2Y20" ))
  \estado_FSM_FFd13-In7  (
    .ADR0(emergencia_IBUF_515),
    .ADR1(estado_cmp_eq0003_0),
    .ADR2(puerta_IBUF_513),
    .ADR3(estado_FSM_N25),
    .O(\estado_FSM_FFd13-In7_1632 )
  );
  X_LUT4 #(
    .INIT ( 16'h0112 ),
    .LOC ( "SLICE_X27Y4" ))
  \inst_seg/salidas<6>1  (
    .ADR0(estado_or0002_584),
    .ADR1(estado_or0000),
    .ADR2(estado_or0003_585),
    .ADR3(estado_or0001),
    .O(display_3_OBUF_1584)
  );
  X_LUT4 #(
    .INIT ( 16'hCACC ),
    .LOC ( "SLICE_X13Y15" ))
  led_puerta_mux0000_SW0 (
    .ADR0(puerta_IBUF_513),
    .ADR1(led_puerta_OBUF_497),
    .ADR2(emergencia_IBUF_515),
    .ADR3(estado_FSM_FFd13_536),
    .O(N20)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X15Y18" ))
  led_emergencia_mux000014 (
    .ADR0(estado_FSM_FFd11_530),
    .ADR1(estado_FSM_FFd10_529),
    .ADR2(estado_FSM_FFd9_522),
    .ADR3(estado_FSM_FFd12_531),
    .O(led_emergencia_mux000014_1656)
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ),
    .LOC ( "SLICE_X15Y14" ))
  led_puerta_mux0000_SW1 (
    .ADR0(led_puerta_OBUF_497),
    .ADR1(puerta_IBUF_513),
    .ADR2(emergencia_IBUF_515),
    .ADR3(estado_FSM_FFd13_536),
    .O(N211)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X15Y19" ))
  \estado_FSM_FFd8-In22_SW0  (
    .ADR0(estado_FSM_FFd11_530),
    .ADR1(estado_FSM_FFd10_529),
    .ADR2(estado_FSM_FFd7_540),
    .ADR3(estado_FSM_FFd12_531),
    .O(N25)
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X15Y18" ))
  \estado_FSM_FFd9-In3  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(estado_FSM_FFd9_522),
    .ADR3(fc5_IBUF_505),
    .O(\estado_FSM_FFd9-In3_1649 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3F0 ),
    .LOC ( "SLICE_X15Y14" ))
  led_emergencia_mux00005 (
    .ADR0(VCC),
    .ADR1(puerta_IBUF_513),
    .ADR2(led_emergencia_OBUF_499),
    .ADR3(emergencia_IBUF_515),
    .O(led_emergencia_mux00005_1601)
  );
  X_LUT4 #(
    .INIT ( 16'h009F ),
    .LOC ( "SLICE_X2Y20" ))
  \estado_FSM_FFd1-In111  (
    .ADR0(selector_2_IBUF_510),
    .ADR1(selector_3_IBUF_512),
    .ADR2(N33),
    .ADR3(estado_cmp_eq0002_0),
    .O(estado_FSM_N25_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hEE10 ),
    .LOC ( "SLICE_X27Y4" ))
  \inst_motor/Mrom_y_out111  (
    .ADR0(estado_or0003_585),
    .ADR1(estado_or0002_584),
    .ADR2(estado_or0000),
    .ADR3(estado_or0001),
    .O(salida_1_OBUF_1577)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEE ),
    .LOC ( "SLICE_X15Y19" ))
  estado_or0002_SW0 (
    .ADR0(estado_FSM_FFd11_530),
    .ADR1(estado_FSM_FFd10_529),
    .ADR2(VCC),
    .ADR3(estado_FSM_FFd6_525),
    .O(N6)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X22Y12" ))
  \inst_seg/salidas<1>1  (
    .ADR0(estado_or0002_584),
    .ADR1(estado_or0003_585),
    .ADR2(estado_or0001),
    .ADR3(estado_or0000),
    .O(display_1_OBUF_1793)
  );
  X_LUT4 #(
    .INIT ( 16'h0101 ),
    .LOC ( "SLICE_X2Y19" ))
  \estado_FSM_FFd3-In211  (
    .ADR0(emergencia_IBUF_515),
    .ADR1(estado_cmp_eq0003_0),
    .ADR2(estado_cmp_eq0004),
    .ADR3(VCC),
    .O(estado_FSM_N24_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0808 ),
    .LOC ( "SLICE_X2Y17" ))
  estado_cmp_eq00021 (
    .ADR0(N32),
    .ADR1(selector_1_IBUF_509),
    .ADR2(selector_0_IBUF_508),
    .ADR3(VCC),
    .O(estado_cmp_eq0002)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X14Y16" ))
  led_emergencia_mux000019 (
    .ADR0(estado_FSM_FFd8_526),
    .ADR1(estado_FSM_FFd2_523),
    .ADR2(estado_FSM_FFd6_525),
    .ADR3(estado_FSM_FFd4_524),
    .O(led_emergencia_mux000019_1884)
  );
  X_LUT4 #(
    .INIT ( 16'h00C0 ),
    .LOC ( "SLICE_X3Y16" ))
  estado_cmp_eq00011 (
    .ADR0(VCC),
    .ADR1(selector_2_IBUF_510),
    .ADR2(N33),
    .ADR3(selector_3_IBUF_512),
    .O(estado_cmp_eq0001)
  );
  X_LUT4 #(
    .INIT ( 16'hFEDC ),
    .LOC ( "SLICE_X27Y9" ))
  \inst_seg/salidas<2>1  (
    .ADR0(estado_or0002_584),
    .ADR1(estado_or0000),
    .ADR2(estado_or0003_585),
    .ADR3(estado_or0001),
    .O(display_2_OBUF_1776)
  );
  X_LUT4 #(
    .INIT ( 16'h4400 ),
    .LOC ( "SLICE_X14Y20" ))
  \estado_FSM_FFd1-In6  (
    .ADR0(estado_cmp_eq0004),
    .ADR1(estado_FSM_FFd1_528),
    .ADR2(VCC),
    .ADR3(estado_FSM_N25),
    .O(\estado_FSM_FFd1-In6_1920 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE00 ),
    .LOC ( "SLICE_X22Y12" ))
  \inst_motor/Mrom_y_out12  (
    .ADR0(estado_or0002_584),
    .ADR1(estado_or0003_585),
    .ADR2(estado_or0001),
    .ADR3(estado_or0000),
    .O(salida_0_OBUF_1800)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ),
    .LOC ( "SLICE_X19Y16" ))
  estado_or0003_SW0 (
    .ADR0(estado_FSM_FFd10_529),
    .ADR1(estado_FSM_FFd7_540),
    .ADR2(estado_FSM_FFd12_531),
    .ADR3(VCC),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ),
    .LOC ( "SLICE_X13Y15" ))
  \estado_FSM_FFd11-In8  (
    .ADR0(estado_FSM_FFd13_536),
    .ADR1(estado_cmp_eq0001_0),
    .ADR2(puerta_IBUF_513),
    .ADR3(estado_FSM_FFd7_540),
    .O(\estado_FSM_FFd11-In8_1752 )
  );
  X_LUT4 #(
    .INIT ( 16'h0050 ),
    .LOC ( "SLICE_X2Y19" ))
  \estado_FSM_FFd7-In6  (
    .ADR0(estado_cmp_eq0001_0),
    .ADR1(VCC),
    .ADR2(estado_FSM_N24),
    .ADR3(estado_cmp_eq0002_0),
    .O(\estado_FSM_FFd7-In6_1836 )
  );
  X_LUT4 #(
    .INIT ( 16'h0500 ),
    .LOC ( "SLICE_X13Y22" ))
  \estado_FSM_FFd5-In6  (
    .ADR0(estado_cmp_eq0002_0),
    .ADR1(VCC),
    .ADR2(estado_cmp_eq0000_0),
    .ADR3(estado_FSM_N24),
    .O(\estado_FSM_FFd5-In6_1848 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X27Y9" ))
  \inst_seg/salidas<0>1  (
    .ADR0(estado_or0003_585),
    .ADR1(estado_or0002_584),
    .ADR2(estado_or0000),
    .ADR3(estado_or0001),
    .O(display_0_OBUF_1769)
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X12Y16" ))
  \estado_FSM_FFd5-In24  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(fc3_IBUF_503),
    .ADR3(puerta_IBUF_513),
    .O(\estado_FSM_FFd5-In24_1860 )
  );
  X_LUT4 #(
    .INIT ( 16'h0003 ),
    .LOC ( "SLICE_X3Y16" ))
  estado_cmp_eq000011 (
    .ADR0(VCC),
    .ADR1(selector_4_IBUF_514),
    .ADR2(selector_1_IBUF_509),
    .ADR3(selector_0_IBUF_508),
    .O(N33_pack_1)
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \led_puerta/OUTPUT/OFF/OMUX  (
    .I(led_puerta_OBUF_497),
    .O(\led_puerta/O )
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  \display<6>/OUTPUT/OFF/OMUX  (
    .I(display_3_OBUF_0),
    .O(\display<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \led_emergencia/OUTPUT/OFF/OMUX  (
    .I(led_emergencia_OBUF_499),
    .O(\led_emergencia/O )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \tr/OUTPUT/OFF/OMUX  (
    .I(\tr/OUTPUT/OFF/O1INV_626 ),
    .O(\tr/O )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \tr/OUTPUT/OFF/O1INV  (
    .I(1'b1),
    .O(\tr/OUTPUT/OFF/O1INV_626 )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \salida<0>/OUTPUT/OFF/OMUX  (
    .I(salida_0_OBUF_1800),
    .O(\salida<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \salida<1>/OUTPUT/OFF/OMUX  (
    .I(salida_1_OBUF_1577),
    .O(\salida<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \display<3>/OUTPUT/OFF/OMUX  (
    .I(display_3_OBUF_0),
    .O(\display<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \display<0>/OUTPUT/OFF/OMUX  (
    .I(display_0_OBUF_1769),
    .O(\display<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \display<4>/OUTPUT/OFF/OMUX  (
    .I(display_4_OBUF_1704),
    .O(\display<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \display<1>/OUTPUT/OFF/OMUX  (
    .I(display_1_OBUF_1793),
    .O(\display<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \display<2>/OUTPUT/OFF/OMUX  (
    .I(display_2_OBUF_1776),
    .O(\display<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \display<5>/OUTPUT/OFF/OMUX  (
    .I(display_5_OBUF_1728),
    .O(\display<5>/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X17Y17" ))
  \estado_or0000/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\estado_or0000/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X19Y17" ))
  \estado_or0001/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\estado_or0001/F )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X2Y16" ))
  \estado_cmp_eq0004/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\estado_cmp_eq0004/G )
  );
  X_ZERO   NlwBlock_montacarga_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_montacarga_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

