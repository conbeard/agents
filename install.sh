#!/bin/bash

# Agentic File Structure Setup Script
# This script downloads and sets up the agentic file structure in your project

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
REPO_URL="https://raw.githubusercontent.com/conbeard/agents/main"
TARGET_DIR="${1:-.}"

echo -e "${GREEN}=== Agentic File Structure Setup ===${NC}"
echo ""

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo -e "${RED}Error: Target directory '$TARGET_DIR' does not exist${NC}"
    exit 1
fi

cd "$TARGET_DIR"

# Function to download file
download_file() {
    local url=$1
    local target=$2
    
    echo -e "${YELLOW}Downloading: $target${NC}"
    
    if command -v curl &> /dev/null; then
        curl -fsSL "$url" -o "$target"
    elif command -v wget &> /dev/null; then
        wget -q "$url" -O "$target"
    else
        echo -e "${RED}Error: Neither curl nor wget is available${NC}"
        exit 1
    fi
}

# Function to check if file exists and prompt for overwrite
should_download() {
    local file=$1
    
    if [ -f "$file" ]; then
        read -p "File '$file' already exists. Overwrite? (y/N): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            return 1
        fi
    fi
    return 0
}

# Create directory structure
echo -e "${GREEN}Creating directory structure...${NC}"
mkdir -p docs/templates

# Download AGENTS.md
if should_download "AGENTS.md"; then
    download_file "$REPO_URL/src/AGENTS.md" "AGENTS.md"
    echo -e "${GREEN}✓ AGENTS.md installed${NC}"
else
    echo -e "${YELLOW}⊘ Skipped AGENTS.md${NC}"
fi

# Download docs/README.md
if should_download "docs/README.md"; then
    download_file "$REPO_URL/src/docs/README.md" "docs/README.md"
    echo -e "${GREEN}✓ docs/README.md installed${NC}"
else
    echo -e "${YELLOW}⊘ Skipped docs/README.md${NC}"
fi

echo ""
echo -e "${GREEN}=== Setup Complete ===${NC}"
echo ""
echo "Agentic file structure has been set up in: $TARGET_DIR"
echo ""
echo "Next steps:"
echo "1. Review and customize AGENTS.md for your project"
echo "2. Fill in the documentation tables in docs/README.md"
echo "3. Create project-specific documentation"
echo "4. Add project-specific templates to docs/templates/"
echo ""
echo -e "${GREEN}Happy coding!${NC}"
