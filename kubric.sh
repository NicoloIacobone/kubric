#!/bin/bash

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_01_static_short \
    --camera=linear_movement_linear_lookat \
    --min_num_static_objects=4 \
    --max_num_static_objects=10 \
    --min_num_dynamic_objects=0 \
    --max_num_dynamic_objects=0 \
    --max_camera_movement=8.0 \
    --frame_end=72

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_02_static_medium \
    --camera=linear_movement_linear_lookat \
    --min_num_static_objects=4 \
    --max_num_static_objects=10 \
    --min_num_dynamic_objects=0 \
    --max_num_dynamic_objects=0 \
    --max_camera_movement=8.0 \
    --frame_end=120

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_03_static_long \
    --camera=linear_movement_linear_lookat \
    --min_num_static_objects=4 \
    --max_num_static_objects=10 \
    --min_num_dynamic_objects=0 \
    --max_num_dynamic_objects=0 \
    --max_camera_movement=8.0 \
    --frame_end=240