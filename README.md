# Vllm Settings

Configuration files for running LLMs in vllm docker containers.

To run `Qwen3.5-2B` on `arm` SoC, build a custom image with upgraded `vllm` (for more information refer to the [official docs](https://docs.vllm.ai/en/stable/getting_started/installation/cpu/#python-only-build)):

```sh
docker build . --tag public.ecr.aws/q9t5s3a7/vllm-arm64-cpu-release-repo:v0.16.0-qwen3.5-fixed
```

In addition, refer [to this issue](https://github.com/vllm-project/vllm/issues/35950) which points to the solution of the compatibility problem between `vllm` and `arm`.

Start the model:

```sh
docker compose -f arm64-cpu-qwen3.5-2b/docker-compose.yml up
```
