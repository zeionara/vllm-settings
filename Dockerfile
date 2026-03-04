# https://docs.vllm.ai/en/stable/getting_started/installation/cpu/#full-build
# https://github.com/vllm-project/vllm/pull/35972
# https://github.com/tanmayc25/vllm/tree/fix/cpu-unquantized-gemm-non-2d-weights

arg base=v0.16.0
arg device=cpu

from public.ecr.aws/q9t5s3a7/vllm-arm64-cpu-release-repo:$base

arg device

# run pip install -U pip
# run pip install -U transformers
# run VLLM_TARGET_DEVICE=$device pip install -U 'vllm @ git+https://github.com/vllm-project/vllm.git' --no-build-isolation && pip cache purge
# run VLLM_TARGET_DEVICE=$device pip install -U 'vllm @ git+https://github.com/tanmayc25/vllm.git' --no-build-isolation && pip cache purge
# run pip install https://wheels.vllm.ai/f22ff2958c398ae0950598cdbb9c677c027fa5db/vllm-0.16.1rc1.dev195%2Bgf22ff2958.cpu-cp38-abi3-manylinux_2_35_aarch64.whl

run git clone https://github.com/tanmayc25/vllm.git /vllm-workspace/source
workdir /vllm-workspace/source
run pip install --upgrade pip && pip cache purge
run pip install -v -r requirements/cpu-build.txt --extra-index-url https://download.pytorch.org/whl/cpu && pip cache purge
run pip install -v -r requirements/cpu.txt --extra-index-url https://download.pytorch.org/whl/cpu && pip cache purge
env VLLM_TARGET_DEVICE=$device
run echo Building for device $VLLM_TARGET_DEVICE
run  pip install 'vllm @ git+https://github.com/tanmayc25/vllm.git@fix/cpu-unquantized-gemm-non-2d-weights' --no-build-isolation && pip cache purge
