# Vllm Settings

Configuration files for running LLMs in vllm docker containers.

To run `Qwen3.5-2B` on `arm` SoC, build a custom image with upgraded `vllm`:

```sh
docker build . --tag public.ecr.aws/q9t5s3a7/vllm-arm64-cpu-release-repo:v0.16.0-qwen3.5-fixed
```

Start the model:

```sh
docker compose -f arm64-cpu-qwen3.5-2b/docker-compose.yml up
```
