#!/bin/bash

# GitHub Codespaces Cleanup Script
# This script helps workshop facilitators clean up Codespaces after the workshop

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🧹 GitHub Copilot Workshop - Codespaces Cleanup${NC}"
echo "================================================="

# Check if GitHub CLI is installed and authenticated
if ! command -v gh &> /dev/null; then
    echo -e "${RED}❌ GitHub CLI (gh) is not installed${NC}"
    exit 1
fi

if ! gh auth status &> /dev/null; then
    echo -e "${RED}❌ Please authenticate with GitHub CLI first${NC}"
    exit 1
fi

# List all Codespaces
echo -e "${YELLOW}📋 Current Codespaces:${NC}"
gh codespace list

echo ""
read -p "Do you want to delete ALL workshop Codespaces? (y/N): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}🗑️  Deleting workshop Codespaces...${NC}"
    
    # Get all workshop Codespaces (those with "Workshop-Participant" in the name)
    workshop_codespaces=$(gh codespace list --json name,displayName | jq -r '.[] | select(.displayName | test("Workshop-Participant")) | .name')
    
    if [ -z "$workshop_codespaces" ]; then
        echo -e "${YELLOW}ℹ️  No workshop Codespaces found${NC}"
    else
        for codespace in $workshop_codespaces; do
            echo -e "${YELLOW}🗑️  Deleting: $codespace${NC}"
            if gh codespace delete -c "$codespace" --force; then
                echo -e "${GREEN}✅ Deleted: $codespace${NC}"
            else
                echo -e "${RED}❌ Failed to delete: $codespace${NC}"
            fi
        done
    fi
    
    echo ""
    echo -e "${GREEN}🎉 Cleanup completed!${NC}"
else
    echo -e "${YELLOW}ℹ️  Cleanup cancelled${NC}"
    echo ""
    echo -e "${YELLOW}💡 To delete individual Codespaces:${NC}"
    echo "   gh codespace delete -c <codespace-name>"
fi

echo ""
echo -e "${YELLOW}📋 Remaining Codespaces:${NC}"
gh codespace list
