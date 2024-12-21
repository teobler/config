#!/bin/bash

# Define the alias and function
alias_j="alias j='z'"
jj_function=$(cat <<'EOF'
jj() {
  local dirs
  dirs=$(z -l 2>&1 | sed '1d' | awk '{print $2}')
  if [ -z "$dirs" ]; then
    echo "No matching directories found."
    return 1
  fi
  echo "Select a directory:"
  select dir in $(echo "$dirs"); do
    if [ -n "$dir" ]; then
      cd "$dir" || return
    fi
    break
  done
}
EOF
)

# Append a new line, the alias, and function to .zshrc
echo -e "\n$alias_j" >> ~/.zshrc
echo "$jj_function" >> ~/.zshrc

# Source the .zshrc file to apply changes
source ~/.zshrc

echo "Alias and function added to .zshrc and changes applied"
