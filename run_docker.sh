#!/bin/bash

# workspace 路径
# WORKSPACE_DIR="/home/ljy/workspace/mapping/timeloop-accelergy-exercises/workspace"
WORKSPACE_DIR="./workspace"

# 架构固定为 x86_64 (amd64)
DOCKER_ARCH="amd64"

# 创建 workspace 目录（如果不存在）
mkdir -p "$WORKSPACE_DIR"

# 运行容器
docker run -it --rm \
  -p 8888:8888 \
  -e USER_UID=$(id -u) \
  -e USER_GID=$(id -g) \
  -v "$WORKSPACE_DIR":/home/workspace \
  timeloopaccelergy/timeloop-accelergy-pytorch:latest-$DOCKER_ARCH
