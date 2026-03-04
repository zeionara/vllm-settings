arg base=v0.16.0

from public.ecr.aws/q9t5s3a7/vllm-arm64-cpu-release-repo:$base

# run pip install -U transformers 'vllm @ git+https://github.com/vllm-project/vllm.git'
# run pip install -U pip
# run pip install -U transformers
run pip install https://wheels.vllm.ai/f22ff2958c398ae0950598cdbb9c677c027fa5db/vllm-0.16.1rc1.dev195%2Bgf22ff2958.cpu-cp38-abi3-manylinux_2_35_aarch64.whl
