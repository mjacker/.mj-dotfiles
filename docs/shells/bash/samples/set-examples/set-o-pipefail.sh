#!/bin/bash
set -e
set -o pipefail

true | echo "You will see this" | grep "will"

false | grep "something"
echo "You will not see this"

