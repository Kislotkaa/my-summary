#!/bin/sh

flutter build web lib/main.dart --release --web-renderer canvaskit
rm -rf public
mkdir public
mv build/web/* public
firebase deploy
rm -rf public

