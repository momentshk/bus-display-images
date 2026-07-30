# 自動天氣開機圖案

GitHub Actions 每 5 分鐘讀取香港天文台的 `warnsum` 開放數據，並更新 `OTHER/cover.png`。排程由第 1 分鐘開始（1、6、11…），避開每小時正點較繁忙的時段。

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

如果同時有多個訊號，會選擇優先級較高的圖案。動作為 `CANCEL` 的訊號不會被視為生效。

工作流程檔案：`.github/workflows/weather-cover.yml`
