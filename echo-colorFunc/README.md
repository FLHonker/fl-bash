# linux echo 让你的脚本输出加上颜色

### 1. echo 具有给输出的字符加颜色的功能，格式如下：

格式:
> echo -e "\033[字背景颜色;字体颜色;ANSI控制码m字符串\033[0m" 

-e选项是让echo能够识别转义字符，否则不能显示颜色，先上个格式相关的例子

[例1]:

> echo -e "\033[41;36m something here \033[0m" 

或者：
> echo -e "\033[36;41m something here \033[0m"

其中41的位置代表底色为红色, 36的位置是代表字的颜色为深绿色（在底色为红色下看不出来）,41和36的位置交换也没有关系。

[例2]：

> echo -e "\033[41;36;1m something here \033[0m"

或者：
> echo -e "\033[36;41;1m something here \033[0m"
该格式加了“1m”参数，表示“设置高亮度”，从图中可以看出亮度不同，例1和例2格式的结尾都有“0m”，表示“关闭所有属性”，如果不设置0m，那么接下来的输出都会延续上个输出属性。

### 2. 参数及对应的颜色

制成表格：

![](https://res.cloudinary.com/flhonker/image/upload/v1525858224/githubio/fl-bash/echo-color.png)

### 3. 通用函数bash
```bash
#!/bin/bash

function _color_()
{
    case "$1" in
        red)    nn="31";;
        green)  nn="32";;
        yellow) nn="33";;
        blue)   nn="34";;
        purple) nn="35";;
        cyan)   nn="36";;
    esac
    ff=""
    case "$2" in
        bold)   ff=";1";;
        bright) ff=";2";;
        uscore) ff=";4";;
        blink)  ff=";5";;
        invert) ff=";7";;
    esac
    color_begin=`echo -e -n "\033[${nn}${ff}m"`
    color_end=`echo -e -n "\033[0m"`
    while read line; do
        echo "${color_begin}${line}${color_end}"
    done
}
#__main__  test
echo "this is a test" | _color_ blue bold
```

