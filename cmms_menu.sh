#!/bin/bash

while true; do
  clear
  echo "CMMS Project Menu"
  echo "================="
  echo "1. Run App"
  echo "2. Clean, Compile, and Check"
  echo "3. View build errors only"
  echo "4. Display last analysis log"
  echo "5. Push to GitHub"
  echo "6. Exit"
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
      {
        echo "===== ANALYSIS LOG ====="
        date "+%Y-%m-%d %H:%M:%S"
        flutter clean
        flutter pub get
        flutter packages pub run build_runner build --delete-conflicting-outputs
        flutter analyze
        flutter build linux
        echo ""
        echo "Recent Errors:"
        echo "=============="
        grep -i "error" analysis.log | tail -n 20
      } > analysis.log 2>&1
      read -p "Press enter to return to menu..."
      ;;
    4)
      echo "Full analysis log:"
      echo "=================="
      cat analysis.log
      read -p "Press enter to return to menu..."
      ;;
    5)
      git add .
      git commit -m "Automated commit on $(date +%Y-%m-%d %H:%M:%S)"
      git push
      read -p "Push to GitHub complete. Press enter to return to menu..."
      ;;
    6)
      exit 0
      ;;
    *)
      echo "Invalid option. Try again."
      sleep 1
      ;;
  esac
done

