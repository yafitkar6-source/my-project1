# הוראות להעלאת קבצים ל-GitHub

## שיטה 1: שימוש ב-Git (מומלץ)

### שלב 1: התקנת Git
אם Git לא מותקן במחשב שלך:
1. הורד מ: https://git-scm.com/download/win
2. התקן את Git
3. פתח מחדש את PowerShell/Terminal

### שלב 2: הרצת הפקודות הבאות

פתח PowerShell בתיקיית הפרויקט (`C:\תרגול`) והרץ:

```powershell
# אתחול מאגר Git
git init

# הוספת כל הקבצים
git add .

# יצירת commit
git commit -m "Initial commit: Add visualization projects"

# הגדרת branch ראשי
git branch -M main

# הוספת remote repository
git remote add origin https://github.com/yafitkar6-source/my-project.git

# דחיפה ל-GitHub
git push -u origin main
```

**הערה:** בעת הדחיפה, GitHub יבקש ממך להזין:
- שם משתמש (username)
- Personal Access Token (לא סיסמה רגילה)

### יצירת Personal Access Token:
1. לך ל-GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. לחץ על "Generate new token"
3. בחר הרשאות: `repo` (full control)
4. העתק את ה-token והשתמש בו במקום הסיסמה

---

## שיטה 2: שימוש ב-GitHub Desktop (קל יותר)

1. הורד והתקן GitHub Desktop מ: https://desktop.github.com/
2. התחבר עם חשבון GitHub שלך
3. לחץ על "File" → "Add Local Repository"
4. בחר את התיקייה `C:\תרגול`
5. לחץ על "Publish repository"
6. בחר את המאגר `yafitkar6-source/my-project`
7. לחץ על "Publish Repository"

---

## שיטה 3: העלאה ידנית דרך דפדפן

1. לך ל: https://github.com/yafitkar6-source/my-project
2. לחץ על "uploading an existing file"
3. גרור את כל הקבצים:
   - index.html
   - israeli_stocks.html
   - machine_learning.html
   - protein_folding.html
   - README.md
   - .gitignore
4. לחץ על "Commit changes"

---

## הרצת הסקריפט האוטומטי

אם Git מותקן, תוכל להריץ את הסקריפט שיצרתי:

```powershell
.\upload-to-github.ps1
```

או:

```powershell
powershell -ExecutionPolicy Bypass -File upload-to-github.ps1
```

---

## קבצים להעלאה:
- ✅ index.html
- ✅ israeli_stocks.html
- ✅ machine_learning.html
- ✅ protein_folding.html
- ✅ README.md
- ✅ .gitignore

כל הקבצים מוכנים להעלאה!

