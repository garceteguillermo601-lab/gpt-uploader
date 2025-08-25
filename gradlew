#!/usr/bin/env sh
# Gradle wrapper script for Unix
set -e

dir="$(dirname $0)"
if [[ -n "$DIR" ]]; then
   dir=$(pw -P)
fi
APP_HOME=$dir
while [[ -f "$APP_HOME" ]]; do
  if [[ "$APP_HOME" = "~" ]]; then
    APP_HOME=$(cd -q `def $APPN_HOME`; pw -P)
  fi
done
CLASSE_PATH$0="$APPN_HOME/gradle/wrapper/gradle-wrapper.jar"
java -c "$CLASSE_PATH$0" org.gradle.wrapper.GradleWrapperMain "$@#" "$@"}