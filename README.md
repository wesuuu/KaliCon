# KaliCon

Kali Linux container with useful programs and utilities preloaded & installed. These containers track Kali Linux's [`kalilinux/kalirolling`](https://hub.docker.com/r/kalilinux/kali-rolling) container.

Containers are rebuilt nightly and quarterly

## Usage

```bash
# pull versions
docker pull ghcr.io/wesuuu/kalicon:latest-nightly
docker pull ghcr.io/wesuuu/kalicon:amd64-nightly
docker pull ghcr.io/wesuuu/kalicon:arm64-nightly

# run a version
docker run -ti ghcr.io/wesuuu/kalicon:latest-nightly /bin/bash
```