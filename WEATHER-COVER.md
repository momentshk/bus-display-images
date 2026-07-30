# 自動天氣開機圖案

Cloudflare Worker `weather-cover-automation` 每 5 分鐘讀取香港天文台的 `warnsum` 開放數據，並更新 `OTHER/cover.png`。GitHub Actions 只保留手動執行功能。

## 對應

| 天文台訊號 | 圖片 |
| --- | --- |
| `WTS` | `Thunderstorm.png` |
| `TC1` | `T1.png` |
| `TC3` | `T3.png` |
| `TC8NE` / `TC8NW` / `TC8SE` / `TC8SW` | 相應的 `T8-*.png` |
| `TC9` | `T9.png` |
| `TC10` | `T10.png` |
| `WRAINA` | `Amber.png` |
| `WRAINR` | `Red.png` |
| `WRAINB` | `Black.png` |
| 沒有上述颱風或暴雨訊號 | `UB-a-1.png` |

優先次序由低至高為：沒有警告 → `WTS` 雷暴 → `TC1` 一號 → 黃雨 → `TC3` 三號 → 紅雨 → 黑雨 → 八號 → 九號 → 十號。若同時有多個訊號，會選擇優先級較高的圖案；動作為 `CANCEL` 的訊號不會被視為生效。

Cloudflare Worker 負責正式排程；GitHub 工作流程檔案：`.github/workflows/weather-cover.yml`
