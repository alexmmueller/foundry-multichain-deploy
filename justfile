set shell:=["bash", "-uc"]

# build the contracts
build:
    forge build

# format source
fmt:
    forge fmt

# run unit tests
test:
    forge test --no-match-test Integration

# run integration tests, needs --fork-url
integration-test:
    forge test --mt Integration

# watches the directory for changes and rebuilds.
watch-build:
    forge build --watch

deploy-anvil: build
    echo "Unimplemented" >&2
    exit 1
    
deploy-sepolia: build
    echo "Unimplemented" >&2
    exit 1

# Builds locally using docker (useful for debugging dependency issues)
docker-build:
    echo "Unimplemented" >&2
    exit 1

docker-test: docker-build
    echo "Unimplemented" >&2
    exit 1