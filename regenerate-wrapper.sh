#!/bin/bash
set -e

# ⚡ Versión de Gradle a usar
GRADLE_VERSION=8.2.1

echo "⚡ Regenerando Gradle Wrapper con Gradle $GRADLE_VERSION..."

# 1. Eliminar cualquier wrapper viejo
rm -rf gradle/wrapper
rm -f gradlew gradlew.bat

# 2. Descargar Gradle oficial
curl -L "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip" -o gradle.zip
unzip gradle.zip -d gradle-dist
rm gradle.zip

# 3. Inicializar wrapper con Gradle descargado
gradle-dist/gradle-$GRADLE_VERSION/bin/gradle wrapper

# 4. Limpiar temporales
rm -rf gradle-dist

echo "✅ Gradle Wrapper regenerado correctamente."
echo "Archivos creados:"
ls -l gradlew gradlew.bat gradle/wrapper/
