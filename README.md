# dmg-brute
script for simple brute .dmg 

`./brute.sh file.dmg`

Скрипт для перебора НЕБОЛЬШОГО вариантов паролей от .dmg файлов. Например, чтобы вспомнить свой забытый пароль или подобрать пароль от файлов с некоторых торрент-трекеров

UPDATE: лучше воспользоваться JohnRipper

```bash
git clone git@github.com:openwall/john.git
cd john/src
./configure --without-openssl && make
cd ../run
/dmg2john YOUR_IMAGE.dmg > file.txt
./john file.txt -mask='mac-torrent-download.net_[0-9a-z][0-9a-z][0-9a-z]'
```

[via](https://github.com/jimmyadaro/crack-mtd-passwords)


English autotranslate:

A script to brute force a FEW variants of passwords from .dmg files. For example, to remember your forgotten password or to find a password from files from some torrent trackers.


UPDATE: better use JohnRipper

```bash
git clone git@github.com:openwall/john.git
cd john/src
./configure --without-openssl && make
cd ../run
/dmg2john YOUR_IMAGE.dmg > file.txt
./john file.txt -mask='mac-torrent-download.net_[0-9a-z][0-9a-z][0-9a-z]'
```

[via](https://github.com/jimmyadaro/crack-mtd-passwords)
