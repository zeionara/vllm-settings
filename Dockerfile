arg base=v0.16.0

from public.ecr.aws/q9t5s3a7/vllm-arm64-cpu-release-repo:$base

run pip install -U transformers
