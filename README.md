## Artifacts in Bash

Goal of this project is to play [Artifacts](https://www.artifactsmmo.com/) using bash scripting as my primary mechnanism.

That's not to say I don't use more tools.
* `nix` for managing dependencies
* `direnv` for loading environment variables and nix development shell
* `just` for build scripts
* `curl` for making API requests
* `jq` for parsing API responses
* ...and coreutils for about everything else

I did play around with `openapi-generator-cli` which build bash-bindings for an OpenAPI spec.  Bindings is a strong word.  For bash, it amounted to a cli with help documentation and completions.  It definitely makes ad-hoc calls very convenient.

The goal of this is less about playing Artifacts, and more about learning `jq` and `bash` syntax.
