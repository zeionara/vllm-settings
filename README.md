# Vllm Settings

Configuration files for running LLMs in vllm docker containers

Build a custom image with upgraded transformers:

```sh
docker build . --build-arg base=v0.16.0 --tag public.ecr.aws/q9t5s3a7/vllm-arm64-cpu-release-repo:v0.16.0-upgraded-transformers
```

Start a cluster:

```sh
docker compose -f arm64-cpu-qwen3-0.6b/docker-compose.yml up
```
