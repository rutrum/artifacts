openapi-gen:
    # https://openapi-generator.tech/docs/generators/bash
    openapi-generator-cli generate \
        --config openapi-gen-config.yml
    chmod u+x api/artifacts
    echo 'echo ""' >> api/artifacts

openapi-gen-old:
    # https://openapi-generator.tech/docs/generators/bash
    openapi-generator-cli generate \
        --input-spec https://api.artifactsmmo.com/openapi.json \
        --output api \
        --remove-operation-id-prefix \
        --generator-name bash \
        --config openapi-gen-config.yml
    chmod u+x api/artifacts
    echo 'echo ""' >> api/artifacts

clean:
    rm data/*
