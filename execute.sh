#!/bin/bash
#mv /etc/apt/sources.list /etc/apt/sources.list.bak || echo "备份后的文件为sources.list.bak"
#touch /etc/apt/sources.list
debian() {
    num=$1
    if [[ ! "$num" =~ ^[1-5]?$ ]]; then
        exit
    fi
    bash 2.sh "$num"
    apt update
    apt full-ugrade
    while :; do
        echo -e "\033[36m1. 安装软件\033[0m"
        echo -e "\033[36m2. 搜索要安装的软件\033[0m"
        echo -e "\033[36m3. 删除软件\033[0m"
        read -r -p "请输入要序号(输入exit退出程序):" number
        if [ "$number" = 1 ]; then
            read -r -p "请输入要安装的软件名称(输入exit退出程序):" package
            if [ "$package" = "exit" ]; then
                exit
            fi
            apt install "$package"
        elif [ "$number" = 2 ]; then
            read -r -p "请输入要安装的软件名称(输入exit退出程序):" package
            if [ "$package" = "exit" ]; then
                exit
            fi
            apt search "$package"
        elif [ "$number" = 3 ]; then
            echo -e "\033[36m1. 只删除软件\033[0m"
            echo -e "\033[36m2. 删除软件包括软件的依赖\033[0m"
            if [ "$package" = 1 ]; then
                read -r -p "请输入要删除的软件名称(输入其他退出程序):" package
                if [ "$package" = "exit" ]; then
                    exit
                fi
                apt remove "$package"
            elif [ "$package" = 2 ]; then
                read -r -p "请输入要删除的软件名称(输入exit退出程序):" package
                if test "$package" = "exit"; then
                    exit
                fi
                apt autoremove "$package"
            else
                exit
            fi
        elif test "$number" = "exit"; then
            echo "程序已退出"
            exit
        fi
    done
}
debian "$1"
