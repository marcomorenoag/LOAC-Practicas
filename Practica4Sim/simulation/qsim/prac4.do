onerror {exit -code 1}
vlib work
vcom -work work prac4.vho
vcom -work work Waveform1.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.prac4_vhd_vec_tst
vcd file -direction prac4.msim.vcd
vcd add -internal prac4_vhd_vec_tst/*
vcd add -internal prac4_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
