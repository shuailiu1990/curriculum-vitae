tex=latexmk
#pdf_browser=/mnt/c/Program\ Files\ \(x86\)/Foxit\ Software/Foxit\ Reader/Foxit\ PDF\ Reader/FoxitPDFReader.exe#evince
pdf_browser=evince
target1=recommendation-letter.tex
target2=recommendation-letter.pdf
main:
	$(tex) -pdf -bibtex $(target1)  # -pdf -bibtex分别是将.tex编译为pdf文件和处理参考文献
	$(pdf_browser) $(target2)       # 浏览pdf文件

clean:
	$(tex) -CA # 删除编译后产生的无用文件
	-rm *.bbl  # 删除后缀为.bbl的所有文件 
	-rm *.xml  # 删除.xml文件
