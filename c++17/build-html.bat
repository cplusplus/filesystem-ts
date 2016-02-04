@echo off
pandoc -f markdown_github -t html -o c++17-proposal.temp c++17-proposal.md
html_include_files c++17-proposal.temp c++17-proposal.html
c++17-proposal.html
