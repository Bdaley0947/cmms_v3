#!/bin/bash

while true; do
  clear
  echo "CMMS Project Menu"
  echo "================="
  echo "1. Run App"
  echo "2. Clean, Compile, and Check"
  echo "3. View recent build errors only"
  echo "4. View full analysis log"
  echo "x. Exit"
  echo ""
  read -p "Choose an option: " option

  case $option in
    1)
      flutter run -d linux
      read -p "Press enter to return to menu..."
      ;;
    2)
      {
        echo "===== ANALYSIS LOG ====="
        date "+%Y-%m-%d %H:%M:%S"
        flutter clean
        flutter pub get
        flutter packages pub run build_runner build --delete-conflicting-outputs
        flutter analyze
        flutter build linux
      } > analysis.log 2>&1
      read -p "Compile and check complete. Press enter to return to menu..."
      ;;
    3)
      echo "Recent Errors:"
      echo "=============="
      grep -i error analysis.log | tail -n 20
      read -p "Press enter to return to menu..."
      ;;
    4)
      echo "Full analysis log:"
      echo "=================="
      cat analysis.log | tail -n 100
      read -p "Press enter to return to menu..."
      ;;
    x|X)
      exit 0
      ;;
    *)
      echo "Invalid option. Try again."
      sleep 1
      ;;
  esac
done

