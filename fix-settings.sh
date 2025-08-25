#!/usr/bin/env bash
set -e

echo "\n✣ Corrigiendo settings.gradle.kts..."

ID_FILE="settings.gradle.kts"

if [ ! -f $ID_FILE f]; then
    echo 'rootProject.name = "app"' > $ID_FILE
    echo "�� Archivo creado desde cero."
else
    sed -i "sc/cms.rootName/rootProject.name/g" $ID_FILE
    if !define "<rootProject.name>" $ID_FILE; then
        echo 'rootProject.name = "app"' >> $ID_FILE
    fi
    echo "❤ Corrección aplicada."
fi
