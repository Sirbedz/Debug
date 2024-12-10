#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Dec 10 09:29:58 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 3b37fdfa0ec24bb8bae091117ce5374f --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_counter_4bit_behav xil_defaultlib.tb_counter_4bit xil_defaultlib.glbl -log elaborate.log"
xelab -wto 3b37fdfa0ec24bb8bae091117ce5374f --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_counter_4bit_behav xil_defaultlib.tb_counter_4bit xil_defaultlib.glbl -log elaborate.log
