#!/bin/bash
for file in my-functions/*.sh; do
  [[ "$file" == "my-functions/run-functions.sh" ]] && continue # prevent recursively
  source "$file"
done

echo "Available funtions: "
declare -F 

# If script is executed directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  if [[ $# -lt 1 ]]; then
    echo "❌ Usage: $0 <function-name> [args...]"
    echo "📋 Available test functions:"
    # declare -F | awk '{print " - " $3}' | grep '^run_'
    declare -F 
    exit 1
  fi

  func="$1"
  shift

  if declare -F "$func" > /dev/null; then
    "$func" "$@"
  else
    echo "❌ Function '$func' not found."
    echo "📋 Available test functions:"
    # declare -F | awk '{print " - " $3}' | grep '^run_'
    declare -F 
    exit 1
  fi
fi

