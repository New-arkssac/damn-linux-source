#!/bin/bash
test(){
	case "$1" in
		1)
		ustc[0]="deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib" 
		ustc[1]="deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib"
		for i in {0..1}; do
			echo "${ustc[$i]}" >> 2.txt
		done
		;;
		2)
		aliyun[0]="deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib"
		aliyun[1]="deb-src http://mirrors.aliyun.com/kali kali-rolling main non-free contrib"
		for i in {0..1}; do
			echo "${aliyun[$i]}" >> 2.txt
		done
		;;
		3)
		qinghua[0]="deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free"
		qinghua[1]="deb-src https://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free"
		for i in {0..1}; do
			echo "${qinghua[$i]}" >> 2.txt
		done
		;;
		4)
		zhejiang[0]="deb http://mirrors.zju.edu.cn/kali kali-rolling main contrib non-free"
		zhejiang[1]="deb-src http://mirrors.zju.edu.cn/kali kali-rolling main contrib non-free"
		for i in {0..1}; do
			echo "${zhejiang[$i]}" >> 2.txt
		done
		;;
		5)
		huawei[0]="deb https://mirrors.huaweicloud.com/kali kali-rolling main non-free contrib"
		huawei[1]="deb-src https://mirrors.huaweicloud.com/kali kali-rolling main non-free contrib"
		for i in {0..1}; do
			echo "${huawei[$i]}" >> 2.txt
		done
		;;
	esac
	
}
test "$1"
