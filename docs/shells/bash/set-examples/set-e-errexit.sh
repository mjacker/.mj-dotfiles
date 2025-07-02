#!/bin/bash
set -e

echo "Start"
false         # This command fails (exit code 1)
echo "End"     # ❌ This line will NOT run

