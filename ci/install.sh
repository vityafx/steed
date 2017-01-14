set -ex

main() {
    curl https://sh.rustup.rs -sSf | \
        sh -s -- -y --default-toolchain $TRAVIS_RUST_VERSION

    source ~/.cargo/env

    pushd ..
    which cross || cargo install --git https://github.com/japaric/cross
    popd

    # curl -LSfs https://japaric.github.io/trust/install.sh | \
    #     sh -s -- \
    #        --force \
    #        --git japaric/cross \
    #        --tag v0.1.5 \
    #        --target x86_64-unknown-linux-gnu
}

main