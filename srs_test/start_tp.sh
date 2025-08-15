vllm serve \
    Qwen/Qwen-7B \
    --max-model-len 8192 \
    --tensor-parallel-size 2 \
    --trust-remote-code