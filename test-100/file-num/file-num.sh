#!/bin/sh

sum=0

read -p "请输入文件夹的绝对路径：" path

if [ ! -d $path ]; then
    echo "输入的$path不是一个文件夹"
    exit -1
fi

cd $path

for i in `ls $path`
do
    if [ -f $i ]; then
        echo $i
        let sum++
    fi
done
echo "$path 中的文件总数为：$sum"
