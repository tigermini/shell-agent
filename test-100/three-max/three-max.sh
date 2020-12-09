#!/bin/sh

read -p "请输入第一个数字：" num1
read -p "请输入第二个数字：" num2
read -p "请输入第三个数字：" num3

# 检查输入的数字是否合法
echo $num1 | grep [^0-9]
if [ $? -eq 0 ]; then
    echo "$num1 不是数字"
    exit 0
fi

echo $num2 | grep [^0-9]
if [ $? -eq 0 ]; then
    echo "$num2 不是数字"
    exit 0
fi

echo $num3 | grep [^0-9]
if [ $? -eq 0 ]; then
    echo "$num3 不是数字"
    exit 0
fi


if [ $num1 -ge $num2 ]; then
    max1=$num1
    max2=$num2
else
    max1=$num2
    max2=$num1
fi

if [ $num3 -ge $max1  ]; then
    max3=$max2
    max2=$max1
    max1=$num3
elif [ $num3 -ge $max2 ]; then
    max3=$max2
    max2=$num3
else
    max3=$num3
fi

echo "排序后按从大到小的顺序为：$max1, $max2, $max3"
