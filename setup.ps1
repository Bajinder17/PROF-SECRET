# Setup Script for GitHub Dorking CTF

# Step 1: Initialize git repository
Write-Host "Initializing Git repository..." -ForegroundColor Green
git init

# Step 2: Configure git
git config user.email "intern@professor.com"
git config user.name "Intern Developer"

# Step 3: Add all files
Write-Host "Adding files..." -ForegroundColor Green
git add .

# Step 4: Commit
Write-Host "Creating initial commit..." -ForegroundColor Green
git commit -m "Initial commit: Add application setup and configuration

- Database configuration with credentials
- API keys and authentication setup
- Environment variables
- Admin login credentials"

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "✅ Repository initialized successfully!" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Create a GitHub organization named 'company-name'"
Write-Host "2. Create a new PUBLIC repository in that organization"
Write-Host "3. Run these commands:" -ForegroundColor Yellow
Write-Host ""
Write-Host "   git remote add origin https://github.com/company-name/vulnerable-repo.git" -ForegroundColor White
Write-Host "   git branch -M main" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "GitHub Dorks to Find Credentials:" -ForegroundColor Magenta
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "1. org:company-name `"intern@professor.com`"" -ForegroundColor Yellow
Write-Host "2. org:company-name password `"intern123`"" -ForegroundColor Yellow
Write-Host "3. org:company-name `"intern@professor.com`" password" -ForegroundColor Yellow
Write-Host "4. org:company-name filename:.env email" -ForegroundColor Yellow
Write-Host "5. org:company-name filename:database.yml password" -ForegroundColor Yellow
Write-Host ""
