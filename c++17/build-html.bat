@echo off
pandoc --css=styles.css -f markdown_github+pipe_tables -t html -o iterator-facade-proposal.temp iterator-facade-proposal.md
sed "s:%%!{:<em>:g;s:}!%%:</em>:g" <iterator-facade-proposal.temp >iterator-facade-proposal-1.temp
html_section_numbers --initial=24.8.8 <iterator-facade-proposal-1.temp >iterator-facade-proposal-2.temp
html_toc -x iterator-facade-proposal-2.temp toc.html
html_include_files iterator-facade-proposal-2.temp iterator-facade-proposal.html
iterator-facade-proposal.html
