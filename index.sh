#!/usr/bin/env bash

# 使用 sed 进行转换
sed -E '
1,3s/^[[:space:]]*#/!/
4,$ s/^([^[:space:]]+).*$/|| \1^/
' ./content-farm-terminator/src/blocklist/scam-sites.txt >scam-sites.txt
