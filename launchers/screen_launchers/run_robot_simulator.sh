#! /bin/bash

cd $DRONE_STACK
source setup.sh
roslaunch robotSimulatorROSModule robotSimulatorROSModule.launch --wait num_targets:=1 num_obstacles:=4
