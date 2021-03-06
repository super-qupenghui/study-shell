#!/bin/bash

#printf 命令模仿 C 程序库（library）里的 printf() 程序。
#标准所定义，因此使用printf的脚本比使用echo移植性好。
#printf 使用引用文本或空格分隔的参数，外面可以在printf中使用格式化字符串，还可以制定字符串的宽度、左右对齐方式等。
#默认printf不会像 echo 自动添加换行符，我们可以手动添加 \n。
#printf 命令的语法：
#printf  format-string  [arguments...]

printf "Hello,redHat"
printf "\n"
printf "Hello,redHat\n"

printf "%-10s %-9s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 

#%s %c %d %f都是格式替代符
#%-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），任何字符都会被显示在10个字符宽的字符内，
#%-4.2f 指格式化为小数，其中.2指保留2位小数。

#printf的转义序列
#	序列		说明
#	\a		警告字符，通常为ASCII的BEL字符
#	\b		后退
#	\c		抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
#	\f		换页（formfeed）
#	\n		换行
#	\r		回车（Carriage return）
#	\t		水平制表符
#	\v		垂直制表符
#	\\		一个字面上的反斜杠字符
#	\ddd	表示1到3位数八进制值的字符。仅在格式字符串中有效
#	\0ddd	表示1到3位的八进制值字符

printf "hello \a"
printf "hello \b "
printf "hello \f "
