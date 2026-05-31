@echo off
:: 切換到檔案夾所在位置
cd /d "%~dp0"

:: 1. 自動將新複製進來的巴士相、檔案加入暫存區
git add .

:: 2. 免寫 Summary：自動用當時嘅日期時間作為 Summary 並 Commit
git commit -m "Auto sync: %date% %time%"

:: 3. 免撳 Push：全自動推上雲端 (跟返你第一張圖嘅 Current branch 名稱)
git push origin Bus-Display

exit