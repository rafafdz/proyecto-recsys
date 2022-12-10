[ -d download/gowalla ] && echo "Already Downloaded" && exit 0

mkdir -p download
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=0BzpKyxX1dqTYRTFVYTd1UG81ZXc" -O download/gowalla.zip && rm -rf /tmp/cookies.txt
unzip download/gowalla.zip -d download