#!/bin/bash
#
# Setup environment to make models visible to Gazebo.


if [ "$#" != 1 ]; then
    echo -e "usage: source setup_gazebo.bash CURRENT_DIR\n"
    return 1
fi

CURR_DIR=$1

# setup Gazebo env and update package path
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:${CURR_DIR}/ros/src/bswarm/models

echo -e "GAZEBO_MODEL_PATH $GAZEBO_MODEL_PATH"

