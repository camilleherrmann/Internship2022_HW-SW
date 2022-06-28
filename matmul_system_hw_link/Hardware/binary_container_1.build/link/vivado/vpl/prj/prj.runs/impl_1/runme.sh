#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vivado/2021.2/bin
else
  PATH=/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vitis/2021.2/bin:/tools/Xilinx/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mdu/Desktop/first_proj/xilinx_zc706_base/vitis/matmul_system_hw_link/Hardware/binary_container_1.build/link/vivado/vpl/prj/prj.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log xilinx_zc706_base_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source xilinx_zc706_base_wrapper.tcl -notrace


