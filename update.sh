#!/bin/bash
# dpkg-scanpackages -m ./debs > ./Packages
# bzip2 -fks ./Packages

# echo "生成成功！"


echo "搜索.DS_Store文件并刪除它們"
find ./ -iname ".DS_Store" -exec rm {}  \;
echo ".DS_Store 文件已刪除"
echo "开始重新压缩deb"
dpkg-scanpackages -m . /dev/null >Packages
echo "完成压缩deb"
rm ./Packages.bz2
echo "刪除Paackages.bz2"
bzip2 -fks Packages
echo "重新产生Paackages.bz2完成"