#!/bin/bash

while true; do
  clear
  echo "====== CIRCLE RED X FIELD-READY ALPHA ======"
  echo "1. Run App (Linux Desktop)"
  echo "2. Analyze Code"
  echo "3. Fix Common Issues"
  echo "4. Sync with GitHub"
  echo "5. Exit"
  echo "==========================================="
  read -p "Select option: " choice
  case $choice in
    1) flutter run -d linux ;;
    2) flutter analyze > /home/bdaleycid/cmms_v3/analyze_log.txt && cat /home/bdaleycid/cmms_v3/analyze_log.txt ;;
    3) bash /home/bdaleycid/cmms_v3/scripts/fix_common_issues.sh ;;
    4) bash /home/bdaleycid/cmms_v3/scripts/sync_github.sh ;;
    5) exit ;;
    *) echo "Invalid option. Press enter to continue." ; read ;;
  esac
done
