# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib {{T:/Logica-Programavel/Logica-Programavel/Simulacao/Simulacao.srcs/sources_1/imports/8-9 problemas/debounce_tb.vhd}}
read_xdc T:/Logica-Programavel/Logica-Programavel/Simulacao/Simulacao.srcs/constrs_1/imports/Problemas/io_basico.xdc
set_property used_in_implementation false [get_files T:/Logica-Programavel/Logica-Programavel/Simulacao/Simulacao.srcs/constrs_1/imports/Problemas/io_basico.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir T:/Logica-Programavel/Logica-Programavel/Simulacao/Simulacao.cache/wt [current_project]
set_property parent.project_dir T:/Logica-Programavel/Logica-Programavel/Simulacao [current_project]
synth_design -top tb_debounce -part xc7a100tcsg324-1
write_checkpoint tb_debounce.dcp
report_utilization -file tb_debounce_utilization_synth.rpt -pb tb_debounce_utilization_synth.pb
