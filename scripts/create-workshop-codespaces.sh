#!/bin/bash

# GitHub Codespaces Workshop Automation Script
# This script helps workshop facilitators create multiple language-specific Codespaces for participants

set -e

# Configuration
REPO="your-username/github-copilot-express-workshop"
MACHINE_TYPE="basicLinux32gb"
PARTICIPANT_COUNT=10
LANGUAGE=""

# Available languages
LANGUAGES=("dotnet" "python" "javascript" "java")

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Help function
show_help() {
    echo -e "${GREEN}🚀 GitHub Copilot Workshop - Language-Specific Codespaces Setup${NC}"
    echo "=============================================================="
    echo ""
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -l, --language LANG    Language workshop (dotnet, python, javascript, java)"
    echo "  -c, --count NUMBER     Number of participants (default: 10)"
    echo "  -r, --repo REPO        Repository name (default: your-username/github-copilot-express-workshop)"
    echo "  -m, --machine TYPE     Machine type (default: basicLinux32gb)"
    echo "  -h, --help            Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 -l python -c 15                    # Create 15 Python Codespaces"
    echo "  $0 --language dotnet --count 8        # Create 8 .NET Codespaces"
    echo "  $0 -l javascript                      # Create 10 JavaScript Codespaces"
    echo ""
    echo "Available languages: ${LANGUAGES[*]}"
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -l|--language)
            LANGUAGE="$2"
            shift 2
            ;;
        -c|--count)
            PARTICIPANT_COUNT="$2"
            shift 2
            ;;
        -r|--repo)
            REPO="$2"
            shift 2
            ;;
        -m|--machine)
            MACHINE_TYPE="$2"
            shift 2
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        *)
            echo -e "${RED}❌ Unknown option: $1${NC}"
            show_help
            exit 1
            ;;
    esac
done

# Validate language
if [[ -z "$LANGUAGE" ]]; then
    echo -e "${RED}❌ Language not specified${NC}"
    echo ""
    show_help
    exit 1
fi

if [[ ! " ${LANGUAGES[@]} " =~ " ${LANGUAGE} " ]]; then
    echo -e "${RED}❌ Invalid language: $LANGUAGE${NC}"
    echo "Available languages: ${LANGUAGES[*]}"
    exit 1
fi

echo -e "${GREEN}🚀 GitHub Copilot Workshop - ${LANGUAGE^} Codespaces Setup${NC}"
echo "=============================================================="

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo -e "${RED}❌ GitHub CLI (gh) is not installed${NC}"
    echo "Please install it from: https://cli.github.com"
    exit 1
fi

# Check if user is authenticated
if ! gh auth status &> /dev/null; then
    echo -e "${YELLOW}🔐 Please authenticate with GitHub${NC}"
    gh auth login
fi

echo -e "${GREEN}✅ GitHub CLI is ready${NC}"

# Function to create a single Codespace
create_codespace() {
    local participant_id=$1
    local codespace_name="Workshop-${LANGUAGE^}-${participant_id}"
    local devcontainer_path=".devcontainer/${LANGUAGE}"
    
    echo -e "${YELLOW}📦 Creating ${LANGUAGE^} Codespace for Participant ${participant_id}...${NC}"
    
    if gh codespace create \
        --repo "$REPO" \
        --machine "$MACHINE_TYPE" \
        --display-name "$codespace_name" \
        --devcontainer-path "$devcontainer_path" \
        --idle-timeout 30m \
        > /dev/null 2>&1; then
        echo -e "${GREEN}✅ Created: ${codespace_name}${NC}"
    else
        echo -e "${RED}❌ Failed to create: ${codespace_name}${NC}"
    fi
}

# Main execution
echo -e "${YELLOW}🏭 Creating ${PARTICIPANT_COUNT} ${LANGUAGE^} Codespaces...${NC}"
echo ""

# Create Codespaces in parallel (but limit concurrency)
for i in $(seq 1 $PARTICIPANT_COUNT); do
    create_codespace $i &
    
    # Limit concurrent creation to avoid rate limits
    if (( i % 3 == 0 )); then
        wait
    fi
done

# Wait for all background jobs to complete
wait

echo ""
echo -e "${GREEN}🎉 ${LANGUAGE^} Codespace creation completed!${NC}"

# List created Codespaces
echo ""
echo -e "${YELLOW}📋 Current ${LANGUAGE^} Codespaces:${NC}"
gh codespace list | grep -i "$LANGUAGE" || echo "No ${LANGUAGE^} Codespaces found"

echo ""
echo -e "${GREEN}💡 Tips for workshop participants:${NC}"
echo "   • Share the Codespace URLs with participants"
echo "   • Codespaces will auto-stop after 30 minutes of inactivity"
echo "   • Each participant gets their own isolated ${LANGUAGE^} environment"
echo "   • All ${LANGUAGE^} workshop materials are pre-loaded"
echo "   • Startup time: ~45-75 seconds (language-specific optimization)"

echo ""
echo -e "${YELLOW}🧹 Cleanup after workshop:${NC}"
echo "   Run: gh codespace list"
echo "   Then: gh codespace delete -c <codespace-name>"
echo "   Or use the batch cleanup script: ./scripts/cleanup-codespaces.sh"
