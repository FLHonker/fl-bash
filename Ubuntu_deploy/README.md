# 史上最伟大Ubuntu14.04+ 开发办公环境一键部署方案

Frank在历经3年的Linux开发和运维后，总结了Ubuntu版本下常用的易安装或者不易安装的好用的、好玩的、实用的、强力推荐的软件包和插件的安装步骤，并将其整合为一键化脚本，方便广大Linux爱好者和开发者在新装或者重装Ubuntu系统后一系列繁琐的环境搭建任务，以有助于把宝贵的时间用在开发和研究上面，避免一些不必要的麻烦。

**需要说明的是：** 本工具是Frank根据同行喜好和需求整合的一些常用软件包和插件的安装部署方案，开发环境适用于C\/C++、Python2、Python3、OpenCV3.4.x、Java1.8、Go1.10、Octave等，如果不太符合您的需要，可以自行进行选择和裁剪。另外，Frank一直以来实用Ubuntu版本，从`14.04LTS`一直用用到`18.04LTS`，对于更低版本的Ubuntu或者其他的Linux分支可能有些不兼容，请您在确保自己有足够能力解决突发情况的前提下谨慎使用，如出现任何疑问或者难题，可以联系[Frank][1]帮您解决，也希望您有能力的话参与完善该项目为开源社区贡献力量：<frankliu624@gmail.com>。感谢您的使用和支持！

## 使用说明

* 系统要求：Ubuntu14.04及以上， 其他分支的Linux会多多少少有问题，后续优化。
* 适用对象：
  * 计算机相关专业学生、教师
  * Linux爱好者、运维工程师
  * 有Linux实用和开发经验者最佳
  * 科研人员
  * 软件工程师
* 完美服务领域：
  * C\/C++，Java，Go，Python软件开发
  * 使用Python、Octave、caffe等进行深度学习开发和研究
  * 使用OpenCV进行图像处理和计算机视觉
  * git版本控制
  * Linux运维
  * 博客写作

## 涵盖软件和优化方案

1. 双系统启动grub2主题美化：`Griffin-Grub-Remix`。
2. 卸载自带不常用软件包：LibreOffice, unity-webapps-common(Amazon), empathy, brasero, simple-scan, gnome-mahjongg, aisleriot, gnome-mines, gnome-orca, webbrowser-app, gnome-sudoku, onboard, deja-dup, landscape-client-ui-install。
3. 设置右键新建常用模板文件: *.docx, *.xlsx, *.pptx, *.txt, *.md 等。
4. dev命令行工具：git, ssh, g++, cmake, npm 。
5. dev开发环境（C\/C++，Java，Python2，Python3,go,octave为主）: build-essential, python2, python3, pip2, pip3, jdk1.8, go-1.10, PyTorch, numpy, caffe-cpu, turtle 。
6. 办公软件与IDE：Chrome, 网易云音乐, GoLand2018, Eclipse, BaiduPCS-Go, MEGA, uGet, VSCode, WPS, 搜狗输入法。
7. shell命令行优化: oh-my-zsh + fonts + themes 。
8. Frank独家超级Vim： vim-plus-plus 。
9.  SSR科学上网命令行工具： ShadowsocksR Python, ssr-helper
10. wine-QQ 2018解决方案（目前最完美）
11. 安装完成之后的软件包清理工作。

## 注意事项

可能遇到的问题及解决方案:



## 关于和鸣谢




[1]:http://frankliu624.me