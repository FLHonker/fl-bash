# 为自己的github pages博客写的自动发布脚本

由于github pages需要结合Ruby和jekyll使用，写好markdown博客后需要bundle exec jekyll 生成一下网页数据，然后再执行git命令，add ., commit, push，才能在线访问预览自己的[博客主页](flhonker.github.io)。

出于程序员的懒惰性，自己写了一个bash脚本帮助我完成这一切。

## 使用方法：

您可以根据我[`github-blog-publish.sh`](./github-blog-publish.sh)文件里的注释提示，把web根目录路径换成您自己的博客目录，运行以下命令：
> ./github-blog-publish.sh {commit} [-u]

其中，`{commit}`是您为当前的git commit加的标注，这个必须要有，因为git命令要求的，没有的话无法完成提交;
`-u`：是个可选参数，如果您更改了Gemfile文件需要`bundle update`就加上这个参数。

欢迎大家关注我的博客：<https://flhonker.github.io>

## 建议升级Hugo版Blog

现在Frank已经弃用Jekyll版的Blog，因为部署繁琐而且需要解决很多依赖，强烈建议将您的Blog升级为Hugo版，详情请关注[flhonker-hugo](https://github.com/FLHonker/flhonker-hugo)。同样支持意一键发布，而且更美观、更丰富、速度更快！