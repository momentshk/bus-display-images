@echo off
cd /d "D:\Billy Home\Billy Document\Bus Photo\GitHub\bus-display-images"

git fetch origin main
git pull origin main --ff-only
git add .
git commit -m "Auto sync: %date% %time%" || echo No changes.
git push origin main

exit