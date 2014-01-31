copy /y draft.html draft.bak
html_section_numbers <draft.html >new-draft.html
copy /y new-draft.html draft.html
toc -x draft.html contents.html
echo Remember to hand-merge contents.html into draft.html
