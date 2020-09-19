#!/bin/bash
# dpkg-scanpackages -m ./debs > ./Packages
# bzip2 -fks ./Packages

# echo "生成成功！"


echo "搜索.DS_Store文件並顯示並刪除它們"
find ./ -iname ".DS_Store" -exec rm {}  \;
echo ".DS_Store 文件已刪除"
echo "開始重新壓縮deb"
dpkg-scanpackages -m . /dev/null >Packages
echo "完成壓縮deb"
rm ./Packages.bz2
echo "刪除Paackages.bz2"
bzip2 -fks Packages
echo "重新產生Paackages.bz2完成"