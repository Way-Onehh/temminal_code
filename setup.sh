install_item()
{
    if command -v $1 &> /dev/null 
    then
        echo "${1} is installed"
    else 
        echo -e "${1} isnt installed\n start installing"
        sudo apt install -y $1 
    fi
}

# 组建清单
declare -a request_list=(tmux vim nnn)  
declare -a request_conf=(.tmux.conf .vimrc)
# 安装组件
for item in ${request_list[@]} 
do
   install_item $item
done


# 复制配置文件到用户主目录
for conf in ${request_conf[@]}
do
    if [ -e $conf ] 
    then
        echo "已经存在 ${conf}"
    else
        cp $conf ~
        echo "已复制 ${conf} 到 ~"
    fi
done
