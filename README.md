# Capstone Report | 專題報告

LaTeX source files for the senior capstone project report.

專題報告的 LaTeX 原始檔案。

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

*Part of [DL-Volleyball-Analysis](https://github.com/DL-Volleyball-Analysis) - Senior Capstone Project*

*National Taiwan Ocean University - Department of Computer Science*
