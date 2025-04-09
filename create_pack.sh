#!/usr/bin/env bash

set -euo pipefail

rm -rf BabysFirstModpack* || true

mkdir BabysFirstModpack
cp README.md icon.png manifest.json BabysFirstModpack
cp -r config BabysFirstModpack/config
(cd BabysFirstModpack && zip -r BabysFirstModpack.zip ./* && mv BabysFirstModpack.zip ..)
