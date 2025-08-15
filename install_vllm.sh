#!/bin/bash
set -e

pip uninstall -y vllm

rm -rf /vllm-workspace/vllm/build /vllm-workspace/vllm/*.so

pip install --upgrade pip setuptools wheel setuptools_scm jinja2 ninja

pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126

VLLM_USE_PRECOMPILED=1 uv pip install --system --editable /vllm-workspace/vllm

pip install -r /vllm-workspace/vllm/srs_requirements.txt