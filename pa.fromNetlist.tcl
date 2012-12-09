
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Core_iDeivid -dir "F:/Documentos/Arquitectura/Processor/planAhead_run_1" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/Documentos/Arquitectura/Processor/Chronometer.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/Documentos/Arquitectura/Processor} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Chronometer.ucf" [current_fileset -constrset]
add_files [list {Chronometer.ucf}] -fileset [get_property constrset [current_run]]
link_design
