#!/bin/bash

function welcome(){
	echo 'please input your name !'
	read your_name
	echo "your name is : $your_name ? [yes/no]"	
	read var
	
	if [[ $var == "yes" ]] 
	then
		echo "welcome to here , $your_name"
	elif [[ $var == "no" ]] 
	then
		echo "who are you ?"
		welcome
	else
		echo "what ?"
		welcome
	fi
}
welcome


#	参数处理		说明
#	$#		传递到脚本的参数个数
#	$*		以一个单字符串显示所有向脚本传递的参数
#	$$		脚本运行的当前进程ID号
#	$!		后台运行的最后一个进程的ID号
#	$@		与$*相同，但是使用时加引号，并在引号中返回每个参数。
#	$-		显示Shell使用的当前选项，与set命令功能相同。
#	$?		显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
