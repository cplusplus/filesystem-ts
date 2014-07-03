sed "s~<ins>~~g" working-draft.html >working-draft-diffless.html
sed -i "s~</ins>~~g" working-draft-diffless.html
sed -i "s~<del>.*</del>~~g" working-draft-diffless.html
chg working-draft-diffless.html "\n" "\r\n"
grep -n "<del>" working-draft-diffless.html
