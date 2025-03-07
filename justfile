openapi-gen:
    # https://openapi-generator.tech/docs/generators/bash
    openapi-generator-cli generate \
        --input-spec https://api.artifactsmmo.com/openapi.json \
        --output api \
        --remove-operation-id-prefix \
        --generator-name bash \
        --config openapi-gen-config.yml
    chmod u+x api/artifacts
    echo 'echo ""' >> api/artifacts
