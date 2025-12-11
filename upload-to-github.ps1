# סקריפט להעלאת קבצים ל-GitHub
# Script to upload files to GitHub

Write-Host "בודק אם Git מותקן..." -ForegroundColor Yellow
Write-Host "Checking if Git is installed..." -ForegroundColor Yellow

try {
    $gitVersion = git --version
    Write-Host "Git נמצא: $gitVersion" -ForegroundColor Green
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
    
    Write-Host "`nמאתחל מאגר Git..." -ForegroundColor Yellow
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
    
    Write-Host "`nמוסיף קבצים..." -ForegroundColor Yellow
    Write-Host "Adding files..." -ForegroundColor Yellow
    git add .
    
    Write-Host "`nיוצר commit..." -ForegroundColor Yellow
    Write-Host "Creating commit..." -ForegroundColor Yellow
    git commit -m "Initial commit: Add visualization projects"
    
    Write-Host "`nמגדיר branch ראשי..." -ForegroundColor Yellow
    Write-Host "Setting main branch..." -ForegroundColor Yellow
    git branch -M main
    
    Write-Host "`nמוסיף remote repository..." -ForegroundColor Yellow
    Write-Host "Adding remote repository..." -ForegroundColor Yellow
    git remote add origin https://github.com/yafitkar6-source/my-project.git
    
    Write-Host "`nדוחף קבצים ל-GitHub..." -ForegroundColor Yellow
    Write-Host "Pushing files to GitHub..." -ForegroundColor Yellow
    Write-Host "שים לב: ייתכן שתצטרך להזין שם משתמש וסיסמה/Personal Access Token" -ForegroundColor Cyan
    Write-Host "Note: You may need to enter username and password/Personal Access Token" -ForegroundColor Cyan
    git push -u origin main
    
    Write-Host "`nהקבצים הועלו בהצלחה!" -ForegroundColor Green
    Write-Host "Files uploaded successfully!" -ForegroundColor Green
}
catch {
    Write-Host "`nשגיאה: Git לא מותקן במערכת" -ForegroundColor Red
    Write-Host "Error: Git is not installed on the system" -ForegroundColor Red
    Write-Host "`nאנא התקן Git מ: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "`nאו השתמש ב-GitHub Desktop: https://desktop.github.com/" -ForegroundColor Yellow
    Write-Host "Or use GitHub Desktop: https://desktop.github.com/" -ForegroundColor Yellow
}

