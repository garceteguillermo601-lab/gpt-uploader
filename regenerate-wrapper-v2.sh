#!/usr/bin/env bash
set -e

GRADLE_VERSION=8.2.1
WRAPPER_DIR="gradle/wrapper"


echo "€ Regenerando Gradle Wrapper $GRADLE_VERSION ..."

# Limieza previa
rm -rf gradle gradlew gradlew.bat

# Descargar distribución oficial de Gradle
curl -s -L https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle.zip

# Extraer solo lo necesario
unzip -q gradle.zip -d gradle-dist
rm gradle.zip

# Generar wrapper en el repo
gradle-dist/gradle-${GRADLE_VERSION}/bin/gradle wrapper --gradle-version $GRADLE_VERSION

rm -rf gradle-dist

echo " 🙠 Wrapper regenerado."