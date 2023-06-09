
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name montacargas -dir "C:/Xilinx/montacargas/planAhead_run_2" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "pines.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {salidas.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {display.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {montacargas.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top montacarga $srcset
add_files [list {pines.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
