transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/bin_7seg.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MUX_2.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/ShiftLeft.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/pipeline.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MemDad.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/PC.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/bregMIPS.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/SOM.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/ulaMIPS.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/sign_ext.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/CONTROL.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/ulaCONTROL.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MUX_5bits.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/FETCH.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/DECODE.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/EXECUTE.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MEMDADOS.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/IF_ID.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/ID_EX.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/EX_MEM.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MEM_WB.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/WRITEBACK.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MemInst.vhd}
vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/MUX_6.vhd}

vcom -93 -work work {C:/Users/TEMP.W370627.009/Documents/OAC/final/simulation/modelsim/pipeline_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  pipeline_tb

add wave *
view structure
view signals
run -all
