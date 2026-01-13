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

| Module | Performance |
|--------|-------------|
| Ball Tracking | 79.5% accuracy |
| Action Recognition | 94.49% mAP@0.5 |
| Player Tracking | 87.6% consistency |

## Requirements | 需求

- TeX Live 2023+ or MacTeX
- XeLaTeX (for Chinese fonts)
- Required packages: ctex, tikz, listings, graphicx

---

## Related Projects | 相關專案

| Project | Description |
|---------|-------------|
| [volleyvision-website](https://github.com/DL-Volleyball-Analysis/volleyvision-website) | Landing page website |
| [volleyball_analysis_webapp](https://github.com/DL-Volleyball-Analysis/volleyball_analysis_webapp) | Main web application |
| [volleyball-court-detection](https://github.com/DL-Volleyball-Analysis/volleyball-court-detection) | Court detection and ball landing |
| [action-recognition-yolov11](https://github.com/DL-Volleyball-Analysis/action-recognition-yolov11) | Action recognition training |

---

*Part of [DL-Volleyball-Analysis](https://github.com/DL-Volleyball-Analysis) - Senior Capstone Project*

*National Taiwan Ocean University - Department of Computer Science*
