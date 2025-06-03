#!/bin/bash

PROJECT_DIR="/home/bdaleycid/cmms_v3"
USE_CLEAR=true

while true; do
  $USE_CLEAR && command -v clear >/dev/null && clear
  echo "Circle Red X — CMMS v3"
  echo "======================="
  echo "1. Run Program"
  echo "2. Compile and Check"
  echo "3. Push to GitHub"
  echo "4. Exit"
  echo ""
  read -p "Choose an option: " choice

  if [[ "$choice" == "1" ]]; then
    if [ ! -d "$PROJECT_DIR" ]; then
      echo "❌ ERROR: Project directory not found at $PROJECT_DIR"
      [ -t 0 ] && read -p "Press enter to return to menu..."
      continue
    fi
    echo "Running CMMS from: $PROJECT_DIR"
    cd "$PROJECT_DIR"
    flutter clean
    flutter pub get
    flutter run -d linux
    [ -t 0 ] && read -p "Press enter to return to menu..."

  elif [[ "$choice" == "2" ]]; then
    if [ ! -d "$PROJECT_DIR" ]; then
      echo "❌ ERROR: Project directory not found at $PROJECT_DIR"
      [ -t 0 ] && read -p "Press enter to return to menu..."
      continue
    fi
    echo "Compiling and checking for issues in: $PROJECT_DIR"
    cd "$PROJECT_DIR"
    flutter clean
    flutter pub get
    TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
    flutter analyze > "analyze_log_$TIMESTAMP.txt"
    if [ $? -ne 0 ]; then
      echo "❌ flutter analyze failed with issues."
    else
      echo "✅ flutter analyze passed."
    fi
    cat "analyze_log_$TIMESTAMP.txt"
    [ -t 0 ] && read -p "Press enter to return to menu..."

    if [ ! -d "$PROJECT_DIR" ]; then
      echo "❌ ERROR: Project directory not found at $PROJECT_DIR"
      [ -t 0 ] && read -p "Press enter to return to menu..."
      continue
    fi
    echo "Pushing to GitHub from: $PROJECT_DIR"
    cd "$PROJECT_DIR"
    git add .
    if git diff --cached --quiet && git diff --quiet && ! git ls-files --others --exclude-standard | grep -q .; then
      echo "No changes to commit."
    else
      git commit -m "Auto commit from CMMS menu: $(date '+%Y-%m-%d %H:%M:%S')"
      git push
    fi
    [ -t 0 ] && read -p "Press enter to return to menu..."

  elif [[ "$choice" == "4" ]]; then
    echo "Exiting menu."
    break

  else
    echo "Invalid option. Please enter 1–4."
    sleep 1
  fi
done
