#!/bin/sh

read -p "请输入一个字符：" input_src

case $input_src in
[a-z]|[A-Z])
    echo "$input_src 是字符"
    ;;
[0-9])
    echo "$input_src 是数字"
    ;;
*)
    echo “$input_src 是其他”
    ;;
esac
