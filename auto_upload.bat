@echo off
:: 切換到檔案夾所在位置
cd /d "%~dp0"

:: 1. 執行 Fetch & Pull：對齊雲端狀態
git fetch origin main
git pull origin main

:: 2. 自動將新複製進來的檔案加入暫存區
git add .

:: 3. 免寫 Summary：自動 Commit 埋
git commit -m "Auto sync: %date% %time%"

:: 4. 全自動推上雲端 (配合你圖中的 main branch)
git push origin main

exit