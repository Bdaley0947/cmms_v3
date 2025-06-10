#!/bin/bash
echo "===== ANALYSIS LOG ====="
date "+%Y-%m-%d %H:%M:%S"
flutter clean
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter analyze
flutter build linux
