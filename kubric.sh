#!/bin/bash

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_16_static_long \
    --camera=linear_movement \
    --min_num_static_objects=4 \
    --max_num_static_objects=10 \
    --min_num_dynamic_objects=0 \
    --max_num_dynamic_objects=0 \
    --max_camera_movement=20.0 \
    --frame_end=240

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_17_dynamic_short \
    --camera=fixed_random \
    --min_num_static_objects=0 \
    --max_num_static_objects=0 \
    --min_num_dynamic_objects=3 \
    --max_num_dynamic_objects=3 \
    --frame_end=72

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_18_dynamic_medium \
    --camera=fixed_random \
    --min_num_static_objects=0 \
    --max_num_static_objects=0 \
    --min_num_dynamic_objects=3 \
    --max_num_dynamic_objects=3 \
    --frame_end=120

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_19_dynamic_occlusion_short \
    --camera=linear_movement \
    --min_num_static_objects=5 \
    --max_num_static_objects=5 \
    --min_num_dynamic_objects=2 \
    --max_num_dynamic_objects=2 \
    --max_camera_movement=10.0 \
    --frame_end=72

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_20_dynamic_occlusion_medium \
    --camera=linear_movement \
    --min_num_static_objects=5 \
    --max_num_static_objects=5 \
    --min_num_dynamic_objects=2 \
    --max_num_dynamic_objects=2 \
    --max_camera_movement=18.0 \
    --frame_end=120

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_21_dynamic_occlusion_long \
    --camera=linear_movement \
    --min_num_static_objects=5 \
    --max_num_static_objects=5 \
    --min_num_dynamic_objects=2 \
    --max_num_dynamic_objects=2 \
    --max_camera_movement=20.0 \
    --frame_end=240

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_22_more_dynamic_short \
    --camera=linear_movement \
    --min_num_static_objects=5 \
    --max_num_static_objects=5 \
    --min_num_dynamic_objects=5 \
    --max_num_dynamic_objects=5 \
    --max_camera_movement=10.0 \
    --frame_end=72

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_23_more_dynamic_medium \
    --camera=linear_movement \
    --min_num_static_objects=5 \
    --max_num_static_objects=5 \
    --min_num_dynamic_objects=5 \
    --max_num_dynamic_objects=5 \
    --max_camera_movement=18.0 \
    --frame_end=120

podman run --rm --interactive \
    --volume "$(pwd):/kubric" \
    kubricdockerhub/kubruntu /usr/bin/python3 \
    challenges/movi/movi_def_worker.py \
    --job-dir=output/video_24_more_dynamic_long \
    --camera=linear_movement \
    --min_num_static_objects=5 \
    --max_num_static_objects=5 \
    --min_num_dynamic_objects=5 \
    --max_num_dynamic_objects=5 \
    --max_camera_movement=20.0 \
    --frame_end=240
