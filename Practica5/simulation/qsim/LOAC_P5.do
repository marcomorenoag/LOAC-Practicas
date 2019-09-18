onerror {exit -code 1}
vlib work
vcom -work work LOAC_P5.vho
vcom -work work Waveform2.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.LOAC_P5_vhd_vec_tst
vcd file -direction LOAC_P5.msim.vcd
vcd add -internal LOAC_P5_vhd_vec_tst/*
vcd add -internal LOAC_P5_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

