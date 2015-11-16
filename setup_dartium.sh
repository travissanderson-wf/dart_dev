#!/usr/bin/env bash

set -e

DART_DIST="dartsdk-linux-x64-release.zip";
DARTIUM_DIST="dartium-linux-x64-release.zip";

echo "Fetching dart sdk and Dartium "

curl "http://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/$DART_DIST" > $DART_DIST
curl "http://storage.googleapis.com/dart-archive/channels/stable/raw/latest/dartium/$DARTIUM_DIST" > $DARTIUM_DIST

unzip -u $DART_DIST > /dev/null
unzip -u $DARTIUM_DIST > /dev/null

rm $DART_DIST
rm $DARTIUM_DIST

mv dartium-* dartium

#sudo ln -s "$PWD/dartium/chrome" /usr/local/bin/dartium
mv dartium/chrome /usr/local/bin/dartium
mv dartium/* /usr/local/bin
