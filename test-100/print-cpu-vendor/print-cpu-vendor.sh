#!/bin/sh

# 功能：打印cpu厂商名称

awk '/vendor_id/{print $3}' /proc/cpuinfo | uniq
