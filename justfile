openapi-gen:
    # https://openapi-generator.tech/docs/generators/bash
    openapi-generator-cli generate \
        --config openapi-gen-config.yml
    chmod u+x api/artifacts
    echo 'echo ""' >> api/artifacts

clean:
    rm data/*
