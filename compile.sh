#!/bin/bash
# 自動編譯中文報告腳本
# 使用方式：./compile.sh 或 bash compile.sh

cd "$(dirname "$0")"

echo "=========================================="
echo "編譯中文專題報告 (report_zh.tex)"
echo "=========================================="

# 檢查 XeLaTeX
if ! command -v xelatex &> /dev/null; then
    echo "❌ 錯誤: 未找到 XeLaTeX"
    echo "請安裝 TeX Live 或 MacTeX"
    exit 1
fi

echo "✓ 找到 XeLaTeX"

# 清理舊的編譯文件（保留 PDF）
echo ""
echo "清理舊的輔助文件..."
rm -f report_zh.aux report_zh.log report_zh.out report_zh.toc report_zh.lof report_zh.lot report_zh.bbl report_zh.blg report_zh.idx report_zh.ind report_zh.ilg report_zh.fdb_latexmk report_zh.fls report_zh.synctex.gz report_zh.nav report_zh.snm report_zh.vrb report_zh.alg report_zh.loa report_zh.bcf report_zh.run.xml report_zh.acn report_zh.acr report_zh.glg report_zh.glo report_zh.gls report_zh.ist report_zh.figlist report_zh.makefile report_zh.xdy

# 第一次編譯
echo ""
echo "第一次編譯（生成目錄和引用）..."
xelatex -interaction=nonstopmode report_zh.tex > /dev/null 2>&1
compile_exit_code=$?

# 檢查 PDF 是否生成（即使有警告也可能成功）
if [ ! -f "report_zh.pdf" ]; then
    echo "❌ 第一次編譯失敗！PDF 文件未生成"
    echo "顯示錯誤訊息："
    xelatex -interaction=nonstopmode report_zh.tex | tail -30
    exit 1
elif [ $compile_exit_code -ne 0 ]; then
    echo "⚠️  第一次編譯有警告，但 PDF 已生成，繼續進行..."
fi

# 第二次編譯
echo "第二次編譯（更新引用）..."
xelatex -interaction=nonstopmode report_zh.tex > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "⚠️  第二次編譯有警告，但繼續進行..."
fi

# 第三次編譯（確保所有引用正確）
echo "第三次編譯（確保所有引用正確）..."
xelatex -interaction=nonstopmode report_zh.tex > /dev/null 2>&1

# 檢查 PDF 是否生成
if [ -f "report_zh.pdf" ]; then
    echo ""
    echo "=========================================="
    echo "✓ 編譯成功！"
    echo "PDF 文件: $(pwd)/report_zh.pdf"
    echo "=========================================="
    
    # 顯示文件大小
    file_size=$(du -h report_zh.pdf | cut -f1)
    echo "文件大小: $file_size"
    
    # 編譯完成後清理輔助文件
    echo ""
    echo "清理編譯生成的輔助文件..."
    rm -f report_zh.aux report_zh.log report_zh.out report_zh.toc report_zh.lof report_zh.lot report_zh.bbl report_zh.blg report_zh.idx report_zh.ind report_zh.ilg report_zh.fdb_latexmk report_zh.fls report_zh.synctex.gz report_zh.nav report_zh.snm report_zh.vrb report_zh.alg report_zh.loa report_zh.bcf report_zh.run.xml report_zh.acn report_zh.acr report_zh.glg report_zh.glo report_zh.gls report_zh.ist report_zh.figlist report_zh.makefile report_zh.xdy
    
    # 檢查是否還有輔助文件（排除 .tex, .pdf, .sh）
    remaining_files=$(ls report_zh.* 2>/dev/null | grep -vE '\.(tex|pdf|sh)$' | wc -l | tr -d ' ')
    if [ "$remaining_files" -gt 0 ]; then
        echo "⚠️  仍有 $remaining_files 個輔助文件未清理："
        ls report_zh.* 2>/dev/null | grep -vE '\.(tex|pdf|sh)$'
    else
        echo "✓ 所有輔助文件已清理"
    fi
    
    # 在 macOS 上詢問是否打開 PDF
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo ""
        read -p "是否要打開 PDF 文件？(y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            open report_zh.pdf
        fi
    fi
else
    echo ""
    echo "❌ 錯誤: PDF 文件未生成"
    exit 1
fi


