#!/usr/bin/env bash

# Find the project root
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Download a minimal gradle jar if it doesn't exist to bootstrap the build
if [ ! -d "$DIR/gradle/wrapper" ]; then
    mkdir -p "$DIR/gradle/wrapper"
fi

# Run gradle commands
exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
