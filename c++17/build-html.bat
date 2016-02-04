@echo off
pandoc --standalone --self-contained --css=styles.css --title-prefix="C++17 Filesystem" -f markdown_github -t html -o c++17-proposal.temp c++17-proposal.md
html_include_files c++17-proposal.temp c++17-proposal.html
c++17-proposal.html
