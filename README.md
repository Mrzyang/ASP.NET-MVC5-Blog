>2017.11.20 
>鉴于本学习学习的asp.net，及时写一个小项目练练手。
##### 项目开发环境以及相关技术

 - 操作系统: windows10
 - IDE: visual studio
 - .NET版本：4.6
 - 语言：C#
 - 框架：asp.net MVC 5
 - ORM：EF6
 - 前端：视图脚本采用.cshtml ---基于c#的razor
              弹层：layer.js
              分页：PageList插件
#####  演示地址
前台： http://asp.zyang.top   后台:  http://asp.zyang.top/admin    账号和密码都是： admin。
服务器已过期，没办法，学生党续费不起，所以下载后，把域名改为localhost即可，即：
前台:   localhost 后台:  localhost/admin。路由映射不变，注意用里面的sql脚本生成数据表，并配置web.config的链接字符串，我的链接字符串为云服务器上的sql server 2008。
>源码下载链接：链接: https://pan.baidu.com/s/1gfhFA5H 密码: 7pwq
github地址：https://github.com/Mrzyang/ASP.NET-MVC5-Blog
##### 预览效果
![这里写图片描述](https://img-blog.csdn.net/20180403003548802?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
##### 开发流程
``设计数据表->根据数据表生成上下文和模型类->分别创建前后台的Layout页->创建业务所需的控制器->实现方法和添加视图.``
##### 具体流程如下
>第一步：设计数据表

 - admin 管理员表
 ![这里写图片描述](https://img-blog.csdn.net/20180403005419330?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
 

 - cate 分类表
![这里写图片描述](https://img-blog.csdn.net/2018040300550316?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
        

 - link  友情链接表
 ![这里写图片描述](https://img-blog.csdn.net/20180403005552219?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

 - article   文章表
 ![这里写图片描述](https://img-blog.csdn.net/20180403005640908?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
>第二步：根据数据表生成上下文和模型类

![这里写图片描述](https://img-blog.csdn.net/20180403005754654?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

>第三步:分别创建前后台的Layout页

![这里写图片描述](https://img-blog.csdn.net/20180403005914154?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

>第四步:创建业务所需的控制器

![这里写图片描述](https://img-blog.csdn.net/20180403005941481?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
>第五步：实现方法和添加视图.

方法具体实现，有兴趣的同学可以下载我的代码看看。。。

##### 相关技术
``本人菜鸡一个，谈不上技术啦，暂且这么说吧 ``

 

 **1.ajax提交**:本项目中大部分表单都是采用的jquery ajax提交方式，交互性好。以Login为例。
``View： Admin/login.cshtml``
```
@{
    Layout = null;
}
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台登录</title>
    <link href="~/Assets/BackEnd/css/admin_login.css" rel="stylesheet" type="text/css" />
    <script src="~/Assets/BackEnd/js/jquery-3.2.1.js"></script>
    <script src="~/Assets/BackEnd/js/layer.js"></script>
    <link href="~/Assets/BackEnd/css/layer.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $("#btn-submit").click(function () {
                if (!$('#user').val()) {
                    alert("请输入用户名！");
                    return;
                }
                if (!$('#pwd').val()) {
                    alert("请输入密码！");
                }
                else {
                    $.ajax({
                        type: "post",
                        url: "CkeckLogin",
                        data: $("#form-login").serialize(),
                        dataType: "json",
                        success: function (msg) {
                            if (msg.status == 1) {
                                layer.msg(msg.data);
                                window.setTimeout("window.location.href='Info'", 1000); 
                            } else {
                                layer.msg(msg.data);
                            }
                        }
                    });
                }
            });
        });
    </script>
</head>
<body>
    <div class="admin_login_wrap">
        <h1>后台管理</h1>
        <div class="adming_login_border">
            <div class="admin_input">
                <form id="form-login">
                    <ul class="admin_items">
                        <li>
                            <label for="user">用户名：</label>
                            <input type="text" name="username" value="" id="user" size="35" class="admin_input_style" />
                        </li>
                        <li>
                            <label for="pwd">密码：</label>
                            <input type="password" name="password" value="" id="pwd" size="35" class="admin_input_style" />
                        </li>
                        <li>
                            <button type="button" tabindex="3" value="提交" class="btn btn-primary" id="btn-submit">登录</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
```
`` Controller: Admin/Login``
```
public JsonResult CkeckLogin(string username, string password)    //处理登录验证的方法  Admin/CkeckLogin
   {
       var result = from u in dbContext.admin
                    where u.username == username && u.password == password
                    select u;
       if (result.Count() > 0)
       {
           Session["username"] = username;
           return Json(new { status = 1, data = "登录成功！" });
       }
       else
       {
           return Json(new { status = 0, data = "登录失败！" });
       }
   }
```
**2.百度ueditor**-富文本编辑器
**注 意**：
1.引入的两个js文件一定要注意``先后顺序``。``config.js要在all.js前面``，否则显示不出来。
2.``JavaScript函数的参数不能是razor变量``，这样是不可识别的，比如修改操作，要获取数据库中
3.的文章内容并显示到富文本编辑器中，可以用一个``<p hidden>@a.Content</p>``,然后ueditor获取``<p>``标签内的text，``$("p").text();``代码部署到云服务器上时，要给予权限，否则上传图片失败。
 **3.bootstrap**:这个就不必解释了，后端程序猿开发前端，懒人必备 。嘻嘻~
 
![这里写图片描述](https://img-blog.csdn.net/20180403012639999?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzMyMzg4OTc3/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

##### 开发过程中遇到的问题：

 - 前台布局：
　　　　前台主页(home/index),既需要循环遍历所有的文章并且分页，而且又要遍历出所有的分类，最新文章，友情链接。但是一个视图页只能@model一次，也就是通过集体在这个index页中遍历只能传一个list.有一种方法是Tuple，通过这种方法可以实现引入多个模型，但是相对比较繁琐。这里，我使用部分视图(PartialView)：``这两部分分别放在一个PatialView里面，然后通过助手函数@Html.Action(“方法名”,”控制器名调用”``
```
<div class="topbar">
       <div class="inner">
           <ul class="nav">
               <li id="menu-item-180" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-180">
                   @Html.ActionLink("首页", "Index", "Home")
               </li>
                   @Html.Action("showCates", "Home")    //展示所有分类，调用Home控制器下的showCates方法;
           </ul>
       </div>
   </div>
```
```
public PartialViewResult showCates()   //Home控制器下的showCates方法
    {
        var result = (from c in dbContext.cate where c.catname != "未分类" select c).ToList<cate>();
        return PartialView(result);
    }
```
```
@model IEnumerable<MyBlog.Models.cate>   //showCates的(patial)视图
    @foreach (var c in Model)
    {
        <li id="menu-item-180" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-180">
            @Html.ActionLink(c.catname, "ArticlesOfCate", "Home", new { id =c.id }, new {})
        </li>
    }
```
作者：Mrzyang  <br>
QQ：846965599  <br>
欢迎学习交流！ <br>

作者：Mrzyang  <br>
QQ：846965599  <br>
欢迎学习交流！ <br>
