@echo off
pandoc main.tex -t markdown -o main.md --bibliography=references.bib
REM can also use --reference to provide a reference word style format