@echo off
:: 切換到檔案夾所在位置
cd /d "%~dp0"

:: 1. 強行獲取雲端最新狀態
git fetch origin main

:: 2. 嘗試合流，如果有輕微落後會自動快進 (Fast-forward)
git pull origin main --ff-only

:: 3. 將所有新舊變更新增落暫存區
git add .

:: 4. 自動 Commit（加了 || exit /b 0，就算無嘢要 commit 亦唔會報錯中斷）
git commit -m "Auto sync: %date% %time%" || echo No changes to commit.

:: 5. 推上雲端
git push origin main

exit