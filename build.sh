#!/bin/sh
# Compila el proyecto con Java 17 y abre los módulos que Spring Boot 2.1.3 necesita.
cd "$(dirname "$0")" || exit 1

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export JAVA_TOOL_OPTIONS="--add-opens=java.desktop/java.awt.font=ALL-UNNAMED \
--add-opens=java.base/java.lang=ALL-UNNAMED \
--add-opens=java.base/java.lang.reflect=ALL-UNNAMED \
--add-opens=java.base/java.util=ALL-UNNAMED \
--add-opens=java.base/java.util.concurrent=ALL-UNNAMED \
--add-opens=java.base/java.net=ALL-UNNAMED \
--add-opens=java.base/java.text=ALL-UNNAMED \
--add-opens=java.base/java.io=ALL-UNNAMED \
--add-opens=java.base/java.nio=ALL-UNNAMED"

./mvnw clean install "$@"
