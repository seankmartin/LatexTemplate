@echo off
pandoc main.tex -t docx -o main.docx --bibliography=references.bib
REM can also use --reference to provide a reference word style format