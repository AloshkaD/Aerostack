#!/bin/bash
echo "Configuring stack submodules .."


CONFIG_SUBMODULES_FILE=$1


#Reading configuration of which submodules include
. $CONFIG_SUBMODULES_FILE



#Adquire bitbucket info
echo "Acquiring bitbucket user info"
echo -n " -Bitbucket username: "
read bitbucketUsername

echo -n " -Bitbucket password: "
read -s bitbucketPassword
echo ""



#Loop for git submodule init
echo "Adding submodules"


#configs
MODULE_PATH=configs
./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
echo " -Added package in: $MODULE_PATH"

#mav_tools
if [[ ${mav_tools}  && $mav_tools = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverAsctecPelican/mav_tools
		# git submodule deinit $MODULE_PATH > /dev/null
		#git submodule init $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#asctec_drivers
if [[ ${asctec_drivers}  && $asctec_drivers = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverAsctecPelican/asctec_drivers
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driverPelicanROSModule
if [[ ${driverPelicanROSModule}  && $driverPelicanROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverAsctecPelican/driverPelicanROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#okto_driver
if [[ ${okto_driver}  && $okto_driver = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverMikrokopterOkto/okto_driver
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driverOktoROSModule
if [[ ${driverOktoROSModule}  && $driverOktoROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverMikrokopterOkto/driverOktoROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#mikrokopter_driver
if [[ ${mikrokopter_driver}  && $mikrokopter_driver = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverMikrokopterOkto/mikrokopter_driver
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#mikrokopter_driver_ros_module
if [[ ${mikrokopter_driver_ros_module}  && $mikrokopter_driver_ros_module = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverMikrokopterOkto/mikrokopter_driver_ros_module
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#ardrone_autonomy
if [[ ${ardrone_autonomy}  && $ardrone_autonomy = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverParrotARDrone/ardrone_autonomy
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitPublRepo.sh $MODULE_PATH > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driverParrotARDroneROSModule
if [[ ${driverParrotARDroneROSModule}  && $driverParrotARDroneROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverParrotARDrone/driverParrotARDroneROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#bebop_autonomy
if [[ ${bebop_autonomy}  && $bebop_autonomy = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverBebopDrone/bebop_autonomy
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitPublRepo.sh $MODULE_PATH > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driverBebopROSModule
if [[ ${driverBebopROSModule}  && $driverBebopROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverBebopDrone/driverBebopROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#mavros
if [[ ${mavros}  && $mavros = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverPixhawk/mavros
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driverPixhawkROSModule
if [[ ${driverPixhawkROSModule}  && $driverPixhawkROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversPlatforms/driverPixhawk/driverPixhawkROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driver_camera_ueye
if [[ ${driver_camera_ueye}  && $driver_camera_ueye = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driver_camera_ueye/driver_camera_ueye
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi


#driver_camera_ueye_ROSModule
if [[ ${driver_camera_ueye_ROSModule}  && $driver_camera_ueye_ROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driver_camera_ueye/driver_camera_ueye_ROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"

fi

#px-ros-pkg
if [[ ${px_ros_pkg}  && $px_ros_pkg = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driver_px4flow/px-ros-pkg
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitPublRepo.sh $MODULE_PATH > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driver_px4flow_interface_ROSModule
if [[ ${driver_px4flow_interface_ROSModule}  && $driver_px4flow_interface_ROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driver_px4flow/driver_px4flow_interface_ROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#driverLidarliteInterfaceROSModule
if [[ ${driverLidarliteInterfaceROSModule}  && $driverLidarliteInterfaceROSModule = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driverLidarlite/driverLidarliteInterfaceROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitPublRepo.sh $MODULE_PATH > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#rosserial driver
if [[ ${rosserial}  && $rosserial = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/utils/rosserial
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi


#droneObstacleProcessorVisualMarks
if [[ ${droneObstacleProcessorVisualMarks}  && $droneObstacleProcessorVisualMarks = true ]]
	then
		MODULE_PATH=stack/droneEnvironmentUnderstanding/droneObstacleProcessorVisualMarks/droneObstacleProcessorVisualMarks
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneObstacleProcessorVisualMarksROSModule
if [[ ${droneObstacleProcessorVisualMarksROSModule}  && $droneObstacleProcessorVisualMarksROSModule = true ]]
	then
		MODULE_PATH=stack/droneEnvironmentUnderstanding/droneObstacleProcessorVisualMarks/droneObstacleProcessorVisualMarksROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#robotLocalizationROSModule
if [[ ${robotLocalizationROSModule}  && $robotLocalizationROSModule = true ]]
	then
		MODULE_PATH=stack/droneEnvironmentUnderstanding/robotLocalizationROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneIBVSController
if [[ ${droneIBVSController}  && $droneIBVSController = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneIBVSControl/droneIBVSController
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneIBVSControllerROSModule
if [[ ${droneIBVSControllerROSModule}  && $droneIBVSControllerROSModule = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneIBVSControl/droneIBVSControllerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneTrackerEyeROSModule
if [[ ${droneTrackerEyeROSModule}  && $droneTrackerEyeROSModule = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneIBVSControl/droneTrackerEyeROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi


#dronePBVSPositionMidLevelController
if [[ ${dronePBVSPositionMidLevelController}  && $dronePBVSPositionMidLevelController = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/dronePBVSPositionMidLevelController
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSpeedPositionMidLevelController
if [[ ${droneSpeedPositionMidLevelController}  && $droneSpeedPositionMidLevelController = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneSpeedPositionMidLevelController
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneTrajectoryController
if [[ ${droneTrajectoryController}  && $droneTrajectoryController = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneTrajectoryController
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneTrajectoryControllerROSModule
if [[ ${droneTrajectoryControllerROSModule}  && $droneTrajectoryControllerROSModule = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneTrajectoryControllerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneTrajectoryStateMachine
if [[ ${droneTrajectoryStateMachine}  && $droneTrajectoryStateMachine = true ]]
	then
		MODULE_PATH=stack/droneHighLevelControl/droneTrajectoryStateMachine
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneLoggerROSModule
if [[ ${droneLoggerROSModule}  && $droneLoggerROSModule = true ]]
	then
		MODULE_PATH=stack/droneLogging/droneLoggerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#dronePelicanLoggerROSModule
if [[ ${dronePelicanLoggerROSModule}  && $dronePelicanLoggerROSModule = true ]]
	then
		MODULE_PATH=stack/droneLogging/dronePelicanLoggerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_cvglogger
if [[ ${lib_cvglogger}  && $lib_cvglogger = true ]]
	then
		MODULE_PATH=stack/droneLogging/lib_cvglogger
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_cvgloggerROS
if [[ ${lib_cvgloggerROS}  && $lib_cvgloggerROS = true ]]
	then
		MODULE_PATH=stack/droneLogging/lib_cvgloggerROS
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMidLevelAutopilot
if [[ ${droneMidLevelAutopilot}  && $droneMidLevelAutopilot = true ]]
	then
		MODULE_PATH=stack/droneMidLevelControl/droneMidLevelAutopilot
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMidLevelAutopilotROSModule
if [[ ${droneMidLevelAutopilotROSModule}  && $droneMidLevelAutopilotROSModule = true ]]
	then
		MODULE_PATH=stack/droneMidLevelControl/droneMidLevelAutopilotROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneIARC14MissionSchedulerROSModule
if [[ ${droneIARC14MissionSchedulerROSModule}  && $droneIARC14MissionSchedulerROSModule = true ]]
	then
		MODULE_PATH=stack/droneMissionPlanning/droneIARC14MissionSchedulerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMissionPlanner
if [[ ${droneMissionPlanner}  && $droneMissionPlanner = true ]]
	then
		MODULE_PATH=stack/droneMissionPlanning/droneMissionPlanner
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMissionPlannerROSModule
if [[ ${droneMissionPlannerROSModule}  && $droneMissionPlannerROSModule = true ]]
	then
		MODULE_PATH=stack/droneMissionPlanning/droneMissionPlannerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMissionScheduleProcessor
if [[ ${droneMissionScheduleProcessor}  && $droneMissionScheduleProcessor = true ]]
	then
		MODULE_PATH=stack/droneMissionPlanning/droneMissionScheduleProcessor
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMissionScheduleProcessorROSModule
if [[ ${droneMissionScheduleProcessorROSModule}  && $droneMissionScheduleProcessorROSModule = true ]]
	then
		MODULE_PATH=stack/droneMissionPlanning/droneMissionScheduleProcessorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneOpenTLDTranslatorROS
if [[ ${droneOpenTLDTranslatorROS}  && $droneOpenTLDTranslatorROS = true ]]
	then
		MODULE_PATH=stack/dronePerception/openTLD/droneOpenTLDTranslatorROS
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#ros_opentld
if [[ ${ros_opentld}  && $ros_opentld = true ]]
	then
		MODULE_PATH=stack/dronePerception/openTLD/ros_opentld
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi


#arucoEye
if [[ ${arucoEye}  && $arucoEye = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneArucoEye/arucoEye
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneArucoEye
if [[ ${droneArucoEye}  && $droneArucoEye = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneArucoEye/droneArucoEye
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneArucoEyeROSModule
if [[ ${droneArucoEyeROSModule}  && $droneArucoEyeROSModule = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneArucoEye/droneArucoEyeROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_aruco
if [[ ${lib_aruco}  && $lib_aruco = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneArucoEye/lib_aruco
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneComputerVisionIARC14
if [[ ${droneComputerVisionIARC14}  && $droneComputerVisionIARC14 = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneComputerVisionIARC14/droneComputerVisionIARC14
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneComputerVisionIARC14ROSModule
if [[ ${droneComputerVisionIARC14ROSModule}  && $droneComputerVisionIARC14ROSModule = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneComputerVisionIARC14/droneComputerVisionIARC14ROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneCV2DTo3DROSModule
if [[ ${droneCV2DTo3DROSModule}  && $droneCV2DTo3DROSModule = true ]]
	then
		MODULE_PATH=stack/dronePerception/droneCV2DTo3DROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneEKFStateEstimator
if [[ ${droneEKFStateEstimator}  && $droneEKFStateEstimator = true ]]
	then
		MODULE_PATH=stack/droneSelfLocalization/droneOdometryPoseEstimator/droneEKFStateEstimator
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneEKFStateEstimatorROSModule
if [[ ${droneEKFStateEstimatorROSModule}  && $droneEKFStateEstimatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSelfLocalization/droneOdometryPoseEstimator/droneEKFStateEstimatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneVisualMarkersLocalizer
if [[ ${droneVisualMarkersLocalizer}  && $droneVisualMarkersLocalizer = true ]]
	then
		MODULE_PATH=stack/droneSelfLocalization/droneVisualMarkersLocalizer/droneVisualMarkersLocalizer
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneVisualMarkersLocalizerROSModule
if [[ ${droneVisualMarkersLocalizerROSModule}  && $droneVisualMarkersLocalizerROSModule = true ]]
	then
		MODULE_PATH=stack/droneSelfLocalization/droneVisualMarkersLocalizer/droneVisualMarkersLocalizerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#referenceFramesROS
if [[ ${referenceFramesROS}  && $referenceFramesROS = true ]]
	then
		MODULE_PATH=stack/droneSelfLocalization/droneVisualMarkersLocalizer/referenceFramesROS
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneOktoSimulatorROSModule
if [[ ${droneOktoSimulatorROSModule}  && $droneOktoSimulatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneSimulator/droneOktoSimulatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#dronePelicanSimulatorROSModule
if [[ ${dronePelicanSimulatorROSModule}  && $dronePelicanSimulatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneSimulator/dronePelicanSimulatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSimulator
if [[ ${droneSimulator}  && $droneSimulator = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneSimulator/droneSimulator
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSimulatorROSModule
if [[ ${droneSimulatorROSModule}  && $droneSimulatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneSimulator/droneSimulatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMissionPlannerEmulatorROSModule
if [[ ${droneMissionPlannerEmulatorROSModule}  && $droneMissionPlannerEmulatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneMissionPlanning/droneMissionPlannerEmulatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneVisualMarkersEyeSimulator
if [[ ${droneVisualMarkersEyeSimulator}  && $droneVisualMarkersEyeSimulator = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneVisualMarkersEyeSimulator/droneVisualMarkersEyeSimulator
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneVisualMarkersEyeSimulatorROSModule
if [[ ${droneVisualMarkersEyeSimulatorROSModule}  && $droneVisualMarkersEyeSimulatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/droneVisualMarkersEyeSimulator/droneVisualMarkersEyeSimulatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSimulatorGridROSModule
if [[ ${droneSimulatorGridROSModule}  && $droneSimulatorGridROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/simulatorsIARC14/droneSimulatorGridROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSimulatoriRobotCVROSModule
if [[ ${droneSimulatoriRobotCVROSModule}  && $droneSimulatoriRobotCVROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/simulatorsIARC14/droneSimulatoriRobotCVROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#robotSimulatorROSModule
if [[ ${robotSimulatorROSModule}  && $robotSimulatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSimulators/simulatorsIARC14/robotSimulatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneModuleInterfaceROS
if [[ ${droneModuleInterfaceROS}  && $droneModuleInterfaceROS = true ]]
	then
		MODULE_PATH=stack/droneStackBasics/droneModuleInterfaceROS
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneModuleROS
if [[ ${droneModuleROS}  && $droneModuleROS = true ]]
	then
		MODULE_PATH=stack/droneStackBasics/droneModuleROS
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneMsgsROS
if [[ ${droneMsgsROS}  && $droneMsgsROS = true ]]
	then
		MODULE_PATH=stack/droneStackBasics/droneMsgsROS
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneBrainROSModule
if [[ ${droneBrainROSModule}  && $droneBrainROSModule = true ]]
	then
		MODULE_PATH=stack/droneSupervising/droneBrainROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneIARC14BrainROSModule
if [[ ${droneIARC14BrainROSModule}  && $droneIARC14BrainROSModule = true ]]
	then
		MODULE_PATH=stack/droneSupervising/droneIARC14BrainROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi



#droneManagerOfActions
if [[ ${droneManagerOfActions}  && $droneManagerOfActions = true ]]
	then
		MODULE_PATH=stack/droneActionsManaging/droneManagerOfActions
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneManagerOfActionsROSModule
if [[ ${droneManagerOfActionsROSModule}  && $droneManagerOfActionsROSModule = true ]]
	then
		MODULE_PATH=stack/droneActionsManaging/droneManagerOfActionsROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSupervisorROSModule
if [[ ${droneSupervisorROSModule}  && $droneSupervisorROSModule = true ]]
	then
		MODULE_PATH=stack/droneSupervising/droneBasicSupervisor/droneSupervisorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSupervisorROSModule_v2
if [[ ${droneSupervisorROSModule_v2}  && $droneSupervisorROSModule_v2 = true ]]
	then
		MODULE_PATH=stack/droneSupervising/droneBasicSupervisor/droneSupervisorROSModule_v2
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi




#droneTrajectoryPlanner
if [[ ${droneTrajectoryPlanner}  && $droneTrajectoryPlanner = true ]]
	then
		MODULE_PATH=stack/droneTrajectoryPlanning/droneTrajectoryPlanner
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneTrajectoryPlannerROSModule
if [[ ${droneTrajectoryPlannerROSModule}  && $droneTrajectoryPlannerROSModule = true ]]
	then
		MODULE_PATH=stack/droneTrajectoryPlanning/droneTrajectoryPlannerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneYawCommanderROSModule
if [[ ${droneYawCommanderROSModule}  && $droneYawCommanderROSModule = true ]]
	then
		MODULE_PATH=stack/droneYawCommanding/droneYawCommanderROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneArchitectureRvizInterfaceROSModule
if [[ ${droneArchitectureRvizInterfaceROSModule}  && $droneArchitectureRvizInterfaceROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneArchitectureRvizInterfaceROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneEkfSimulatorRvizROSModule
if [[ ${droneEkfSimulatorRvizROSModule}  && $droneEkfSimulatorRvizROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneEkfSimulatorRvizROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneInterfaceROSModule
if [[ ${droneInterfaceROSModule}  && $droneInterfaceROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneInterfaceROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSimulatorRvizROSModule
if [[ ${droneSimulatorRvizROSModule}  && $droneSimulatorRvizROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneSimulatorRvizROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#robotSimulatorRvizROSModule
if [[ ${robotSimulatorRvizROSModule}  && $robotSimulatorRvizROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/IARC14/robotSimulatorRvizROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_cvgekf
if [[ ${lib_cvgekf}  && $lib_cvgekf = true ]]
	then
		MODULE_PATH=stack/libraries/lib_cvgekf
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_cvgthread
if [[ ${lib_cvgthread}  && $lib_cvgthread = true ]]
	then
		MODULE_PATH=stack/libraries/lib_cvgthread
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_cvgutils
if [[ ${lib_cvgutils}  && $lib_cvgutils = true ]]
	then
		MODULE_PATH=stack/libraries/lib_cvgutils
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_newmat11
if [[ ${lib_newmat11}  && $lib_newmat11 = true ]]
	then
		MODULE_PATH=stack/libraries/lib_newmat11
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_pose
if [[ ${lib_pose}  && $lib_pose = true ]]
	then
		MODULE_PATH=stack/libraries/lib_pose
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_pugixml
if [[ ${lib_pugixml}  && $lib_pugixml = true ]]
	then
		MODULE_PATH=stack/libraries/lib_pugixml
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#referenceFrames
if [[ ${referenceFrames}  && $referenceFrames = true ]]
	then
		MODULE_PATH=stack/libraries/referenceFrames
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#videoPublisherROSModule
if [[ ${videoPublisherROSModule}  && $videoPublisherROSModule = true ]]
	then
		MODULE_PATH=stack/utils/videoPublisherROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#mavlink
if [[ ${mavlink}  && $mavlink = true ]]
	then
		MODULE_PATH=sstack/libraries/mavlink
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneCommunicationManagerROSModule
if [[ ${droneCommunicationManagerROSModule}  && $droneCommunicationManagerROSModule = true ]]
	then
		MODULE_PATH=stack/droneCommunication/droneCommunicationManagerROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneLeapMotionDroneControlUserInterfaceROSModule
if [[ ${droneLeapMotionDroneControlUserInterfaceROSModule}  && $droneLeapMotionDroneControlUserInterfaceROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneLeapMotionDroneControlUserInterfaceROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#leap_motion
if [[ ${leap_motion}  && $leap_motion = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driver_leapmotion/leap_motion
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSpeechROSModule
if [[ ${droneSpeechROSModule}  && $droneSpeechROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneSpeechROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#audio_common
if [[ ${audio_common}  && $audio_common = true ]]
	then
		MODULE_PATH=stack/utils/audio_common
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#ueye_cam
if [[ ${ueye_cam}  && $ueye_cam = true ]]
	then
		MODULE_PATH=stack/droneDrivers/driversSensors/driver_camera_ueye/ueye_cam
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#supervision_system
if [[ ${supervision_system}  && $supervision_system = true ]]
	then
		MODULE_PATH=stack/supervision_system
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#lib_levmar_2_6
if [[ ${lib_levmar_2_6}  && $lib_levmar_2_6 = true ]]
	then
		MODULE_PATH=stack/libraries/lib_levmar-2.6
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneObstacleDistanceCalculatorROSModule
if [[ ${droneObstacleDistanceCalculatorROSModule}  && $droneObstacleDistanceCalculatorROSModule = true ]]
	then
		MODULE_PATH=stack/droneEnvironmentUnderstanding/droneObstacleDistanceCalculation/droneObstacleDistanceCalculatorROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

#droneSoundROSModule
if [[ ${droneSoundROSModule}  && $droneSoundROSModule = true ]]
	then
		MODULE_PATH=stack/HMI/droneSoundROSModule
		# git submodule deinit $MODULE_PATH > /dev/null
		./installation/gitSubmoduleUpdateInitBitbucketPrivRepo.sh $MODULE_PATH $bitbucketUsername $bitbucketPassword > /dev/null
		echo " -Added package in: $MODULE_PATH"
fi

