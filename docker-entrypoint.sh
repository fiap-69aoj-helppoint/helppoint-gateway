#!/bin/sh

echo 'Sleeping 40s...'
sleep 40

echo 'Starting...'
java -jar -Dspring.profiles.active=prod /gateway.jar