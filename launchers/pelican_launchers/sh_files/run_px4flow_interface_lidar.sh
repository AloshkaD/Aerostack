#! /bin/bash

cd $DRONE_STACK
source setup.sh
roslaunch ${DRONE_STACK}/launchers/pelican_launchers/launch_files/driver_px4flow_interface_ROSModule_lidar.launch --wait drone_id_int:="0" drone_id_namespace:="drone0"

