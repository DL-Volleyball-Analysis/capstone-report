# Capstone Report | 專題報告

LaTeX source files for the senior capstone project report.

專題報告的 LaTeX 原始檔案。

[![Website](https://img.shields.io/badge/Website-VolleyVision%20AI-0033A0)](https://dl-volleyball-analysis.github.io/volleyvision-website/)
[![Canva](https://img.shields.io/badge/Canva-Presentation-00C4CC)](https://www.canva.com/design/DAG7EZ2BhWw/txwh6VE12fYEakm5bF2sdg/view)

---

## Title | 標題

**基於深度學習的排球比賽分析系統**  
*Volleyball Match Analysis System Based on Deep Learning*

## Contents | 內容

- `report_zh.tex` - Main report (Chinese) | 主報告（中文）
- `report.tex` - English version | 英文版本
- `image/` - Figures and diagrams | 圖表
- `compile.sh` - Compilation script | 編譯腳本

## Build | 編譯

```bash
# Using XeLaTeX (recommended for Chinese)
xelatex report_zh.tex
xelatex report_zh.tex  # Run twice for TOC

# Or use the script
./compile.sh
```

## Report Structure | 報告結構

1. Introduction | 緒論
2. Literature Review | 文獻探討
3. Methodology | 研究方法
4. Deep Learning Models | 深度學習模型架構
5. System Implementation | 系統實現
6. Software Engineering | 軟體工程實踐
7. Experimental Results | 實驗結果
8. Discussion | 討論
9. Conclusion | 結論

## Key Results | 主要成果

| Module | Result | Evidence |
|--------|--------|----------|
| Action Recognition (YOLOv11m) | mAP@0.5 0.945, mAP@0.5:0.95 0.755 | validation split, training log |
| Ball Tracking (VballNet) | not measured against labels | — |
| Player Tracking (YOLOv8 + Norfair) | not measured against labels | — |

**Revision (October 2026):** numbers without a measurement record were removed from both reports
(scene-wise ball accuracy, player-tracking consistency, jersey OCR rate, comparisons with YOLOv8,
TrackNet and commercial systems, timing and memory figures), and the action-recognition figures were
corrected to the training log. The graded version is kept under the
[`capstone-final`](https://github.com/DL-Volleyball-Analysis/capstone-report/tree/capstone-final) tag.
Ongoing work: [volleyball-analysis](https://github.com/DL-Volleyball-Analysis/volleyball-analysis).

## Requirements | 需求

- TeX Live 2023+ or MacTeX
- XeLaTeX (for Chinese fonts)
- Required packages: ctex, tikz, listings, graphicx

---

## Related Projects | 相關專案

| Project | Description |
|---------|-------------|
| [volleyvision-website](https://github.com/DL-Volleyball-Analysis/volleyvision-website) | Landing page website |
| [volleyball-analysis](https://github.com/DL-Volleyball-Analysis/volleyball-analysis) | current system (code, results, web app) |
| [capstone-webapp](https://github.com/DL-Volleyball-Analysis/capstone-webapp) | capstone web application (archived) |
| [capstone-court-detection](https://github.com/DL-Volleyball-Analysis/capstone-court-detection) | capstone court and ball landing (archived) |
| [capstone-action-recognition](https://github.com/DL-Volleyball-Analysis/capstone-action-recognition) | capstone action recognition training (archived) |

---

*Part of [DL-Volleyball-Analysis](https://github.com/DL-Volleyball-Analysis) - Senior Capstone Project*

*National Taiwan Ocean University - Department of Computer Science*
