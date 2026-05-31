@echo off
:: 切換到檔案夾所在位置
cd /d "%~dp0"

:: 1. 執行 Fetch & Pull：先檢查並拉低雲端最新變更，確保兩邊同步
git fetch origin Bus-Display
git pull origin Bus-Display

:: 2. 自動將你新複製進來的檔案加入暫存區
git add .

:: 3. 自動用當時嘅日期時間作為 Summary 並 Commit
git commit -m "Auto sync: %date% %time%"

:: 4. 全自動推上雲端
git push origin Bus-Display

exit