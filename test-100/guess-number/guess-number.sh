#!/bin/sh

# 首先利用系统的RANDOM生成随机数
num=$[RANDOM%100+1]

read -p "请猜数字（1-100）：" user_num

echo $user_num | grep [^0-9] > /dev/null

if [ $? -eq 0 ]; then
    echo "输入的数字：$user_num 不规范"
    exit 0
fi

if [ $user_num -ge $num ]; then
    echo "对不起，猜大了,正确的数字为：$num"
elif [ $user_num -eq $num ]; then
    echo "恭喜你，猜中了"
else
    echo "对不起，猜小了,正确的数字为：$num"
fi
