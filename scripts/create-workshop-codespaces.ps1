# GitHub Codespaces Workshop Automation Script (PowerShell)
# This script helps workshop facilitators create multiple language-specific Codespaces for participants

param(
    [int]$ParticipantCount = 10,
    [string]$Repo = "your-username/github-copilot-express-workshop",
    [string]$MachineType = "basicLinux32gb",
    [ValidateSet("dotnet", "python", "javascript", "java")]
    [Parameter(Mandatory=$true)]
    [string]$Language
)

Write-Host "🚀 GitHub Copilot Workshop - $($Language.ToUpper()) Codespaces Setup" -ForegroundColor Green
Write-Host "============================================================="

# Validate language
$validLanguages = @("dotnet", "python", "javascript", "java")
if ($Language -notin $validLanguages) {
    Write-Host "❌ Invalid language: $Language" -ForegroundColor Red
    Write-Host "Available languages: $($validLanguages -join ', ')" -ForegroundColor Yellow
    exit 1
}

# Check if GitHub CLI is installed
if (-not (Get-Command "gh" -ErrorAction SilentlyContinue)) {
    Write-Host "❌ GitHub CLI (gh) is not installed" -ForegroundColor Red
    Write-Host "Please install it from: https://cli.github.com"
    exit 1
}

# Check if user is authenticated
try {
    gh auth status | Out-Null
    Write-Host "✅ GitHub CLI is ready" -ForegroundColor Green
}
catch {
    Write-Host "🔐 Please authenticate with GitHub" -ForegroundColor Yellow
    gh auth login
}

# Function to create a single Codespace
function New-WorkshopCodespace {
    param($ParticipantId)
    
    $codespaceName = "Workshop-$($Language.Substring(0,1).ToUpper() + $Language.Substring(1))-$ParticipantId"
    $devcontainerPath = ".devcontainer/$Language"
    Write-Host "📦 Creating $($Language.ToUpper()) Codespace for Participant $ParticipantId..." -ForegroundColor Yellow
    
    try {
        gh codespace create --repo $Repo --machine $MachineType --display-name $codespaceName --devcontainer-path $devcontainerPath --idle-timeout 30m | Out-Null
        Write-Host "✅ Created: $codespaceName" -ForegroundColor Green
    }
    catch {
        Write-Host "❌ Failed to create: $codespaceName" -ForegroundColor Red
    }
}

# Main execution
Write-Host "🏭 Creating $ParticipantCount $($Language.ToUpper()) Codespaces..." -ForegroundColor Yellow
Write-Host ""

# Create Codespaces
$jobs = @()
for ($i = 1; $i -le $ParticipantCount; $i++) {
    $jobs += Start-Job -ScriptBlock ${function:New-WorkshopCodespace} -ArgumentList $i
    
    # Limit concurrent creation to avoid rate limits
    if ($i % 3 -eq 0) {
        $jobs | Wait-Job | Out-Null
        $jobs = @()
    }
}

# Wait for remaining jobs
if ($jobs.Count -gt 0) {
    $jobs | Wait-Job | Out-Null
}

Write-Host ""
Write-Host "🎉 $($Language.ToUpper()) Codespace creation completed!" -ForegroundColor Green

# List created Codespaces
Write-Host ""
Write-Host "📋 Current $($Language.ToUpper()) Codespaces:" -ForegroundColor Yellow
$codespaces = gh codespace list | Where-Object { $_ -match $Language }
if ($codespaces) {
    $codespaces
} else {
    Write-Host "No $($Language.ToUpper()) Codespaces found" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "💡 Tips for workshop participants:" -ForegroundColor Green
Write-Host "   • Share the Codespace URLs with participants"
Write-Host "   • Codespaces will auto-stop after 30 minutes of inactivity"
Write-Host "   • Each participant gets their own isolated $($Language.ToUpper()) environment"
Write-Host "   • All $($Language.ToUpper()) workshop materials are pre-loaded"
Write-Host "   • Startup time: ~45-75 seconds (language-specific optimization)"

Write-Host ""
Write-Host "🧹 Cleanup after workshop:" -ForegroundColor Yellow
Write-Host "   Run: gh codespace list"
Write-Host "   Then: gh codespace delete -c <codespace-name>"
Write-Host "   Or use: .\scripts\cleanup-codespaces.ps1"
