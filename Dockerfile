# syntax=docker/dockerfile:1.3-labs
FROM ubuntu:jammy
RUN <<EOF
sed -i 's/# deb-src/deb-src/' /etc/apt/sources.list
apt-get update
apt-get full-upgrade --yes
apt-get install --yes devscripts equivs
apt-get build-dep --yes dell-recovery
EOF
