@echo off
chcp 65001 >nul
echo בודק אם Git מותקן...
echo Checking if Git is installed...

git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo שגיאה: Git לא מותקן במערכת
    echo Error: Git is not installed on the system
    echo.
    echo אנא התקן Git מ: https://git-scm.com/download/win
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    echo או השתמש ב-GitHub Desktop: https://desktop.github.com/
    echo Or use GitHub Desktop: https://desktop.github.com/
    pause
    exit /b 1
)

echo Git נמצא!
echo Git found!
echo.

echo מאתחל מאגר Git...
echo Initializing Git repository...
git init

echo.
echo מוסיף קבצים...
echo Adding files...
git add .

echo.
echo יוצר commit...
echo Creating commit...
git commit -m "Initial commit: Add visualization projects"

echo.
echo מגדיר branch ראשי...
echo Setting main branch...
git branch -M main

echo.
echo מוסיף remote repository...
echo Adding remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/yafitkar6-source/my-project.git

echo.
echo דוחף קבצים ל-GitHub...
echo Pushing files to GitHub...
echo שים לב: ייתכן שתצטרך להזין שם משתמש ו-Personal Access Token
echo Note: You may need to enter username and Personal Access Token
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo הקבצים הועלו בהצלחה!
    echo Files uploaded successfully!
) else (
    echo.
    echo שגיאה בעת הדחיפה. אנא בדוק את ההרשאות והאימות.
    echo Error during push. Please check permissions and authentication.
)

pause

