#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
סקריפט להעלאת קבצים ל-GitHub
Script to upload files to GitHub
"""

import subprocess
import os
import sys

def run_command(command, description_he, description_en):
    """הרצת פקודה והצגת תוצאה"""
    print(f"\n{description_he}")
    print(f"{description_en}")
    print("-" * 50)
    
    try:
        result = subprocess.run(command, shell=True, check=True, 
                              capture_output=True, text=True, encoding='utf-8')
        if result.stdout:
            print(result.stdout)
        return True
    except subprocess.CalledProcessError as e:
        print(f"שגיאה: {e}")
        print(f"Error: {e}")
        if e.stderr:
            print(f"פרטים: {e.stderr}")
            print(f"Details: {e.stderr}")
        return False
    except FileNotFoundError:
        print("Git לא מותקן במערכת!")
        print("Git is not installed on the system!")
        print("\nאנא התקן Git מ: https://git-scm.com/download/win")
        print("Please install Git from: https://git-scm.com/download/win")
        return False

def main():
    print("=" * 50)
    print("העלאת קבצים ל-GitHub")
    print("Uploading files to GitHub")
    print("=" * 50)
    
    # בדיקה אם Git מותקן
    if not run_command("git --version", "בודק אם Git מותקן...", "Checking if Git is installed..."):
        sys.exit(1)
    
    # אתחול מאגר Git
    if not run_command("git init", "מאתחל מאגר Git...", "Initializing Git repository..."):
        sys.exit(1)
    
    # הוספת קבצים
    if not run_command("git add .", "מוסיף קבצים...", "Adding files..."):
        sys.exit(1)
    
    # יצירת commit
    if not run_command('git commit -m "Initial commit: Add visualization projects"', 
                      "יוצר commit...", "Creating commit..."):
        # אם יש שגיאה ב-commit, זה יכול להיות שאין שינויים או שיש בעיה אחרת
        print("\nשים לב: ייתכן שכבר יש commit או שיש בעיה אחרת")
        print("Note: There might already be a commit or another issue")
    
    # הגדרת branch ראשי
    if not run_command("git branch -M main", "מגדיר branch ראשי...", "Setting main branch..."):
        # זה לא קריטי אם נכשל
        pass
    
    # הוספת remote repository
    run_command("git remote remove origin", "מסיר remote קיים (אם קיים)...", "Removing existing remote (if exists)...")
    
    if not run_command("git remote add origin https://github.com/yafitkar6-source/my-project.git",
                      "מוסיף remote repository...", "Adding remote repository..."):
        print("\nשים לב: ייתכן שה-remote כבר קיים")
        print("Note: Remote might already exist")
    
    # דחיפה ל-GitHub
    print("\n" + "=" * 50)
    print("דוחף קבצים ל-GitHub...")
    print("Pushing files to GitHub...")
    print("שים לב: ייתכן שתצטרך להזין שם משתמש ו-Personal Access Token")
    print("Note: You may need to enter username and Personal Access Token")
    print("=" * 50)
    
    if run_command("git push -u origin main", "דוחף קבצים...", "Pushing files..."):
        print("\n" + "=" * 50)
        print("✅ הקבצים הועלו בהצלחה!")
        print("✅ Files uploaded successfully!")
        print("=" * 50)
        print("\nהפרויקט זמין ב: https://github.com/yafitkar6-source/my-project")
        print("Project available at: https://github.com/yafitkar6-source/my-project")
    else:
        print("\n" + "=" * 50)
        print("❌ שגיאה בעת הדחיפה")
        print("❌ Error during push")
        print("=" * 50)
        print("\nאפשרויות:")
        print("Options:")
        print("1. ודא שיש לך הרשאות למאגר")
        print("   Make sure you have permissions to the repository")
        print("2. השתמש ב-Personal Access Token במקום סיסמה")
        print("   Use Personal Access Token instead of password")
        print("3. נסה דרך GitHub Desktop: https://desktop.github.com/")
        print("   Try GitHub Desktop: https://desktop.github.com/")

if __name__ == "__main__":
    main()

