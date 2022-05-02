/*
 Navicat MySQL Data Transfer

 Source Server         : blog
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 118.89.198.238:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 03/05/2022 01:26:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '正文',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发表时间',
  `hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:非热门 1:热门',
  `hits` int NOT NULL DEFAULT '0' COMMENT '点击量',
  `category_id` int NOT NULL COMMENT '类目编号',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, '玻璃拟态是什么？前端该如何实现', '<p>&nbsp;</p><blockquote><figure class=\"image\"><img src=\"/upload/7b4ed764ac4ce13bc69b56bda3925bbb.png\"></figure></blockquote><p>```html</p><p>&lt;div class=\"card\"&gt;</p><p>&nbsp;&lt;h1&gt;TiKi Platinum&lt;/h1&gt;</p><p>&nbsp;&lt;h2&gt;6228 8076 2232 8768&lt;/h2&gt;</p><p>&nbsp;&lt;h3&gt;van conf banck&lt;/h3&gt;</p><p>&nbsp;&lt;h4&gt;03 / 29&lt;/h4&gt;</p><p>&lt;/div&gt;</p><p>&lt;div class=\"circle\"&gt;&lt;/div&gt;</p><p>&lt;div class=\"rect\"&gt;&lt;/div&gt;</p><p>```</p><p>&nbsp;</p><p>```css</p><p>* {</p><p>&nbsp;margin: 0;</p><p>&nbsp;padding: 0;</p><p>}</p><p>.card {</p><p>&nbsp;color: rgba(255, 255, 255, 0.8);</p><p>&nbsp;position: absolute;</p><p>&nbsp;right: 100px;</p><p>&nbsp;bottom: 100px;</p><p>&nbsp;z-index: 10;</p><p>&nbsp;font-family: sans-serif;</p><p>&nbsp;text-align: center;</p><p>&nbsp;width: 300px;</p><p>&nbsp;height: 500px;</p><p>&nbsp;border-bottom: 1px solid rgba(255, 255, 255, 0.4);</p><p>&nbsp;border-left: 1px solid rgba(255, 255, 255, 0.4);</p><p>&nbsp;background: linear-gradient(</p><p>&nbsp; &nbsp;to top right,</p><p>&nbsp; &nbsp;rgba(90, 149, 207, 0.5),</p><p>&nbsp; &nbsp;rgba(58, 76, 99, 0.8)</p><p>&nbsp;);</p><p>&nbsp;box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),</p><p>&nbsp; &nbsp;-10px 10px 20px rgba(255, 255, 255, 0.1);</p><p>&nbsp;backdrop-filter: blur(6px);</p><p>&nbsp;border-radius: 20px;</p><p>&nbsp;transform: rotate(-15deg);</p><p>}</p><p>h1 {</p><p>&nbsp;margin-top: 50px;</p><p>}</p><p>h2 {</p><p>&nbsp;margin-top: 250px;</p><p>}</p><p>h3,</p><p>h4 {</p><p>&nbsp;padding-left: 60px;</p><p>&nbsp;text-align: left;</p><p>}</p><p>h3 {</p><p>&nbsp;margin-top: 40px;</p><p>&nbsp;text-transform: uppercase;</p><p>}</p><p>h4 {</p><p>&nbsp;margin-top: 10px;</p><p>}</p><p>.circle {</p><p>&nbsp;width: 160px;</p><p>&nbsp;height: 160px;</p><p>&nbsp;position: absolute;</p><p>&nbsp;right: 240px;</p><p>&nbsp;bottom: 20px;</p><p>&nbsp;background: linear-gradient(to top left, rgb(135 116 249), rgb(75 162 237));</p><p>&nbsp;border-radius: 80px;</p><p>}</p><p>.rect {</p><p>&nbsp;width: 160px;</p><p>&nbsp;height: 160px;</p><p>&nbsp;position: absolute;</p><p>&nbsp;right: 110px;</p><p>&nbsp;bottom: 520px;</p><p>&nbsp;background: linear-gradient(</p><p>&nbsp; &nbsp;to top left,</p><p>&nbsp; &nbsp;rgba(135, 116, 249, 0.9),</p><p>&nbsp; &nbsp;rgba(75, 162, 237, 0.9)</p><p>&nbsp;);</p><p>&nbsp;border-radius: 20px;</p><p>}</p><p>body {</p><p>&nbsp;height: 100vh;</p><p>&nbsp;background: radial-gradient(</p><p>&nbsp; &nbsp; &nbsp;circle at 60% 90%,</p><p>&nbsp; &nbsp; &nbsp;rgba(46, 103, 161, 1),</p><p>&nbsp; &nbsp; &nbsp;transparent 60%</p><p>&nbsp; &nbsp;),</p><p>&nbsp; &nbsp;radial-gradient(</p><p>&nbsp; &nbsp; &nbsp;circle at 20px 20px,</p><p>&nbsp; &nbsp; &nbsp;rgba(46, 103, 161, 0.8),</p><p>&nbsp; &nbsp; &nbsp;transparent 25%</p><p>&nbsp; &nbsp;),</p><p>&nbsp; &nbsp;#182336;</p><p>}</p><p>&nbsp;</p><p>```</p>', '2022-05-03 00:36:14', 0, 100, 1, '/upload/e854568e99debcb7acff33e0235d9e04.png');
INSERT INTO `article` VALUES (2, 'CSS3', '<ul><li><a href=\"#引入样式的方式\">引入样式的方式</a></li><li><a href=\"#常用选择器\">常用选择器</a><ul><li><a href=\"#基础选择器\">基础选择器</a></li><li><a href=\"#复合选择器\">复合选择器</a></li><li><a href=\"#属性选择器\">属性选择器</a></li><li><a href=\"#伪类选择器\">伪类选择器</a></li></ul></li><li><a href=\"#常用内容样式\">常用内容样式</a><ul><li><a href=\"#文本\">文本</a></li><li><a href=\"#盒子\">盒子</a></li><li><a href=\"#背景\">背景</a></li><li><a href=\"#列表\">列表</a></li><li><a href=\"#表格\">表格</a></li></ul></li><li><a href=\"#常用布局样式\">常用布局样式</a><ul><li><a href=\"#边距\">边距</a></li><li><a href=\"#浮动\">浮动</a></li><li><a href=\"#定位\">定位</a></li><li><a href=\"#动态盒子\">动态盒子</a></li></ul></li><li><a href=\"#常用动画样式\">常用动画样式</a><ul><li><a href=\"#变形\">变形</a></li><li><a href=\"#过度\">过度</a></li><li><a href=\"#自定义动画\">自定义动画</a></li></ul></li><li><a href=\"#FAQ\">FAQ</a><ul><li><a href=\"#如何解决样式表中的中文乱码\">如何解决样式表中的中文乱码</a></li><li><a href=\"#如何让块级元素网页水平居中\">如何让块级元素网页水平居中</a></li><li><a href=\"#如何让文本垂直居中\">如何让文本垂直居中</a></li><li><a href=\"#取消图片下方的空白行\">取消图片下方的空白行</a></li><li><a href=\"#图文混排时，图文如何垂直居中\">图文混排时，图文如何垂直居中</a></li><li><a href=\"#隔行变色\">隔行变色</a></li><li><a href=\"#元素块在页面居中（水平和垂直）\">元素块在页面居中（水平和垂直）</a></li></ul></li></ul>', '2022-05-03 00:37:45', 1, 123, 1, '/upload/79cda6e45fed2b224881bcee5959db05.png');
INSERT INTO `article` VALUES (3, 'HTML5', '<ul><li><a href=\"#编辑器 VSCode\">编辑器 VSCode</a><ul><li><a href=\"#常用插件\">常用插件</a></li><li><a href=\"#常用快捷键\">常用快捷键</a></li></ul></li><li><a href=\"#常用 HTML 标签\">常用 HTML 标签</a><ul><li><a href=\"#基础结构标签\">基础结构标签</a></li><li><a href=\"#文档标签\">文档标签</a><ul><li><a href=\"#基础内容标签\">基础内容标签</a></li><li><a href=\"#风格样式标签\">风格样式标签</a></li><li><a href=\"#列表\">列表</a></li><li><a href=\"#表格\">表格</a></li><li>多媒体标签</li><li><a href=\"#超链接\">超链接</a></li></ul></li><li><a href=\"#分区元素\">分区元素</a><ul><li><a href=\"#内联框架\">内联框架</a></li><li><a href=\"#通用分区\">通用分区</a></li><li><a href=\"#页面分区\">页面分区</a></li><li><a href=\"#内容分区\">内容分区</a></li></ul></li><li><a href=\"#模板标签\">模板标签</a></li><li><a href=\"#表单标签\">表单标签</a></li></ul></li><li><a href=\"#常用实体\">常用实体</a></li><li><a href=\"#带默认风格的标签\">带默认风格的标签</a></li><li><a href=\"#FAQ\">FAQ</a></li></ul>', '2022-05-03 00:37:01', 1, 234, 1, '/upload/a6c61ef59c51e376db8f710a31b66f10.webp');
INSERT INTO `article` VALUES (4, 'PHP', '<ul><li><a href=\"#PHP7 基础语法\">PHP7 基础语法</a><ul><li><a href=\"#开发过程\">开发过程</a></li><li><a href=\"#PHP文件\">PHP文件</a></li><li><a href=\"#PHP标记\">PHP标记</a></li><li><a href=\"#PHP指令分隔符\">PHP指令分隔符</a></li><li><a href=\"#使用echo向网页中输出内容\">使用echo向网页中输出内容</a></li><li><a href=\"#PHP注释\">PHP注释</a></li></ul></li><li><a href=\"#PHP7 标量类型与NULL\">PHP7 标量类型与NULL</a><ul><li><a href=\"#boolean（布尔型）\">boolean（布尔型）</a></li><li><a href=\"#integer（整型）\">integer（整型）</a></li><li><a href=\"#float（浮点型)\">float（浮点型)</a></li><li><a href=\"#string（字符串）\">string（字符串）</a></li><li><a href=\"#NULL类型\">NULL类型</a></li></ul></li><li><a href=\"#PHP7 变量\">PHP7 变量</a><ul><li><a href=\"#变量的命名规则\">变量的命名规则</a></li><li><a href=\"#创建变量\">创建变量</a></li><li><a href=\"#使用变量\">使用变量</a></li><li><a href=\"#删除变量\">删除变量</a></li><li><a href=\"#检测变量是否存在\">检测变量是否存在</a></li><li><a href=\"#显示变量的类型及值\">显示变量的类型及值</a></li><li><a href=\"#检测变量类型\">检测变量类型</a></li><li><a href=\"#强制类型转换\">强制类型转换</a></li><li><a href=\"#引用赋值和传值赋值\">引用赋值和传值赋值</a></li></ul></li><li><a href=\"#PHP7 常量\">PHP7 常量</a><ul><li><a href=\"#常量的定义与使用\">常量的定义与使用</a></li><li><a href=\"#魔术常量\">魔术常量</a></li></ul></li><li><a href=\"#PHP7 运算符\">PHP7 运算符</a><ul><li><a href=\"#字符串运算符\">字符串运算符</a></li><li><a href=\"#算术运算符\">算术运算符</a></li><li><a href=\"#递增／递减运算符\">递增／递减运算符</a></li><li><a href=\"#赋值运算符\">赋值运算符</a></li><li><a href=\"#比较运算符\">比较运算符</a></li><li><a href=\"#三元运算符\">三元运算符</a></li><li><a href=\"#逻辑运算符\">逻辑运算符</a></li></ul></li><li><a href=\"#PHP7 数组\">PHP7 数组</a><ul><li><a href=\"#数组简介\">数组简介</a></li><li><a href=\"#创建数组\">创建数组</a></li><li><a href=\"#访问元素\">访问元素</a></li><li><a href=\"#修改元素\">修改元素</a></li><li><a href=\"#追加元素\">追加元素</a></li><li><a href=\"#删除元素\">删除元素</a></li><li><a href=\"#删除数组\">删除数组</a></li></ul></li><li><a href=\"#PHP7 分支流程控制语句\">PHP7 分支流程控制语句</a><ul><li><a href=\"#if\">if</a></li><li><a href=\"#if-else\">if-else</a></li><li><a href=\"#if-elseif-else / if-else if-else\">if-elseif-else / if-else if-else</a></li><li><a href=\"#switch\">switch</a></li></ul></li><li><a href=\"#PHP7 循环流程控制语句\">PHP7 循环流程控制语句</a><ul><li><a href=\"#while\">while</a></li><li><a href=\"#do-while\">do-while</a></li><li><a href=\"#for\">for</a></li><li><a href=\"#foreach\">foreach</a></li></ul></li><li><a href=\"#PHP7 跳转流程控制语句\">PHP7 跳转流程控制语句</a><ul><li><a href=\"#break\">break</a></li><li><a href=\"#continue\">continue</a></li><li><a href=\"#goto\">goto</a></li></ul></li><li><a href=\"#PHP7 自定义函数\">PHP7 自定义函数</a><ul><li><a href=\"#无参无返回值的函数\">无参无返回值的函数</a></li><li><a href=\"#带参无返回值的函数\">带参无返回值的函数</a></li><li><a href=\"#无参有返回值的函数\">无参有返回值的函数</a></li><li><a href=\"#带参有返回值的函数\">带参有返回值的函数</a></li><li><a href=\"#参数带默认值的函数\">参数带默认值的函数</a></li><li><a href=\"#参数是严格类型的函数\">参数是严格类型的函数</a></li><li><a href=\"#嵌套在函数内部的函数\">嵌套在函数内部的函数</a></li><li><a href=\"#嵌套在条件结构内部的函数\">嵌套在条件结构内部的函数</a></li><li><a href=\"#递归函数\">递归函数</a></li><li><a href=\"#可变函数\">可变函数</a></li><li><a href=\"#匿名函数\">匿名函数</a></li><li><a href=\"#强制结束函数\">强制结束函数</a></li></ul></li><li><a href=\"#PHP7 生成器\">PHP7 生成器</a><ul><li><a href=\"#生成器的创建和使用\">生成器的创建和使用</a></li></ul></li><li><a href=\"#PHP7 类与对象基础\">PHP7 类与对象基础</a><ul><li><a href=\"#创建类\">创建类</a></li><li><a href=\"#创建类对象\">创建类对象</a></li><li><a href=\"#类成员\">类成员</a><ul><li><a href=\"#添加类成员\">添加类成员</a></li><li><a href=\"#类外访问类的属性\">类外访问类的属性</a></li><li><a href=\"#类内访问类成员\">类内访问类成员</a></li></ul></li></ul></li><li><a href=\"#PHP7 类的继承、抽象类和final\">PHP7 类的继承、抽象类和final</a><ul><li><a href=\"#类的继承\">类的继承</a></li><li><a href=\"#抽象类\">抽象类</a></li><li><a href=\"#final\">final</a></li></ul></li><li><a href=\"#PHP7 接口\">PHP7 接口</a><ul><li><a href=\"#创建接口\">创建接口</a></li><li><a href=\"#实现接口\">实现接口</a></li></ul></li><li><a href=\"#PHP7 Trait\">PHP7 Trait</a><ul><li><a href=\"#创建Trait\">创建Trait</a></li><li><a href=\"#使用Trait\">使用Trait</a></li></ul></li><li><a href=\"#PHP7 文件加载与类的自动加载\">PHP7 文件加载与类的自动加载</a><ul><li><a href=\"#导入文件\">导入文件</a><ul><li><a href=\"#include\">include</a></li><li><a href=\"#include_once\">include_once</a></li><li><a href=\"#require\">require</a></li><li><a href=\"#require_once\">require_once</a></li></ul></li><li><a href=\"#类的自动加载\">类的自动加载</a></li></ul></li><li><a href=\"#PHP7 类的魔术方法\">PHP7 类的魔术方法</a><ul><li><a href=\"#魔术方法与重载\">魔术方法与重载</a></li><li><a href=\"#属性重载\">属性重载</a></li><li><a href=\"#方法重载\">方法重载</a></li></ul></li><li><a href=\"#PHP7 命名空间\">PHP7 命名空间</a><ul><li><a href=\"#定义命名空间\">定义命名空间</a></li><li><a href=\"#定义子命名空间\">定义子命名空间</a></li><li><a href=\"#在同一个文件中定义多个命名空间\">在同一个文件中定义多个命名空间</a></li><li><a href=\"#在命名空间内部访问全局类、函数和常量\">在命名空间内部访问全局类、函数和常量</a></li><li><a href=\"#使用use操作符导入/使用别名\">使用use操作符导入/使用别名</a></li><li><a href=\"#全局空间\">全局空间</a></li></ul></li><li><a href=\"#PHP7 常用时间日期函数\">PHP7 常用时间日期函数</a><ul><li><a href=\"#date\">date</a></li><li><a href=\"#date_create\">date_create</a></li><li><a href=\"#date_format\">date_format</a></li><li><a href=\"#time\">time</a></li><li><a href=\"#date_default_timezone_set\">date_default_timezone_set</a></li><li><a href=\"#日期格式字串表\">日期格式字串表</a></li></ul></li><li><a href=\"#PHP7 常用文件系统函数\">PHP7 常用文件系统函数</a><ul><li><a href=\"#scandir\">scandir</a></li><li><a href=\"#basename\">basename</a></li><li><a href=\"#copy\">copy</a></li><li><a href=\"#unlink\">unlink</a></li><li><a href=\"#dirname\">dirname</a></li><li><a href=\"#file_exists\">file_exists</a></li><li><a href=\"#file_get_contents\">file_get_contents</a></li><li><a href=\"#file_put_contents\">file_put_contents</a></li><li><a href=\"#is_dir\">is_dir</a></li><li><a href=\"#is_file\">is_file</a></li><li><a href=\"#mkdir\">mkdir</a></li><li><a href=\"#rmdir\">rmdir</a></li><li><a href=\"#unlink\">unlink</a></li></ul></li><li><a href=\"#PHP7 常用字符串函数\">PHP7 常用字符串函数</a><ul><li><a href=\"#explode\">explode</a></li><li><a href=\"#implode\">implode</a></li><li><a href=\"#md5_file\">md5_file</a></li><li><a href=\"#md5\">md5</a></li><li><a href=\"#number_format\">number_format</a></li><li><a href=\"#str_replace\">str_replace</a></li><li><a href=\"#str_split\">str_split</a></li><li><a href=\"#strip_tags\">strip_tags</a></li><li><a href=\"#stripos\">stripos</a></li><li><a href=\"#strlen\">strlen</a></li><li><a href=\"#trim\">trim</a></li><li><a href=\"#mb_convert_encoding\">mb_convert_encoding</a></li><li><a href=\"#mb_substr\">mb_substr</a></li></ul></li><li><a href=\"#PHP7 常用正则表达式函数\">PHP7 常用正则表达式函数</a><ul><li><a href=\"#preg_filter/preg_replace\">preg_filter/preg_replace</a></li><li><a href=\"#preg_match_all\">preg_match_all</a></li><li><a href=\"#preg_match\">preg_match</a></li><li><a href=\"#preg_split\">preg_split</a></li></ul></li><li><a href=\"#PHP7 常用数组函数\">PHP7 常用数组函数</a><ul><li><a href=\"#array_key_exists\">array_key_exists</a></li><li><a href=\"#array_merge\">array_merge</a></li><li><a href=\"#array_unique\">array_unique</a></li><li><a href=\"#array_unshift\">array_unshift</a></li><li><a href=\"#count\">count</a></li><li><a href=\"#extract\">extract</a></li><li><a href=\"#in_array\">in_array</a></li><li><a href=\"#krsort\">krsort</a></li><li><a href=\"#ksort\">ksort</a></li><li><a href=\"#list\">list</a></li><li><a href=\"#shuffle\">shuffle</a></li><li><a href=\"#sort\">sort</a></li></ul></li><li><a href=\"#PHP7 GD库\">PHP7 GD库</a><ul><li><a href=\"#创建一张图片\">创建一张图片</a></li><li><a href=\"#向图片中输出一行文字\">向图片中输出一行文字</a></li><li><a href=\"#向图片中添加背景噪影\">向图片中添加背景噪影</a></li></ul></li><li><a href=\"#PHP7 获取请求数据\">PHP7 获取请求数据</a><ul><li><a href=\"#获取GET请求数据\">获取GET请求数据</a></li><li><a href=\"#获取POST请求数据\">获取POST请求数据</a></li></ul></li><li><a href=\"#PHP7 文件上传\">PHP7 文件上传</a><ul><li><a href=\"#单文件上传\">单文件上传</a></li><li><a href=\"#多文件上传\">多文件上传</a></li></ul></li><li><a href=\"#PHP7 访问Mysql数据库\">PHP7 访问Mysql数据库</a><ul><li><a href=\"#执行INSERT语句\">执行INSERT语句</a></li><li><a href=\"#执行UPDATE语句\">执行UPDATE语句</a></li><li><a href=\"#执行DELETE语句\">执行DELETE语句</a></li><li><a href=\"#执行SELECT语句\">执行SELECT语句</a></li></ul></li><li><a href=\"#PHP7 分页实现\">PHP7 分页实现</a></li><li><a href=\"#PHP7 在页面上直接播放视频\">PHP7 在页面上直接播放视频</a></li></ul>', '2022-05-03 00:40:44', 0, 23, 2, '/upload/6026ec717ff961f57f119e6f9f566e47.jpg');
INSERT INTO `article` VALUES (5, 'jQuery', '<ul><li><a href=\"#引入jQuery\">引入jQuery</a><ul><li><a href=\"#什么是jQuery\">什么是jQuery</a></li><li><a href=\"#下载jQuery\">下载jQuery</a></li><li><a href=\"#引入jQuery\">引入jQuery</a></li><li><a href=\"#第一个jQuery程序\">第一个jQuery程序</a></li><li><a href=\"#工厂函数$()\">工厂函数$()</a></li><li><a href=\"#DOM对象与jQuery对象互相转换\">DOM对象与jQuery对象互相转换</a><ul><li><a href=\"#DOM对象转为jQuery对象\">DOM对象转为jQuery对象</a></li><li><a href=\"#jQuery对象转DOM对象\">jQuery对象转DOM对象</a></li></ul></li></ul></li><li><a href=\"#选择器\">选择器</a><ul><li><a href=\"#基本选择器\">基本选择器</a><ul><li><a href=\"#标签选择器\">标签选择器</a></li><li><a href=\"#类选择器\">类选择器</a></li><li><a href=\"#ID选择器\">ID选择器</a></li><li><a href=\"#并集选择器\">并集选择器</a></li><li><a href=\"#交集选择器\">交集选择器</a></li><li><a href=\"#全局选择器\">全局选择器</a></li></ul></li><li><a href=\"#层次选择器\">层次选择器</a><ul><li><a href=\"#后代选择器\">后代选择器</a></li><li><a href=\"#子选择器\">子选择器</a></li><li><a href=\"#相邻元素选择器\">相邻元素选择器</a></li><li><a href=\"#同辈元素选择器\">同辈元素选择器</a></li></ul></li><li><a href=\"#属性选择器\">属性选择器</a><ul><li><a href=\"#选择包含某属性的元素\">选择包含某属性的元素</a></li><li><a href=\"#选择属性值为特定值的元素\">选择属性值为特定值的元素</a></li><li><a href=\"#选择属性值不为特定值的元素\">选择属性值不为特定值的元素</a></li><li><a href=\"#选择属性值以特定值开始的元素\">选择属性值以特定值开始的元素</a></li><li><a href=\"#选择属性值以特定值结尾的元素\">选择属性值以特定值结尾的元素</a></li><li><a href=\"#选择属性值包含特定值的元素\">选择属性值包含特定值的元素</a></li></ul></li><li><a href=\"#过滤选择器\">过滤选择器</a><ul><li><a href=\"#:first\">:first</a></li><li><a href=\"#:last\">:last</a></li><li><a href=\"#:not(选择器)\">:not(选择器)</a></li><li><a href=\"#:even\">:even</a></li><li><a href=\"#:odd\">:odd</a></li><li><a href=\"#:eq(index)\">:eq(index)</a></li><li><a href=\"#:gt(index)\">:gt(index)</a></li><li><a href=\"#:lt(index)\">:lt(index)</a></li><li><a href=\"#:header\">:header</a></li><li><a href=\"#:hidden\">:hidden</a></li><li><a href=\"#:visible\">:visible</a></li></ul></li><li><a href=\"#表单选择器\">表单选择器</a><ul><li><a href=\"#:input\">:input</a></li><li><a href=\"#:text\">:text</a></li><li><a href=\"#:password\">:password</a></li><li><a href=\"#:radio\">:radio</a></li><li><a href=\"#:checkbox\">:checkbox</a></li><li><a href=\"#:submit\">:submit</a></li><li><a href=\"#:image\">:image</a></li><li><a href=\"#:reset\">:reset</a></li><li><a href=\"#:button\">:button</a></li><li><a href=\"#:file\">:file</a></li><li><a href=\"#:enabled\">:enabled</a></li><li><a href=\"#:disabled\">:disabled</a></li><li><a href=\"#:checked\">:checked</a></li><li><a href=\"#:checked\">:checked</a></li></ul></li></ul></li><li><a href=\"#动画函数\">动画函数</a><ul><li><a href=\"#show()，hide()\">show()，hide()</a></li><li><a href=\"#toggle()\">toggle()</a></li><li><a href=\"#fadeIn()，fadeOut()\">fadeIn()，fadeOut()</a></li><li><a href=\"#slideUp()，slideDown()\">slideUp()，slideDown()</a></li><li><a href=\"#animate()\">animate()</a></li></ul></li><li><a href=\"#常用事件函数\">常用事件函数</a><ul><li><a href=\"#鼠标事件函数\">鼠标事件函数</a><ul><li><a href=\"#click()\">click()</a></li><li><a href=\"#mouseover()，mouseout()\">mouseover()，mouseout()</a></li><li><a href=\"#mouseenter()，mouseleave()\">mouseenter()，mouseleave()</a></li><li><a href=\"#hover()\">hover()</a></li></ul></li><li><a href=\"#键盘事件函数\">键盘事件函数</a><ul><li><a href=\"#keydown()，keyup()，keypress()\">keydown()，keyup()，keypress()</a></li></ul></li><li><a href=\"#浏览器事件函数\">浏览器事件函数</a><ul><li><a href=\"#resize()\">resize()</a></li></ul></li><li><a href=\"#焦点事件\">焦点事件</a><ul><li><a href=\"#blur()，focus()\">blur()，focus()</a></li><li><a href=\"#select()\">select()</a></li></ul></li></ul></li><li><a href=\"#事件的绑定与移除\">事件的绑定与移除</a><ul><li><a href=\"#绑定事件：bind()\">绑定事件：bind()</a><ul><li><a href=\"#绑定单个事件\">绑定单个事件</a></li><li><a href=\"#绑定多个事件\">绑定多个事件</a></li><li><a href=\"#event.data\">event.data</a></li></ul></li><li><a href=\"#解除绑定事件：unbind()\">解除绑定事件：unbind()</a><ul><li><a href=\"#解除绑定的所有事件\">解除绑定的所有事件</a></li><li><a href=\"#解除绑定的指定事件\">解除绑定的指定事件</a></li><li><a href=\"#解除绑定的指定事件的函数\">解除绑定的指定事件的函数</a></li></ul></li></ul></li><li><a href=\"#操作DOM元素的样式\">操作DOM元素的样式</a><ul><li><a href=\"#css()\">css()</a></li><li><a href=\"#addClass()，removeClass()\">addClass()，removeClass()</a></li><li><a href=\"#toggleClass()\">toggleClass()</a></li><li><a href=\"#hasClass()\">hasClass()</a></li><li><a href=\"#height()，width()\">height()，width()</a></li><li><a href=\"#offset()\">offset()</a></li><li><a href=\"#offsetParent()\">offsetParent()</a></li><li><a href=\"#position()\">position()</a></li><li><a href=\"#scrollLeft()，scrollTop()\">scrollLeft()，scrollTop()</a></li></ul></li><li><a href=\"#操作DOM元素\">操作DOM元素</a><ul><li><a href=\"#html()\">html()</a></li><li><a href=\"#text()\">text()</a></li><li><a href=\"#val()\">val()</a></li><li><a href=\"#创建节点\">创建节点</a></li><li><a href=\"#append()，appendTo()\">append()，appendTo()</a></li><li><a href=\"#prepend()，prependTo()\">prepend()，prependTo()</a></li><li><a href=\"#after()\">after()</a></li><li><a href=\"#before()\">before()</a></li><li><a href=\"#remove()\">remove()</a></li><li><a href=\"#empty()\">empty()</a></li><li><a href=\"#detach()\">detach()</a></li><li><a href=\"#replaceWith()\">replaceWith()</a></li><li><a href=\"#replaceAll()\">replaceAll()</a></li><li><a href=\"#clone()\">clone()</a></li></ul></li><li><a href=\"#操作DOM元素属性\">操作DOM元素属性</a><ul><li><a href=\"#attr()\">attr()</a></li><li><a href=\"#removeAttr()\">removeAttr()</a></li></ul></li><li><a href=\"#遍历DOM元素\">遍历DOM元素</a><ul><li><a href=\"#选择子元素\">选择子元素</a><ul><li><a href=\"#children()\">children()</a></li></ul></li><li><a href=\"#选择兄弟级元素\">选择兄弟级元素</a><ul><li><a href=\"#next()\">next()</a></li><li><a href=\"#prev()\">prev()</a></li><li><a href=\"#siblings()\">siblings()</a></li></ul></li><li><a href=\"#选择父元素\">选择父元素</a><ul><li><a href=\"#parent()\">parent()</a></li><li><a href=\"#parents()\">parents()</a></li></ul></li><li><a href=\"#遍历元素\">遍历元素</a><ul><li><a href=\"#each()\">each()</a></li></ul></li></ul></li><li><a href=\"#JQuery的链式写法\">JQuery的链式写法</a><ul><li><a href=\"#连续操作\">连续操作</a></li><li><a href=\"#end()\">end()</a></li></ul></li></ul><p>&nbsp;</p><p>&nbsp;</p>', '2022-05-03 01:17:51', 0, 234, 1, '/upload/35e5fe2a960203737b9ca8a66f80e4c9.png');
INSERT INTO `article` VALUES (6, 'Bootstrap', '<ul><li><a href=\"#Bootstrap4.4介绍\">Bootstrap4.4介绍</a></li><li><a href=\"#Bootstrap4.4的安装\">Bootstrap4.4的安装</a></li><li><a href=\"#栅格系统\">栅格系统</a><ul><li><a href=\"#视口尺寸划分\">视口尺寸划分</a></li><li><a href=\"#容器宽度\">容器宽度</a></li><li><a href=\"#栅格系统\">栅格系统</a></li></ul></li><li><a href=\"#工具类\">工具类</a><ul><li><a href=\"#颜色\">颜色</a></li><li><a href=\"#边框\">边框</a></li><li><a href=\"#浮动\">浮动</a></li><li><a href=\"#Display\">Display</a></li><li><a href=\"#Flex布局类\">Flex布局类</a></li><li><a href=\"#文本\">文本</a></li><li><a href=\"#移除处理\">移除处理</a></li><li><a href=\"#定位\">定位</a></li><li><a href=\"#阴影\">阴影</a></li><li><a href=\"#尺寸\">尺寸</a></li><li><a href=\"#间隔\">间隔</a></li><li><a href=\"#链接拉伸\">链接拉伸</a></li><li><a href=\"#垂直对齐\">垂直对齐</a></li><li><a href=\"#可见性\">可见性</a></li></ul></li><li><a href=\"#页面内容\">页面内容</a><ul><li><a href=\"#排版\">排版</a></li><li><a href=\"#图像\">图像</a></li><li><a href=\"#表格\">表格</a></li><li><a href=\"#图片区\">图片区</a></li></ul></li><li><a href=\"#组件\">组件</a><ul><li><a href=\"#警告框\">警告框</a></li><li><a href=\"#徽章\">徽章</a></li><li><a href=\"#面包屑导航\">面包屑导航</a></li><li><a href=\"#按钮\">按钮</a></li><li><a href=\"#下拉菜单\">下拉菜单</a></li><li><a href=\"#按钮组\">按钮组</a></li><li><a href=\"#输入组\">输入组</a></li><li><a href=\"#表单\">表单</a></li><li><a href=\"#卡片\">卡片</a></li><li><a href=\"#轮播\">轮播</a></li><li><a href=\"#折叠(手风琴)\">折叠(手风琴)</a></li><li><a href=\"#巨幕\">巨幕</a></li><li><a href=\"#列表组\">列表组</a></li><li><a href=\"#媒体对象\">媒体对象</a></li><li><a href=\"#模态框\">模态框</a></li><li><a href=\"#导航\">导航</a></li><li><a href=\"#导航条\">导航条</a></li><li><a href=\"#分页\">分页</a></li><li><a href=\"#弹出框\">弹出框</a></li><li><a href=\"#进度条\">进度条</a></li><li><a href=\"#滚动监听\">滚动监听</a></li><li><a href=\"#加载图标\">加载图标</a></li><li><a href=\"#轻量弹窗\">轻量弹窗</a></li><li><a href=\"#工具提示框\">工具提示框</a></li></ul></li><li><a href=\"#资源下载\">资源下载</a></li></ul>', '2022-05-03 00:40:58', 0, 123, 1, '/upload/2b453d38ebfb9d6a7388da369f15f802.jpeg');
INSERT INTO `article` VALUES (7, 'Node.js', '<ul><li><a href=\"#Node12 介绍\">Node12 介绍</a></li><li><a href=\"#下载 Node12\">下载 Node12</a></li><li><a href=\"#安装和配置 Node12\">安装和配置 Node12</a><ul><li><a href=\"#安装 Node12\">安装 Node12</a></li><li><a href=\"#配置 Node12\">配置 Node12</a></li><li><a href=\"#验证 Node12\">验证 Node12</a></li></ul></li><li><a href=\"#在 VSCode 上安装插件\">在 VSCode 上安装插件</a></li><li><a href=\"#模块\">模块</a><ul><li><a href=\"#什么是模块\">什么是模块</a></li><li><a href=\"#创建模块\">创建模块</a></li><li><a href=\"#引入模块\">引入模块</a></li><li><a href=\"#执行模块\">执行模块</a></li><li><a href=\"#常见问题\">常见问题</a><ul><li><a href=\"#问题一\">问题一</a></li><li><a href=\"#问题二\">问题二</a></li><li><a href=\"#问题三\">问题三</a></li><li><a href=\"#问题四\">问题四</a></li></ul></li></ul></li><li><a href=\"#类\">类</a><ul><li><a href=\"#类的定义和实例化\">类的定义和实例化</a></li><li><a href=\"#静态成员\">静态成员</a></li><li><a href=\"#实例化成员\">实例化成员</a></li><li><a href=\"#构造方法\">构造方法</a></li><li><a href=\"#类的继承\">类的继承</a></li><li><a href=\"#导出类模块\">导出类模块</a></li></ul></li><li><a href=\"#Node12 创建服务器\">Node12 创建服务器</a><ul><li><a href=\"#启动服务器\">启动服务器</a></li><li><a href=\"#访问服务器\">访问服务器</a></li></ul></li><li><a href=\"#响应信息\">响应信息</a><ul><li><a href=\"#设置响应头\">设置响应头</a></li><li><a href=\"#设置响应内容\">设置响应内容</a></li><li><a href=\"#加载页面\">加载页面</a></li><li><a href=\"#常用MIME类型表\">常用MIME类型表</a></li></ul></li><li><a href=\"#获取请求信息\">获取请求信息</a><ul><li><a href=\"#获取请求方式和URL\">获取请求方式和URL</a></li><li><a href=\"#获取GET请求参数\">获取GET请求参数</a></li><li><a href=\"#获取POST请求参数\">获取POST请求参数</a></li></ul></li><li><a href=\"#npm\">npm</a><ul><li><a href=\"#npm简介\">npm简介</a></li><li><a href=\"#查找依赖项目\">查找依赖项目</a></li><li><a href=\"#查看npm版本及更新\">查看npm版本及更新</a></li><li><a href=\"#淘宝镜像\">淘宝镜像</a></li></ul></li><li><a href=\"#自定义模块\">自定义模块</a><ul><li><a href=\"#创建模块\">创建模块</a></li><li><a href=\"#package.json 配置说明\">package.json 配置说明</a></li><li><a href=\"#依赖项目管理\">依赖项目管理</a></li><li><a href=\"#安装 package.json 中依赖的项目\">安装 package.json 中依赖的项目</a></li></ul></li><li><a href=\"#动态获取MIME类型\">动态获取MIME类型</a><ul><li><a href=\"#安装mime模块\">安装mime模块</a></li><li><a href=\"#获取MIME类型\">获取MIME类型</a></li></ul></li><li><a href=\"#EJS嵌入式模板\">EJS嵌入式模板</a><ul><li><a href=\"#安装EJS模块\">安装EJS模块</a></li><li><a href=\"#模板渲染\">模板渲染</a></li><li><a href=\"#模板语法\">模板语法</a></li></ul></li><li><a href=\"#操作MySQL数据库\">操作MySQL数据库</a><ul><li><a href=\"#安装MySQL模块\">安装MySQL模块</a></li><li><a href=\"#连接数据库\">连接数据库</a></li><li><a href=\"#查询\">查询</a></li><li><a href=\"#插入\">插入</a></li><li><a href=\"#删除\">删除</a></li><li><a href=\"#更新\">更新</a></li></ul></li><li><a href=\"#Express\">Express</a><ul><li><a href=\"#安装Express模块\">安装Express模块</a></li><li><a href=\"#创建应用\">创建应用</a></li><li><a href=\"#路由常用方法\">路由常用方法</a></li><li><a href=\"#路由匹配路径\">路由匹配路径</a></li><li><a href=\"#路由处理程序\">路由处理程序</a></li><li><a href=\"#响应数据\">响应数据</a></li><li><a href=\"#获取参数\">获取参数</a></li><li><a href=\"#静态资源加载\">静态资源加载</a></li><li><a href=\"#EJS模板渲染\">EJS模板渲染</a></li><li><a href=\"#子应用\">子应用</a></li><li><a href=\"#cookie\">cookie</a></li><li><a href=\"#session\">session</a></li><li><a href=\"#文件上传\">文件上传</a></li></ul></li><li><a href=\"#资源下载\">资源下载</a></li><li><a href=\"#视频教程\">视频教程</a></li></ul>', '2022-05-03 00:40:16', 0, 44, 3, '/upload/34747536375568b514b042ca1f2816f0.jpg');
INSERT INTO `article` VALUES (8, 'Java', '<ul><li><a href=\"#格式化日期\">格式化日期</a></li><li><a href=\"#网络编程\">网络编程</a><ul><li><a href=\"#UDP模式\">UDP模式</a></li><li><a href=\"#TCP模式\">TCP模式</a></li></ul></li><li><a href=\"#多线程\">多线程</a><ul><li><a href=\"#创建线程的步骤\">创建线程的步骤</a></li><li><a href=\"#相关的类\">相关的类</a></li><li><a href=\"#通过Thread类创建子线程\">通过Thread类创建子线程</a></li><li><a href=\"#通过Runnable接口创建子线程\">通过Runnable接口创建子线程</a></li><li><a href=\"#让多个子线程共享数据一\">让多个子线程共享数据一</a></li><li><a href=\"#让多个子线程共享数据二\">让多个子线程共享数据二</a></li><li><a href=\"#线程同步一\">线程同步一</a></li><li><a href=\"#线程同步二\">线程同步二</a></li><li><a href=\"#线程插队\">线程插队</a></li></ul></li><li><a href=\"#JDBC\">JDBC</a><ul><li><a href=\"#什么是JDBC\">什么是JDBC</a></li><li><a href=\"#JDBC API主要功能\">JDBC API主要功能</a></li><li><a href=\"#JDBC编程步骤\">JDBC编程步骤</a><ul><li><a href=\"#连接和关闭数据库\">连接和关闭数据库</a></li><li><a href=\"#执行查询语句\">执行查询语句</a></li><li><a href=\"#执行增、删、改语句\">执行增、删、改语句</a></li><li><a href=\"#用PreparedStatement执行SQL语句\">用PreparedStatement执行SQL语句</a></li></ul></li><li><a href=\"#乱码问题\">乱码问题</a></li><li><a href=\"#事务处理\">事务处理</a></li></ul></li><li><a href=\"#properties配置文件\">properties配置文件</a><ul><li><a href=\"#properties配置文件说明\">properties配置文件说明</a></li><li><a href=\"#读取配置文件\">读取配置文件</a></li><li><a href=\"#Properties类常用的方法\">Properties类常用的方法</a></li></ul></li><li><a href=\"#单元测试实现\">单元测试实现</a></li><li><a href=\"#文件上传\">文件上传</a><ul><li><a href=\"#Commons-FileUpload组件的API\">Commons-FileUpload组件的API</a></li><li><a href=\"#使用步骤\">使用步骤</a></li></ul></li></ul>', '2022-05-03 00:39:55', 0, 5, 4, '/upload/dee2209568408c108a77f76b4f02f454.jpg');
INSERT INTO `article` VALUES (9, 'MyBatis', '<ul><li><a href=\"#MyBatis3 开发环境搭建\">MyBatis3 开发环境搭建</a><ul><li><a href=\"#准备工作\">准备工作</a></li><li><a href=\"#MyBatis3开发环境搭建\">MyBatis3开发环境搭建</a></li><li><a href=\"#创建配置文件\">创建配置文件</a></li><li><a href=\"#创建XML映射文件\">创建XML映射文件</a></li><li><a href=\"#使用MyBatis3访问数据库\">使用MyBatis3访问数据库</a></li></ul></li><li><a href=\"#MyBatis3 工具封装类\">MyBatis3 工具封装类</a></li><li><a href=\"#MyBatis3 配置数据源\">MyBatis3 配置数据源</a><ul><li><a href=\"#静态配置\">静态配置</a></li><li><a href=\"#动态配置\">动态配置</a></li></ul></li><li><a href=\"#MyBatis3 日志实现\">MyBatis3 日志实现</a><ul><li><a href=\"#准备工作\">准备工作</a></li><li><a href=\"#部署Log4j\">部署Log4j</a></li><li><a href=\"#配置Log4j\">配置Log4j</a></li></ul></li><li><a href=\"#MyBatis3 通过接口进行数据库访问\">MyBatis3 通过接口进行数据库访问</a><ul><li><a href=\"#创建接口\">创建接口</a></li><li><a href=\"#修改单元测试文件\">修改单元测试文件</a></li></ul></li><li><a href=\"#MyBatis3 创建POJO类\">MyBatis3 创建POJO类</a><ul><li><a href=\"#什么是POJO类\">什么是POJO类</a></li><li><a href=\"#创建POJO类\">创建POJO类</a></li><li><a href=\"#数据库类型与java类型对照表\">数据库类型与java类型对照表</a></li></ul></li><li><a href=\"#MyBatis3 向SQL语句传参\">MyBatis3 向SQL语句传参</a><ul><li><a href=\"#传入一个参数\">传入一个参数</a></li><li><a href=\"#传入多个参数\">传入多个参数</a><ul><li><a href=\"#POJO对象实现\">POJO对象实现</a></li><li><a href=\"#Map对象实现\">Map对象实现</a></li><li><a href=\"#注解实现\">注解实现</a></li></ul></li></ul></li><li><a href=\"#MyBatis3 获取查询结果\">MyBatis3 获取查询结果</a><ul><li><a href=\"#单表查询\">单表查询</a><ul><li><a href=\"#查询单个值\">查询单个值</a></li><li><a href=\"#查询一行数据\">查询一行数据</a></li><li><a href=\"#查询多行数据\">查询多行数据</a></li><li><a href=\"#模糊查询\">模糊查询</a></li><li><a href=\"#分页查询\">分页查询</a></li></ul></li><li><a href=\"#多表联合查询\">多表联合查询</a><ul><li><a href=\"#主表引用附表字段\">主表引用附表字段</a></li><li><a href=\"#主表引用附表POJO对象\">主表引用附表POJO对象</a></li><li><a href=\"#主表引用附表POJO对象集合\">主表引用附表POJO对象集合</a></li></ul></li></ul></li><li><a href=\"#MyBatis3 结果集映射机制\">MyBatis3 结果集映射机制</a><ul><li><a href=\"#POJO类属性名与数据表字段名不一致的情况\">POJO类属性名与数据表字段名不一致的情况</a></li><li><a href=\"#自动映射行为\">自动映射行为</a><ul><li><a href=\"#取消自动映射\">取消自动映射</a></li><li><a href=\"#完全自动映射\">完全自动映射</a></li><li><a href=\"#部分自动映射\">部分自动映射</a></li></ul></li></ul></li><li><a href=\"#MyBatis3 映射器的注册\">MyBatis3 映射器的注册</a><ul><li><a href=\"#直接注册映射器文件\">直接注册映射器文件</a></li><li><a href=\"#通过包名自动注册\">通过包名自动注册</a></li></ul></li><li><a href=\"#MyBatis3 类型别名\">MyBatis3 类型别名</a><ul><li><a href=\"#给具体的类取别名\">给具体的类取别名</a></li><li><a href=\"#给指定包下的类取别名\">给指定包下的类取别名</a></li></ul></li><li><a href=\"#MyBatis3 动态SQL映射\">MyBatis3 动态SQL映射</a><ul><li><a href=\"#if\">if</a></li><li><a href=\"#where-if / trim-if\">where-if / trim-if</a></li><li><a href=\"#foreach\">foreach</a></li><li><a href=\"#choose-when-otherwise\">choose-when-otherwise</a></li><li><a href=\"#set-if / trim-if\">set-if / trim-if</a></li></ul></li></ul>', '2022-05-03 00:39:28', 0, 1289, 4, '/upload/a7d64c541246ae59586d902c819f498f.jpg');
INSERT INTO `article` VALUES (10, 'Spring', '<ul><li><a href=\"#Spring3 环境搭建\">Spring3 环境搭建</a><ul><li><a href=\"#下载相关JAR文件\">下载相关JAR文件</a></li><li><a href=\"#搭建Spring3环境\">搭建Spring3环境</a></li></ul></li><li><a href=\"#Spring3 Ioc依赖注入\">Spring3 Ioc依赖注入</a><ul><li><a href=\"#注入直接量\">注入直接量</a></li><li><a href=\"#注入对象\">注入对象</a></li><li><a href=\"#构造注入\">构造注入</a></li><li><a href=\"#注入特殊值\">注入特殊值</a><ul><li><a href=\"#注入null值\">注入null值</a></li><li><a href=\"#注入空字符串\">注入空字符串</a></li><li><a href=\"#注入包含特殊字符的值\">注入包含特殊字符的值</a></li><li><a href=\"#注入List集合\">注入List集合</a></li><li><a href=\"#注入Set集合\">注入Set集合</a></li><li><a href=\"#注入Map集合\">注入Map集合</a></li><li><a href=\"#注入Properties集合\">注入Properties集合</a></li></ul></li><li><a href=\"#使用注解实现Ioc\">使用注解实现Ioc</a><ul><li><a href=\"#定义Bean\">定义Bean</a></li><li><a href=\"#Bean组件装配\">Bean组件装配</a></li></ul></li></ul></li><li><a href=\"#Spring3 AOP实现\">Spring3 AOP实现</a><ul><li><a href=\"#相关JAR文件\">相关JAR文件</a></li><li><a href=\"#AOP增强\">AOP增强</a></li><li><a href=\"#使用注解实现AOP增强\">使用注解实现AOP增强</a></li><li><a href=\"#切入点表达式匹配规则举例\">切入点表达式匹配规则举例</a></li><li><a href=\"#JoinPoint 常用方法\">JoinPoint 常用方法</a></li><li><a href=\"#ProceedingJoinPoint 常用方法\">ProceedingJoinPoint 常用方法</a></li></ul></li><li><a href=\"#Spring3 整合MyBatis3\">Spring3 整合MyBatis3</a><ul><li><a href=\"#相关JAR文件\">相关JAR文件</a></li><li><a href=\"#整合思路\">整合思路</a></li><li><a href=\"#整合实现\">整合实现</a></li><li><a href=\"#将 MyBatis 中的配置转移到 Spring 配置文件中\">将 MyBatis 中的配置转移到 Spring 配置文件中</a></li></ul></li><li><a href=\"#Spring3 映射器接口实现\">Spring3 映射器接口实现</a><ul><li><a href=\"#实现类实现映射器接口\">实现类实现映射器接口</a><ul><li><a href=\"#普通实现\">普通实现</a></li><li><a href=\"#通过继承SqlSessionDaoSupport类实现\">通过继承SqlSessionDaoSupport类实现</a></li></ul></li><li><a href=\"#注入实现映射器接口\">注入实现映射器接口</a><ul><li><a href=\"#使用 MapperFactoryBean 注入\">使用 MapperFactoryBean 注入</a></li><li><a href=\"#使用 MapperScannerConfigurer 注入\">使用 MapperScannerConfigurer 注入</a></li></ul></li></ul></li><li><a href=\"#Spring3 声明式事务\">Spring3 声明式事务</a><ul><li><a href=\"#使用Spring XML实现声明式事务\">使用Spring XML实现声明式事务</a></li><li><a href=\"#使用注解实现声明式事务处理\">使用注解实现声明式事务处理</a></li></ul></li><li><a href=\"#Spring3 数据源配置\">Spring3 数据源配置</a><ul><li><a href=\"#使用BasicDataSource直接配置数据源\">使用BasicDataSource直接配置数据源</a></li><li><a href=\"#使用属性文件配置数据源\">使用属性文件配置数据源</a></li><li><a href=\"#使用JNDI数据源\">使用JNDI数据源</a></li></ul></li><li><a href=\"#Spring3 指定Bean的作用域\">Spring3 指定Bean的作用域</a><ul><li><a href=\"#Bean的作用域说明\">Bean的作用域说明</a></li><li><a href=\"#设置Bean的作用\">设置Bean的作用</a><ul><li><a href=\"#xml方式\">xml方式</a></li><li><a href=\"#注解方式\">注解方式</a></li></ul></li></ul></li><li><a href=\"#Spring3 自动装配\">Spring3 自动装配</a><ul><li><a href=\"#局部设置\">局部设置</a><ul><li><a href=\"#不进行自动装配\">不进行自动装配</a></li><li><a href=\"#按属性名称进行自动装配\">按属性名称进行自动装配</a></li><li><a href=\"#按属性类型进行自动装配\">按属性类型进行自动装配</a></li><li><a href=\"#按构造方法的参数类型进行自动装配\">按构造方法的参数类型进行自动装配</a></li></ul></li><li><a href=\"#全局设置\">全局设置</a></li></ul></li><li><a href=\"#Spring3 拆分配置文件\">Spring3 拆分配置文件</a><ul><li><a href=\"#拆分配置文件\">拆分配置文件</a></li><li><a href=\"#整合配置文件\">整合配置文件</a><ul><li><a href=\"#配置文件导入\">配置文件导入</a></li><li><a href=\"#创建上下文对象时引入所有的配置文件\">创建上下文对象时引入所有的配置文件</a></li></ul></li></ul></li></ul>', '2022-05-03 00:38:59', 0, 1245, 4, '/upload/d431cdf6a4e8e85a9b950d54c51cee96.jpeg');
INSERT INTO `article` VALUES (11, 'SpringMVC', '<ul><li><a href=\"#SpringMVC3 环境搭建\">SpringMVC3 环境搭建</a><ul><li><a href=\"#下载相关JAR包\">下载相关JAR包</a></li><li><a href=\"#搭建 SpringMVC3 环境\">搭建 SpringMVC3 环境</a></li></ul></li><li><a href=\"#SprintMVC3 使用注解实现控制器类\">SprintMVC3 使用注解实现控制器类</a><ul><li><a href=\"#支持注解配置\">支持注解配置</a></li><li><a href=\"#控制器改造\">控制器改造</a></li></ul></li><li><a href=\"#SpringMVC3 请求映射映射\">SpringMVC3 请求映射映射</a><ul><li><a href=\"#单映射\">单映射</a><ul><li><a href=\"#单级映射\">单级映射</a></li><li><a href=\"#多级映射\">多级映射</a></li></ul></li><li><a href=\"#多映射\">多映射</a></li><li><a href=\"#只允许GET请求\">只允许GET请求</a></li><li><a href=\"#只允许POST请求\">只允许POST请求</a></li></ul></li><li><a href=\"#SpringMVC3 视图向控制器传递参数\">SpringMVC3 视图向控制器传递参数</a><ul><li><a href=\"#提交单个参数\">提交单个参数</a></li><li><a href=\"#提交多个参数\">提交多个参数</a></li><li><a href=\"#非必填参数\">非必填参数</a></li><li><a href=\"#给参数设置默认值\">给参数设置默认值</a></li><li><a href=\"#将参数赋值给对象的属性\">将参数赋值给对象的属性</a></li></ul></li><li><a href=\"#SpringMVC3 控制器向视图传递参数\">SpringMVC3 控制器向视图传递参数</a><ul><li><a href=\"#使用 ModelAndView 类实现\">使用 ModelAndView 类实现</a><ul><li><a href=\"#传入普通类型参数\">传入普通类型参数</a></li><li><a href=\"#传入Map类型的参数\">传入Map类型的参数</a></li><li><a href=\"#传入对象类型的参数\">传入对象类型的参数</a></li></ul></li><li><a href=\"#使用 Model 类实现\">使用 Model 类实现</a><ul><li><a href=\"#传入普通类型参数\">传入普通类型参数</a></li><li><a href=\"#传入 Map 类型的参数\">传入 Map 类型的参数</a></li><li><a href=\"#向页面传递对象参数\">向页面传递对象参数</a></li><li><a href=\"#接受参数并返回到页面\">接受参数并返回到页面</a></li></ul></li><li><a href=\"#使用 Map 类型实现\">使用 Map 类型实现</a></li></ul></li><li><a href=\"#SpringMVC3 整合Spring与MyBatis\">SpringMVC3 整合Spring与MyBatis</a><ul><li><a href=\"#创建项目\">创建项目</a></li><li><a href=\"#配置SSM\">配置SSM</a></li><li><a href=\"#编写POJO类\">编写POJO类</a></li><li><a href=\"#编写数据库操作\">编写数据库操作</a></li><li><a href=\"#编写业务层\">编写业务层</a></li><li><a href=\"#编写视图层\">编写视图层</a></li><li><a href=\"#编写控制器\">编写控制器</a></li></ul></li><li><a href=\"#SpringMVC3 转发与重定向\">SpringMVC3 转发与重定向</a><ul><li><a href=\"#转发\">转发</a></li><li><a href=\"#重定向\">重定向</a></li></ul></li><li><a href=\"#SpringMVC3 Session与Reuqrest对象\">SpringMVC3 Session与Reuqrest对象</a><ul><li><a href=\"#使用 session 对象\">使用 session 对象</a></li><li><a href=\"#使用 request 对象\">使用 request 对象</a></li></ul></li><li><a href=\"#SpringMVC3 加载静态资源\">SpringMVC3 加载静态资源</a></li><li><a href=\"#SpringMVC3 异常处理\">SpringMVC3 异常处理</a><ul><li><a href=\"#局部异常处理\">局部异常处理</a></li><li><a href=\"#全局异常处理\">全局异常处理</a></li></ul></li><li><a href=\"#SpringMVC3 中文乱码问题\">SpringMVC3 中文乱码问题</a></li><li><a href=\"#SpringMVC3 表单标签\">SpringMVC3 表单标签</a><ul><li><a href=\"#声明 taglib 指令\">声明 taglib 指令</a></li><li><a href=\"#form 标签\">form 标签</a></li><li><a href=\"#常用表单标签\">常用表单标签</a></li><li><a href=\"#常用属性\">常用属性</a></li></ul></li><li><a href=\"#SpringMVC3 JSR303校验框架\">SpringMVC3 JSR303校验框架</a><ul><li><a href=\"#依赖的JAR文件\">依赖的JAR文件</a></li><li><a href=\"#JSR 303 约束\">JSR 303 约束</a></li><li><a href=\"#JSR 303 应用\">JSR 303 应用</a></li></ul></li><li><a href=\"#SpringMVC3 REST风格的URL\">SpringMVC3 REST风格的URL</a></li><li><a href=\"#SpringMVC3 文件上传\">SpringMVC3 文件上传</a><ul><li><a href=\"#依赖的JAR文件\">依赖的JAR文件</a></li><li><a href=\"#单文件上传\">单文件上传</a></li><li><a href=\"#多文件上传\">多文件上传</a></li><li><a href=\"#前后端分离实现文件上传\">前后端分离实现文件上传</a></li></ul></li><li><a href=\"#SpringMVC3 响应JSON数据\">SpringMVC3 响应JSON数据</a><ul><li><a href=\"#依赖的JAR文件\">依赖的JAR文件</a></li><li><a href=\"#返回JSON数据\">返回JSON数据</a></li><li><a href=\"#中文乱码解决\">中文乱码解决</a><ul><li><a href=\"#使用注解解决\">使用注解解决</a></li><li><a href=\"#使用StringHttpMessageConverter类解决\">使用StringHttpMessageConverter类解决</a></li><li><a href=\"#使用FastJsonHttpMessageConverter类解决\">使用FastJsonHttpMessageConverter类解决</a></li></ul></li><li><a href=\"#JSON请求时406错误\">JSON请求时406错误</a></li><li><a href=\"#日期格式问题\">日期格式问题</a><ul><li><a href=\"#注解方式解决\">注解方式解决</a></li><li><a href=\"#配置文件方式解决\">配置文件方式解决</a></li><li><a href=\"#混合模式\">混合模式</a></li></ul></li></ul></li><li><a href=\"#SpringMVC3 多视图解析器\">SpringMVC3 多视图解析器</a><ul><li><a href=\"#配置XML文件\">配置XML文件</a></li><li><a href=\"#编写控制器\">编写控制器</a></li></ul></li><li><a href=\"#SpringMVC3 自定义转换器\">SpringMVC3 自定义转换器</a><ul><li><a href=\"#创建自定义转换器\">创建自定义转换器</a></li><li><a href=\"#配置自定义转换器\">配置自定义转换器</a></li></ul></li><li><a href=\"#SpringMVC3 自定义编辑器\">SpringMVC3 自定义编辑器</a><ul><li><a href=\"#创建自定义编辑器\">创建自定义编辑器</a></li><li><a href=\"#使用自定义编辑器\">使用自定义编辑器</a></li></ul></li><li><a href=\"#SpringMVC3 自定义拦截器\">SpringMVC3 自定义拦截器</a><ul><li><a href=\"#创建自定义拦截器\">创建自定义拦截器</a></li><li><a href=\"#配置自定义拦截器\">配置自定义拦截器</a></li></ul></li><li><a href=\"#SpringMVC3 邮箱发送\">SpringMVC3 邮箱发送</a><ul><li><a href=\"#添加依赖\">添加依赖</a></li><li><a href=\"#创建配置文件\">创建配置文件</a></li><li><a href=\"#创建业务层代码\">创建业务层代码</a></li><li><a href=\"#创建控制器层代码\">创建控制器层代码</a></li><li><a href=\"#测试\">测试</a></li></ul></li><li><a href=\"#SpringMVC4 集成Swagger\">SpringMVC4 集成Swagger</a><ul><li><a href=\"#Swagger简介\">Swagger简介</a></li><li><a href=\"#环境准备\">环境准备</a></li><li><a href=\"#集成配置步骤\">集成配置步骤</a></li><li><a href=\"#Swagger 帮助手册\">Swagger 帮助手册</a></li></ul></li><li><a href=\"#SpringMVC4 JSON日期格式化\">SpringMVC4 JSON日期格式化</a></li></ul>', '2022-05-03 00:38:15', 0, 456, 4, '/upload/a5c69e5b17d868dc5544ec9a560f70fe.png');
INSERT INTO `article` VALUES (13, '世界上只有一种英雄主义，就是在认清生活真相之后依然选择热爱生活', '<p>01</p><p>&nbsp;</p><p>22岁生日，一个人吃火锅，还好锅底可以点最辣的；187次路过的码头，4次遇到一对情侣，两个人眼中的风景，也不见得更好看；第6次一个人搬家，扔掉了3箱旧东西，很遗憾，好像连回忆也一并被丢弃了。</p><p>&nbsp;</p><p>8点场的电影，48块的双人套餐，两杯可乐一个人喝，喝到心情都有点丧丧的；第12次一个人输液，200ml的药水，一共2386滴，37分钟滴完，但痛了很久；一个人过生日，8寸的蛋糕，颜色有5种。</p><p>&nbsp;</p><p>看到这些，我不由得联想到自己的状态。</p><p>&nbsp;</p><p>住学校周转房的11楼，因为没有通电梯，同事们都没搬进去，那一层只有我一个人。尽管房子花了四五万装修，买了沙发茶几，装了电视，贴了墙纸，但还是没有家的感觉。</p><p>&nbsp;</p><p>有电冰箱、零食柜，但里面都是空的；有微波炉、电磁炉，但从来没用过。</p><p>&nbsp;</p><p>家里一共6盏灯，现在已经坏了4盏，我没想着去修一下。于我而言，黑暗冷清和灯火通明，并没有什么区别。</p><p>&nbsp;</p><p>每周五下午开始，就没人再和我说话，等到周日晚上返校开班会的时候，前五分钟的讲话连吐字都不清楚，需要重新练习发声。</p><p>&nbsp;</p><p>我也渴望被理解，但我讨厌去解释。</p><p>&nbsp;</p><p>02</p><p>&nbsp;</p><p>一个人生活，细细数来已经快10年了。</p><p>&nbsp;</p><p>背井离乡到外地求学，毕业后在冰冷的钢筋森林里打拼。学着在一个陌生的环境中，处理人际关系，打理生活琐事，去应对生活里的各种暴击。</p><p>&nbsp;</p><p>一个人吃饭，点两菜一汤，老板不愿浪费，自作主张少炒了一道菜。一个人吃火锅，服务员反复强调要按两人份收钱，不然他们就亏了。</p><p>&nbsp;</p><p>一个人去KTV，开了间包厢，唱了好多遍《好久不见》和《盛夏的果实》，想唱《屋顶》没人陪，叫来包房公主，但她不喜欢周杰伦。</p><p>&nbsp;</p><p>一个人去医院，住的地方叫不到车，已经吐到连胃酸都没得吐了，还要强撑着开车，难受的时候靠边停一会儿，即便头晕目眩也要保持清醒底线，得分清刹车和油门。</p><p>&nbsp;</p><p>一个人吃烧烤，豆角、花菜、豆腐串、烤肉、韭菜、茄子、鱼片，每次都必点，老板已经很熟悉了，去的时候会安排和别人拼桌，然后直接把单子报一遍。</p><p>&nbsp;</p><p>一个人旅行，下榻在桂林，那夜雷雨，全区停电。起初因为雷电太响，就躲得离窗户远一些。后来干脆拉开窗帘，坐在窗台上，眼前一片漆黑，只有闪电在天空肆意纵横，雨势滂沱，雷声滚滚。</p><p>&nbsp;</p><p>我想着那些黑洞洞的窗口里，人们都蜷缩躲着，就忽而觉得这是一场盛宴，美得惊心动魄，不药可救。</p><p>&nbsp;</p><p>人生中大部分时候，我都无比厌恶自己，那一刻我觉得自己很棒。</p><p>&nbsp;</p><p>03</p><p>&nbsp;</p><p>2018年的第一天，我看到一个大四的小姑娘在朋友圈许愿：“我的新年愿望，是希望能买一台全自动洗衣机，实在不想碰冰水了。”</p><p>&nbsp;</p><p>那是我用刀片划拉手腕重生的第二天，我决定帮她实现愿望。</p><p>&nbsp;</p><p>我让她下单后找我代付，很快就看见她更新朋友圈：“新年愿望达成，再也不用碰冰水了。”</p><p>&nbsp;</p><p>前些天，我又看到她一个人去一个偏远的地方上班，打不到车，叫不了外卖。住的地方什么也没有，生活用品和铺盖都得自己张罗，做到年底可以拿4千块。</p><p>&nbsp;</p><p>她找我诉苦：“太冷了，太孤独了，太荒凉了，原本是想毕业了不好意思再让父母养着就出来试试，说不定以后还可以考到这里工作，没想到这么艰难，突然就迷茫了。”</p><p>&nbsp;</p><p>我说：“不要迷茫，要想清楚，如果只为赚那点工资，就早点撤离，生活和感情一样，都需要及时止损。一天都忍受不了的人，别想着可以将就一辈子。一天都呆不下去的地方，别想着可以凑合一辈子。”</p><p>&nbsp;</p><p>她说：“可是我不想回家，我妈知道我辞职会杀了我。”</p><p>&nbsp;</p><p>我说：“那你回学校准备考工作，就考你想去的地方，经过这样一番折腾，你应该就有动力复习了。”</p><p>&nbsp;</p><p>她说：“可是我没有车费。”</p><p>&nbsp;</p><p>于是，我又给她转了4千块。</p><p>&nbsp;</p><p>转完钱我就把她拉黑了，因为我并不关心她以后过得怎么样。我肯帮她，只是庆幸自己好不容易熬过那个冰冷的夜晚，想在这样一个寒冷的冬天，给陌生人施与一些暖意。</p><p>&nbsp;</p><p>她辞职后，应该会一个人把买好的东西打包好，再搬回学校，应该会一个人做饭、看书、刷题，工作考了一次又一次，然后被无情刷掉。</p><p>&nbsp;</p><p>可是，这些都没什么大不了，生命中有一段严重孤独的时光是好事。它得隔绝外界的打扰和帮助，是一个人从培养社会性转向自我探索的非常好的契机。</p><p>&nbsp;</p><p>经过这个过程，你可以完成对自己的重新评估，学会信任自己，习惯独自行动，看轻外部评价，实现人生的种种可能。</p><p>&nbsp;</p><p>04</p><p>&nbsp;</p><p>电影《冈仁波齐》中，有一个镜头让我很感动。一个朝圣者趴在地上，看着一只蚂蚁缓缓在他面前爬过。</p><p>&nbsp;</p><p>我感动的点，不是他给一只蚂蚁让路，毕竟这种行为沾染了都市文明中马路文化的傲慢。我感动的，是他“意识”到蚂蚁的存在，那是一只蚂蚁，不是一个1厘米不到的黑点图形。</p><p>&nbsp;</p><p>在他意识到蚂蚁的那一刻，他的孤独是有质感的，因为他感受到了大自然中其他生命的繁忙。</p><p>&nbsp;</p><p>那朱雀桥边，乌衣巷口， 金陵玉树，秦淮水榭，多少热闹是非成败，转头都变成了英雄冢。可是海滩的岩石，巍峨的高山，奔腾的激流，却从来都是那样，他们孤独而不朽。</p><p>&nbsp;</p><p>孤独真的很糟糕吗？我很喜欢短片里的回答。</p><p>&nbsp;</p><p>其实，什么样的状态，都总是有寂寞、失落、安静、绝望的日子。</p><p>&nbsp;</p><p>你离群索居，独自前行，是因为你知道所谓孤独，不过是害怕孤独，于是你耐住了寂寞，挨过了失落，学会了安静，扛住了绝望。</p><p>&nbsp;</p><p>寂寞是一种情绪，孤独是一种境境界。人终要是走出咖啡屋，尘世的喜怒哀乐的冲击往往更加强烈，更让人难以忘怀。</p><p>&nbsp;</p><p>只有耐得住寂寞，忍得了孤独，你才能让心静下来，学到更多的东西，获得独一份的成长。</p><p>&nbsp;</p><p>世界上没有两片相同的树叶，没有什么比自己陪伴自己，更让人幸福。</p><p>&nbsp;</p><p>05</p><p>&nbsp;</p><p>生而为人，我们太喜欢形式上的丰盈，并在无人问津的时刻变得脆弱，这是对自己不负责任的表现。</p><p>&nbsp;</p><p>一个人来时，不管他身后多么丰盈，早晚也要独自面对这个世界，完全依靠自己内心的力量存活下去。</p><p>&nbsp;</p><p>千万不要一遇到困难，就慌不择路到处找人求助，不敢自由思考和独立行动。千万不要刚探出一点头，又被几句外界评价打消，迅速缩回安全但逼仄的壳里。</p><p>&nbsp;</p><p>正如短片里说的那样，所谓孤独，不过是一场无人送粥的重感冒。疼总是外界给的，但病总是自己好的。我要放肆吃喝，放肆笑闹，我要跟我的灵魂说话，我孤独但我不寂寞。</p><p>&nbsp;</p><p>要么孤独，要么庸俗。扛得住孤独，世界才能被你左右。</p><p>世界上只有一种英雄主义，就是在认清生活真相之后依然选择热爱生活。</p><p>&nbsp;</p><p>&nbsp;</p>', '2022-05-03 01:22:21', 1, 0, 8, '/upload/5b6e22bae1880b584a01ba042083eee1.jpg');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '类目名称',
  `index` int NOT NULL DEFAULT '0' COMMENT '排序，值越大越靠前',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='文章类目表';

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, 'WEB前端', 3);
INSERT INTO `category` VALUES (2, 'PHP', 2);
INSERT INTO `category` VALUES (3, 'NodeJS', 1);
INSERT INTO `category` VALUES (4, 'Java', 0);
INSERT INTO `category` VALUES (6, '测试类目2', 5);
INSERT INTO `category` VALUES (8, '随笔', 7);
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `handle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='日志表';

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES (1, '登录', '2020-02-27 11:22:46', '114.235.246.154');
INSERT INTO `log` VALUES (2, '添加类目', '2020-02-06 16:11:50', '114.235.246.154');
INSERT INTO `log` VALUES (3, '添加博文', '2020-02-06 16:12:00', '114.235.246.154');
INSERT INTO `log` VALUES (4, '添加博文', '2020-02-27 11:22:21', '114.235.246.154');
INSERT INTO `log` VALUES (5, '登录', '2020-02-27 11:23:10', '49.81.173.95');
INSERT INTO `log` VALUES (6, '编辑博文', '2020-02-27 11:23:29', '49.81.173.95');
INSERT INTO `log` VALUES (7, '添加类目', '2020-02-27 11:23:47', '49.81.173.95');
INSERT INTO `log` VALUES (8, '添加博文', '2020-02-27 11:24:02', '49.81.173.95');
INSERT INTO `log` VALUES (9, '登录', '2020-03-04 01:00:04', '127.0.0.1');
INSERT INTO `log` VALUES (10, '登录', '2020-03-04 01:18:27', '127.0.0.1');
INSERT INTO `log` VALUES (11, '登录', '2020-03-04 01:25:39', '127.0.0.1');
INSERT INTO `log` VALUES (12, '登录', '2022-04-21 11:17:20', '127.0.0.1');
INSERT INTO `log` VALUES (13, '登录', '2022-05-03 00:29:25', NULL);
COMMIT;

-- ----------------------------
-- Table structure for pv
-- ----------------------------
DROP TABLE IF EXISTS `pv`;
CREATE TABLE `pv` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `time` date NOT NULL COMMENT '日期',
  `hits` int NOT NULL DEFAULT '0' COMMENT '点击量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='访问记录表';

-- ----------------------------
-- Records of pv
-- ----------------------------
BEGIN;
INSERT INTO `pv` VALUES (1, '2018-06-01', 2);
INSERT INTO `pv` VALUES (2, '2018-06-02', 5);
INSERT INTO `pv` VALUES (3, '2018-06-03', 7);
INSERT INTO `pv` VALUES (4, '2018-06-04', 11);
INSERT INTO `pv` VALUES (5, '2018-06-05', 3);
INSERT INTO `pv` VALUES (6, '2018-06-06', 8);
INSERT INTO `pv` VALUES (7, '2018-06-07', 12);
INSERT INTO `pv` VALUES (8, '2018-06-08', 9);
INSERT INTO `pv` VALUES (9, '2018-06-09', 7);
INSERT INTO `pv` VALUES (10, '2018-06-10', 12);
INSERT INTO `pv` VALUES (11, '2018-06-11', 5);
INSERT INTO `pv` VALUES (12, '2018-06-12', 3);
INSERT INTO `pv` VALUES (13, '2018-06-13', 17);
INSERT INTO `pv` VALUES (14, '2018-06-14', 47);
INSERT INTO `pv` VALUES (15, '2018-06-15', 17);
INSERT INTO `pv` VALUES (16, '2018-06-16', 9);
INSERT INTO `pv` VALUES (17, '2018-06-17', 13);
INSERT INTO `pv` VALUES (18, '2018-06-18', 10);
INSERT INTO `pv` VALUES (19, '2018-06-19', 12);
INSERT INTO `pv` VALUES (20, '2018-06-20', 14);
INSERT INTO `pv` VALUES (21, '2018-06-21', 12);
INSERT INTO `pv` VALUES (22, '2018-06-22', 20);
INSERT INTO `pv` VALUES (23, '2018-06-23', 16);
INSERT INTO `pv` VALUES (24, '2018-06-24', 19);
INSERT INTO `pv` VALUES (25, '2018-06-25', 22);
INSERT INTO `pv` VALUES (26, '2018-06-26', 19);
INSERT INTO `pv` VALUES (27, '2018-06-27', 17);
INSERT INTO `pv` VALUES (28, '2018-06-28', 20);
INSERT INTO `pv` VALUES (29, '2018-06-29', 17);
INSERT INTO `pv` VALUES (30, '2018-06-30', 16);
INSERT INTO `pv` VALUES (31, '2018-07-01', 21);
INSERT INTO `pv` VALUES (32, '2018-07-02', 46);
INSERT INTO `pv` VALUES (33, '2018-07-03', 76);
INSERT INTO `pv` VALUES (34, '2018-07-04', 74);
INSERT INTO `pv` VALUES (35, '2018-07-05', 70);
INSERT INTO `pv` VALUES (36, '2018-07-06', 68);
INSERT INTO `pv` VALUES (37, '2018-07-07', 44);
INSERT INTO `pv` VALUES (38, '2018-07-08', 40);
INSERT INTO `pv` VALUES (39, '2018-07-09', 58);
INSERT INTO `pv` VALUES (40, '2018-07-10', 96);
INSERT INTO `pv` VALUES (41, '2018-07-11', 118);
INSERT INTO `pv` VALUES (42, '2018-07-12', 116);
INSERT INTO `pv` VALUES (43, '2018-07-13', 122);
INSERT INTO `pv` VALUES (44, '2018-07-14', 85);
INSERT INTO `pv` VALUES (45, '2018-07-15', 71);
INSERT INTO `pv` VALUES (46, '2018-07-16', 128);
INSERT INTO `pv` VALUES (47, '2018-07-17', 63);
INSERT INTO `pv` VALUES (48, '2018-07-18', 98);
INSERT INTO `pv` VALUES (49, '2018-07-19', 114);
INSERT INTO `pv` VALUES (50, '2018-07-20', 134);
INSERT INTO `pv` VALUES (51, '2018-07-21', 89);
INSERT INTO `pv` VALUES (52, '2018-07-22', 95);
INSERT INTO `pv` VALUES (53, '2018-07-23', 132);
INSERT INTO `pv` VALUES (54, '2018-07-24', 107);
INSERT INTO `pv` VALUES (55, '2018-07-25', 98);
INSERT INTO `pv` VALUES (56, '2018-07-26', 98);
INSERT INTO `pv` VALUES (57, '2018-07-27', 100);
INSERT INTO `pv` VALUES (58, '2018-07-28', 86);
INSERT INTO `pv` VALUES (59, '2018-07-29', 75);
INSERT INTO `pv` VALUES (60, '2018-07-30', 94);
INSERT INTO `pv` VALUES (61, '2018-07-31', 106);
INSERT INTO `pv` VALUES (62, '2018-08-01', 98);
INSERT INTO `pv` VALUES (63, '2018-08-02', 103);
INSERT INTO `pv` VALUES (64, '2018-08-03', 101);
INSERT INTO `pv` VALUES (65, '2018-08-04', 78);
INSERT INTO `pv` VALUES (66, '2018-08-05', 82);
INSERT INTO `pv` VALUES (67, '2018-08-06', 26);
INSERT INTO `pv` VALUES (68, '2018-08-07', 8);
INSERT INTO `pv` VALUES (69, '2018-08-08', 10);
INSERT INTO `pv` VALUES (70, '2018-08-09', 9);
INSERT INTO `pv` VALUES (71, '2018-08-10', 11);
INSERT INTO `pv` VALUES (72, '2018-08-11', 21);
INSERT INTO `pv` VALUES (73, '2018-08-12', 39);
INSERT INTO `pv` VALUES (74, '2018-08-13', 34);
INSERT INTO `pv` VALUES (75, '2018-08-14', 29);
INSERT INTO `pv` VALUES (76, '2018-08-15', 16);
INSERT INTO `pv` VALUES (77, '2018-08-16', 18);
INSERT INTO `pv` VALUES (78, '2018-08-17', 16);
INSERT INTO `pv` VALUES (79, '2018-08-18', 14);
INSERT INTO `pv` VALUES (80, '2018-08-19', 13);
INSERT INTO `pv` VALUES (81, '2018-08-20', 24);
INSERT INTO `pv` VALUES (82, '2018-08-21', 33);
INSERT INTO `pv` VALUES (83, '2018-08-22', 20);
INSERT INTO `pv` VALUES (84, '2018-08-23', 25);
INSERT INTO `pv` VALUES (85, '2018-08-24', 17);
INSERT INTO `pv` VALUES (86, '2018-08-25', 21);
INSERT INTO `pv` VALUES (87, '2018-08-26', 19);
INSERT INTO `pv` VALUES (88, '2018-08-27', 21);
INSERT INTO `pv` VALUES (89, '2018-08-28', 14);
INSERT INTO `pv` VALUES (90, '2018-08-29', 13);
INSERT INTO `pv` VALUES (91, '2018-08-30', 9);
INSERT INTO `pv` VALUES (92, '2018-08-31', 13);
INSERT INTO `pv` VALUES (93, '2018-09-01', 19);
INSERT INTO `pv` VALUES (94, '2018-09-02', 8);
INSERT INTO `pv` VALUES (95, '2018-09-03', 18);
INSERT INTO `pv` VALUES (96, '2018-09-04', 17);
INSERT INTO `pv` VALUES (97, '2018-09-05', 23);
INSERT INTO `pv` VALUES (98, '2018-09-06', 30);
INSERT INTO `pv` VALUES (99, '2018-09-07', 20);
INSERT INTO `pv` VALUES (100, '2018-09-08', 15);
INSERT INTO `pv` VALUES (101, '2018-09-09', 27);
INSERT INTO `pv` VALUES (102, '2018-09-10', 23);
INSERT INTO `pv` VALUES (103, '2018-09-11', 18);
INSERT INTO `pv` VALUES (104, '2018-09-12', 35);
INSERT INTO `pv` VALUES (105, '2018-09-13', 19);
INSERT INTO `pv` VALUES (106, '2018-09-14', 10);
INSERT INTO `pv` VALUES (107, '2018-09-15', 16);
INSERT INTO `pv` VALUES (108, '2018-09-16', 19);
INSERT INTO `pv` VALUES (109, '2018-09-17', 17);
INSERT INTO `pv` VALUES (110, '2018-09-18', 38);
INSERT INTO `pv` VALUES (111, '2018-09-19', 29);
INSERT INTO `pv` VALUES (112, '2018-09-20', 49);
INSERT INTO `pv` VALUES (113, '2018-09-21', 13);
INSERT INTO `pv` VALUES (114, '2018-09-22', 40);
INSERT INTO `pv` VALUES (115, '2018-09-23', 12);
INSERT INTO `pv` VALUES (116, '2018-09-24', 11);
INSERT INTO `pv` VALUES (117, '2018-09-25', 61);
INSERT INTO `pv` VALUES (118, '2018-09-26', 22);
INSERT INTO `pv` VALUES (119, '2018-09-27', 51);
INSERT INTO `pv` VALUES (120, '2018-09-28', 71);
INSERT INTO `pv` VALUES (121, '2018-09-29', 110);
INSERT INTO `pv` VALUES (122, '2018-09-30', 36);
INSERT INTO `pv` VALUES (123, '2018-10-01', 98);
INSERT INTO `pv` VALUES (124, '2018-10-02', 60);
INSERT INTO `pv` VALUES (125, '2018-10-03', 48);
INSERT INTO `pv` VALUES (126, '2018-10-04', 48);
INSERT INTO `pv` VALUES (127, '2018-10-05', 54);
INSERT INTO `pv` VALUES (128, '2018-10-06', 46);
INSERT INTO `pv` VALUES (129, '2018-10-07', 40);
INSERT INTO `pv` VALUES (130, '2018-10-08', 53);
INSERT INTO `pv` VALUES (131, '2018-10-09', 14);
INSERT INTO `pv` VALUES (132, '2018-10-10', 15);
INSERT INTO `pv` VALUES (133, '2018-10-11', 7);
INSERT INTO `pv` VALUES (134, '2018-10-12', 19);
INSERT INTO `pv` VALUES (135, '2018-10-13', 125);
INSERT INTO `pv` VALUES (136, '2018-10-14', 48);
INSERT INTO `pv` VALUES (137, '2018-10-15', 39);
INSERT INTO `pv` VALUES (138, '2018-10-16', 56);
INSERT INTO `pv` VALUES (139, '2018-10-17', 30);
INSERT INTO `pv` VALUES (140, '2018-10-18', 101);
INSERT INTO `pv` VALUES (141, '2018-10-19', 18);
INSERT INTO `pv` VALUES (142, '2018-10-20', 34);
INSERT INTO `pv` VALUES (143, '2018-10-21', 30);
INSERT INTO `pv` VALUES (144, '2018-10-22', 18);
INSERT INTO `pv` VALUES (145, '2018-10-23', 35);
INSERT INTO `pv` VALUES (146, '2018-10-24', 27);
INSERT INTO `pv` VALUES (147, '2018-10-25', 22);
INSERT INTO `pv` VALUES (148, '2018-10-26', 31);
INSERT INTO `pv` VALUES (149, '2018-10-27', 38);
INSERT INTO `pv` VALUES (150, '2018-10-28', 35);
INSERT INTO `pv` VALUES (151, '2018-10-29', 48);
INSERT INTO `pv` VALUES (152, '2018-10-30', 53);
INSERT INTO `pv` VALUES (153, '2018-10-31', 25);
INSERT INTO `pv` VALUES (154, '2018-11-01', 24);
INSERT INTO `pv` VALUES (155, '2018-11-02', 19);
INSERT INTO `pv` VALUES (156, '2018-11-03', 34);
INSERT INTO `pv` VALUES (157, '2018-11-04', 11);
INSERT INTO `pv` VALUES (158, '2018-11-05', 22);
INSERT INTO `pv` VALUES (159, '2018-11-06', 45);
INSERT INTO `pv` VALUES (160, '2018-11-07', 48);
INSERT INTO `pv` VALUES (161, '2018-11-08', 38);
INSERT INTO `pv` VALUES (162, '2018-11-09', 20);
INSERT INTO `pv` VALUES (163, '2018-11-10', 60);
INSERT INTO `pv` VALUES (164, '2018-11-11', 17);
INSERT INTO `pv` VALUES (165, '2018-11-12', 14);
INSERT INTO `pv` VALUES (166, '2018-11-13', 38);
INSERT INTO `pv` VALUES (167, '2018-11-14', 15);
INSERT INTO `pv` VALUES (168, '2018-11-15', 24);
INSERT INTO `pv` VALUES (169, '2018-11-16', 29);
INSERT INTO `pv` VALUES (170, '2018-11-17', 12);
INSERT INTO `pv` VALUES (171, '2018-11-18', 12);
INSERT INTO `pv` VALUES (172, '2018-11-19', 16);
INSERT INTO `pv` VALUES (173, '2018-11-20', 24);
INSERT INTO `pv` VALUES (174, '2018-11-21', 12);
INSERT INTO `pv` VALUES (175, '2018-11-22', 20);
INSERT INTO `pv` VALUES (176, '2018-11-23', 11);
INSERT INTO `pv` VALUES (177, '2018-11-24', 68);
INSERT INTO `pv` VALUES (178, '2018-11-25', 28);
INSERT INTO `pv` VALUES (179, '2018-11-26', 26);
INSERT INTO `pv` VALUES (180, '2018-11-27', 43);
INSERT INTO `pv` VALUES (181, '2018-11-28', 25);
INSERT INTO `pv` VALUES (182, '2018-11-29', 30);
INSERT INTO `pv` VALUES (183, '2018-11-30', 50);
INSERT INTO `pv` VALUES (184, '2018-12-01', 56);
INSERT INTO `pv` VALUES (185, '2018-12-02', 37);
INSERT INTO `pv` VALUES (186, '2018-12-03', 37);
INSERT INTO `pv` VALUES (187, '2018-12-04', 45);
INSERT INTO `pv` VALUES (188, '2018-12-05', 93);
INSERT INTO `pv` VALUES (189, '2018-12-06', 91);
INSERT INTO `pv` VALUES (190, '2018-12-07', 30);
INSERT INTO `pv` VALUES (191, '2018-12-08', 30);
INSERT INTO `pv` VALUES (192, '2018-12-09', 35);
INSERT INTO `pv` VALUES (193, '2018-12-10', 24);
INSERT INTO `pv` VALUES (194, '2018-12-11', 31);
INSERT INTO `pv` VALUES (195, '2018-12-12', 51);
INSERT INTO `pv` VALUES (196, '2018-12-13', 30);
INSERT INTO `pv` VALUES (197, '2018-12-14', 10);
INSERT INTO `pv` VALUES (198, '2018-12-15', 20);
INSERT INTO `pv` VALUES (199, '2018-12-16', 12);
INSERT INTO `pv` VALUES (200, '2018-12-17', 13);
INSERT INTO `pv` VALUES (201, '2018-12-18', 21);
INSERT INTO `pv` VALUES (202, '2018-12-19', 17);
INSERT INTO `pv` VALUES (203, '2018-12-20', 41);
INSERT INTO `pv` VALUES (204, '2018-12-21', 25);
INSERT INTO `pv` VALUES (205, '2018-12-22', 23);
INSERT INTO `pv` VALUES (206, '2018-12-23', 12);
INSERT INTO `pv` VALUES (207, '2018-12-24', 49);
INSERT INTO `pv` VALUES (208, '2018-12-25', 41);
INSERT INTO `pv` VALUES (209, '2018-12-26', 39);
INSERT INTO `pv` VALUES (210, '2018-12-27', 25);
INSERT INTO `pv` VALUES (211, '2018-12-28', 31);
INSERT INTO `pv` VALUES (212, '2018-12-29', 27);
INSERT INTO `pv` VALUES (213, '2018-12-30', 30);
INSERT INTO `pv` VALUES (214, '2018-12-31', 20);
INSERT INTO `pv` VALUES (215, '2019-01-01', 16);
INSERT INTO `pv` VALUES (216, '2019-01-02', 43);
INSERT INTO `pv` VALUES (217, '2019-01-03', 29);
INSERT INTO `pv` VALUES (218, '2019-01-04', 36);
INSERT INTO `pv` VALUES (219, '2019-01-05', 25);
INSERT INTO `pv` VALUES (220, '2019-01-06', 29);
INSERT INTO `pv` VALUES (221, '2019-01-07', 49);
INSERT INTO `pv` VALUES (222, '2019-01-08', 32);
INSERT INTO `pv` VALUES (223, '2019-01-09', 29);
INSERT INTO `pv` VALUES (224, '2019-01-10', 40);
INSERT INTO `pv` VALUES (225, '2019-01-11', 25);
INSERT INTO `pv` VALUES (226, '2019-01-12', 37);
INSERT INTO `pv` VALUES (227, '2019-01-13', 43);
INSERT INTO `pv` VALUES (228, '2019-01-14', 19);
INSERT INTO `pv` VALUES (229, '2019-01-15', 17);
INSERT INTO `pv` VALUES (230, '2019-01-16', 40);
INSERT INTO `pv` VALUES (231, '2019-01-17', 53);
INSERT INTO `pv` VALUES (232, '2019-01-18', 17);
INSERT INTO `pv` VALUES (233, '2019-01-19', 73);
INSERT INTO `pv` VALUES (234, '2019-01-20', 25);
INSERT INTO `pv` VALUES (235, '2019-01-21', 59);
INSERT INTO `pv` VALUES (236, '2019-01-22', 89);
INSERT INTO `pv` VALUES (237, '2019-01-23', 47);
INSERT INTO `pv` VALUES (238, '2019-01-24', 81);
INSERT INTO `pv` VALUES (239, '2019-01-25', 56);
INSERT INTO `pv` VALUES (240, '2019-01-26', 31);
INSERT INTO `pv` VALUES (241, '2019-01-27', 63);
INSERT INTO `pv` VALUES (242, '2019-01-28', 44);
INSERT INTO `pv` VALUES (243, '2019-01-29', 30);
INSERT INTO `pv` VALUES (244, '2019-01-30', 27);
INSERT INTO `pv` VALUES (245, '2019-01-31', 29);
INSERT INTO `pv` VALUES (246, '2019-02-01', 64);
INSERT INTO `pv` VALUES (247, '2019-02-02', 14);
INSERT INTO `pv` VALUES (248, '2019-02-03', 13);
INSERT INTO `pv` VALUES (249, '2019-02-04', 21);
INSERT INTO `pv` VALUES (250, '2019-02-05', 50);
INSERT INTO `pv` VALUES (251, '2019-02-06', 14);
INSERT INTO `pv` VALUES (252, '2019-02-07', 42);
INSERT INTO `pv` VALUES (253, '2019-02-08', 25);
INSERT INTO `pv` VALUES (254, '2019-02-09', 22);
INSERT INTO `pv` VALUES (255, '2019-02-10', 25);
INSERT INTO `pv` VALUES (256, '2019-02-11', 44);
INSERT INTO `pv` VALUES (257, '2019-02-12', 32);
INSERT INTO `pv` VALUES (258, '2019-02-13', 42);
INSERT INTO `pv` VALUES (259, '2019-02-14', 36);
INSERT INTO `pv` VALUES (260, '2019-02-15', 34);
INSERT INTO `pv` VALUES (261, '2019-02-16', 82);
INSERT INTO `pv` VALUES (262, '2019-02-17', 35);
INSERT INTO `pv` VALUES (263, '2019-02-18', 47);
INSERT INTO `pv` VALUES (264, '2019-02-19', 38);
INSERT INTO `pv` VALUES (265, '2019-02-20', 39);
INSERT INTO `pv` VALUES (266, '2019-02-21', 24);
INSERT INTO `pv` VALUES (267, '2019-02-22', 27);
INSERT INTO `pv` VALUES (268, '2019-02-23', 28);
INSERT INTO `pv` VALUES (269, '2019-02-24', 7);
INSERT INTO `pv` VALUES (270, '2019-02-25', 21);
INSERT INTO `pv` VALUES (271, '2019-02-26', 58);
INSERT INTO `pv` VALUES (272, '2019-02-27', 38);
INSERT INTO `pv` VALUES (273, '2019-02-28', 78);
INSERT INTO `pv` VALUES (274, '2019-03-01', 27);
INSERT INTO `pv` VALUES (275, '2019-03-02', 30);
INSERT INTO `pv` VALUES (276, '2019-03-03', 40);
INSERT INTO `pv` VALUES (277, '2019-03-04', 60);
INSERT INTO `pv` VALUES (278, '2019-03-05', 88);
INSERT INTO `pv` VALUES (279, '2019-03-06', 85);
INSERT INTO `pv` VALUES (280, '2019-03-07', 77);
INSERT INTO `pv` VALUES (281, '2019-03-08', 87);
INSERT INTO `pv` VALUES (282, '2019-03-09', 69);
INSERT INTO `pv` VALUES (283, '2019-03-10', 62);
INSERT INTO `pv` VALUES (284, '2019-03-11', 52);
INSERT INTO `pv` VALUES (285, '2019-03-12', 54);
INSERT INTO `pv` VALUES (286, '2019-03-13', 66);
INSERT INTO `pv` VALUES (287, '2019-03-14', 42);
INSERT INTO `pv` VALUES (288, '2019-03-15', 73);
INSERT INTO `pv` VALUES (289, '2019-03-16', 54);
INSERT INTO `pv` VALUES (290, '2019-03-17', 57);
INSERT INTO `pv` VALUES (291, '2019-03-18', 80);
INSERT INTO `pv` VALUES (292, '2019-03-19', 91);
INSERT INTO `pv` VALUES (293, '2019-03-20', 94);
INSERT INTO `pv` VALUES (294, '2019-03-21', 65);
INSERT INTO `pv` VALUES (295, '2019-03-22', 48);
INSERT INTO `pv` VALUES (296, '2019-03-23', 27);
INSERT INTO `pv` VALUES (297, '2019-03-24', 29);
INSERT INTO `pv` VALUES (298, '2019-03-25', 29);
INSERT INTO `pv` VALUES (299, '2019-03-26', 23);
INSERT INTO `pv` VALUES (300, '2019-03-27', 27);
INSERT INTO `pv` VALUES (301, '2019-03-28', 21);
INSERT INTO `pv` VALUES (302, '2019-03-29', 49);
INSERT INTO `pv` VALUES (303, '2019-03-30', 44);
INSERT INTO `pv` VALUES (304, '2019-03-31', 12);
INSERT INTO `pv` VALUES (305, '2019-04-01', 76);
INSERT INTO `pv` VALUES (306, '2019-04-02', 94);
INSERT INTO `pv` VALUES (307, '2019-04-03', 42);
INSERT INTO `pv` VALUES (308, '2019-04-04', 33);
INSERT INTO `pv` VALUES (309, '2019-04-05', 16);
INSERT INTO `pv` VALUES (310, '2019-04-06', 27);
INSERT INTO `pv` VALUES (311, '2019-04-07', 11);
INSERT INTO `pv` VALUES (312, '2019-04-08', 73);
INSERT INTO `pv` VALUES (313, '2019-04-09', 34);
INSERT INTO `pv` VALUES (314, '2019-04-10', 21);
INSERT INTO `pv` VALUES (315, '2019-04-11', 21);
INSERT INTO `pv` VALUES (316, '2019-04-12', 47);
INSERT INTO `pv` VALUES (317, '2019-04-13', 25);
INSERT INTO `pv` VALUES (318, '2019-04-14', 19);
INSERT INTO `pv` VALUES (319, '2019-04-15', 30);
INSERT INTO `pv` VALUES (320, '2019-04-16', 40);
INSERT INTO `pv` VALUES (321, '2019-04-17', 42);
INSERT INTO `pv` VALUES (322, '2019-04-18', 48);
INSERT INTO `pv` VALUES (323, '2019-04-19', 36);
INSERT INTO `pv` VALUES (324, '2019-04-20', 12);
INSERT INTO `pv` VALUES (325, '2019-04-21', 11);
INSERT INTO `pv` VALUES (326, '2019-04-22', 55);
INSERT INTO `pv` VALUES (327, '2019-04-23', 30);
INSERT INTO `pv` VALUES (328, '2019-04-24', 41);
INSERT INTO `pv` VALUES (329, '2019-04-25', 21);
INSERT INTO `pv` VALUES (330, '2019-04-26', 21);
INSERT INTO `pv` VALUES (331, '2019-04-27', 20);
INSERT INTO `pv` VALUES (332, '2019-04-28', 12);
INSERT INTO `pv` VALUES (333, '2019-04-29', 21);
INSERT INTO `pv` VALUES (334, '2019-04-30', 28);
INSERT INTO `pv` VALUES (335, '2019-05-01', 47);
INSERT INTO `pv` VALUES (336, '2019-05-02', 19);
INSERT INTO `pv` VALUES (337, '2019-05-03', 10);
INSERT INTO `pv` VALUES (338, '2019-05-04', 38);
INSERT INTO `pv` VALUES (339, '2019-05-05', 25);
INSERT INTO `pv` VALUES (340, '2019-05-06', 36);
INSERT INTO `pv` VALUES (341, '2019-05-07', 134);
INSERT INTO `pv` VALUES (342, '2019-05-08', 111);
INSERT INTO `pv` VALUES (343, '2019-05-09', 70);
INSERT INTO `pv` VALUES (344, '2019-05-10', 71);
INSERT INTO `pv` VALUES (345, '2019-05-11', 82);
INSERT INTO `pv` VALUES (346, '2019-05-12', 72);
INSERT INTO `pv` VALUES (347, '2019-05-13', 0);
INSERT INTO `pv` VALUES (348, '2019-05-14', 0);
INSERT INTO `pv` VALUES (349, '2019-05-15', 0);
INSERT INTO `pv` VALUES (350, '2019-05-16', 0);
INSERT INTO `pv` VALUES (351, '2019-05-17', 0);
INSERT INTO `pv` VALUES (352, '2019-05-18', 0);
INSERT INTO `pv` VALUES (353, '2019-05-19', 0);
INSERT INTO `pv` VALUES (354, '2019-05-20', 0);
INSERT INTO `pv` VALUES (355, '2019-05-21', 0);
INSERT INTO `pv` VALUES (356, '2019-05-22', 0);
INSERT INTO `pv` VALUES (357, '2019-05-23', 0);
INSERT INTO `pv` VALUES (358, '2019-05-24', 0);
INSERT INTO `pv` VALUES (359, '2019-05-25', 0);
INSERT INTO `pv` VALUES (360, '2019-05-26', 0);
INSERT INTO `pv` VALUES (361, '2019-05-27', 0);
INSERT INTO `pv` VALUES (362, '2019-05-28', 85);
INSERT INTO `pv` VALUES (363, '2019-05-29', 47);
INSERT INTO `pv` VALUES (364, '2019-05-30', 65);
INSERT INTO `pv` VALUES (365, '2019-05-31', 50);
INSERT INTO `pv` VALUES (366, '2019-06-01', 42);
INSERT INTO `pv` VALUES (367, '2019-06-02', 57);
INSERT INTO `pv` VALUES (368, '2019-06-03', 27);
INSERT INTO `pv` VALUES (369, '2019-06-04', 132);
INSERT INTO `pv` VALUES (370, '2019-06-05', 158);
INSERT INTO `pv` VALUES (371, '2019-06-06', 103);
INSERT INTO `pv` VALUES (372, '2019-06-07', 46);
INSERT INTO `pv` VALUES (373, '2019-06-08', 91);
INSERT INTO `pv` VALUES (374, '2019-06-09', 65);
INSERT INTO `pv` VALUES (375, '2019-06-10', 112);
INSERT INTO `pv` VALUES (376, '2019-06-11', 77);
INSERT INTO `pv` VALUES (377, '2019-06-12', 94);
INSERT INTO `pv` VALUES (378, '2019-06-13', 55);
INSERT INTO `pv` VALUES (379, '2019-06-14', 69);
INSERT INTO `pv` VALUES (380, '2019-06-15', 43);
INSERT INTO `pv` VALUES (381, '2019-06-16', 51);
INSERT INTO `pv` VALUES (382, '2019-06-17', 70);
INSERT INTO `pv` VALUES (383, '2019-06-18', 61);
INSERT INTO `pv` VALUES (384, '2019-06-19', 62);
INSERT INTO `pv` VALUES (385, '2019-06-20', 54);
INSERT INTO `pv` VALUES (386, '2019-06-21', 51);
INSERT INTO `pv` VALUES (387, '2019-06-22', 39);
INSERT INTO `pv` VALUES (388, '2019-06-23', 57);
INSERT INTO `pv` VALUES (389, '2019-06-24', 54);
INSERT INTO `pv` VALUES (390, '2019-06-25', 149);
INSERT INTO `pv` VALUES (391, '2019-06-26', 131);
INSERT INTO `pv` VALUES (392, '2019-06-27', 99);
INSERT INTO `pv` VALUES (393, '2019-06-28', 106);
INSERT INTO `pv` VALUES (394, '2019-06-29', 57);
INSERT INTO `pv` VALUES (395, '2019-06-30', 56);
INSERT INTO `pv` VALUES (396, '2019-07-01', 50);
INSERT INTO `pv` VALUES (397, '2019-07-02', 52);
INSERT INTO `pv` VALUES (398, '2019-07-03', 68);
INSERT INTO `pv` VALUES (399, '2019-07-04', 69);
INSERT INTO `pv` VALUES (400, '2019-07-05', 99);
INSERT INTO `pv` VALUES (401, '2019-07-06', 94);
INSERT INTO `pv` VALUES (402, '2019-07-07', 74);
INSERT INTO `pv` VALUES (403, '2019-07-08', 90);
INSERT INTO `pv` VALUES (404, '2019-07-09', 106);
INSERT INTO `pv` VALUES (405, '2019-07-10', 76);
INSERT INTO `pv` VALUES (406, '2019-07-11', 101);
INSERT INTO `pv` VALUES (407, '2019-07-12', 78);
INSERT INTO `pv` VALUES (408, '2019-07-13', 114);
INSERT INTO `pv` VALUES (409, '2019-07-14', 29);
INSERT INTO `pv` VALUES (410, '2019-07-15', 79);
INSERT INTO `pv` VALUES (411, '2019-07-16', 110);
INSERT INTO `pv` VALUES (412, '2019-07-17', 60);
INSERT INTO `pv` VALUES (413, '2019-07-18', 84);
INSERT INTO `pv` VALUES (414, '2019-07-19', 63);
INSERT INTO `pv` VALUES (415, '2019-07-20', 93);
INSERT INTO `pv` VALUES (416, '2019-07-21', 35);
INSERT INTO `pv` VALUES (417, '2019-07-22', 40);
INSERT INTO `pv` VALUES (418, '2019-07-23', 87);
INSERT INTO `pv` VALUES (419, '2019-07-24', 78);
INSERT INTO `pv` VALUES (420, '2019-07-25', 135);
INSERT INTO `pv` VALUES (421, '2019-07-26', 88);
INSERT INTO `pv` VALUES (422, '2019-07-27', 85);
INSERT INTO `pv` VALUES (423, '2019-07-28', 53);
INSERT INTO `pv` VALUES (424, '2019-07-29', 85);
INSERT INTO `pv` VALUES (425, '2019-07-30', 98);
INSERT INTO `pv` VALUES (426, '2019-07-31', 48);
INSERT INTO `pv` VALUES (427, '2019-08-01', 56);
INSERT INTO `pv` VALUES (428, '2019-08-02', 77);
INSERT INTO `pv` VALUES (429, '2019-08-03', 57);
INSERT INTO `pv` VALUES (430, '2019-08-04', 34);
INSERT INTO `pv` VALUES (431, '2019-08-05', 76);
INSERT INTO `pv` VALUES (432, '2019-08-06', 87);
INSERT INTO `pv` VALUES (433, '2019-08-07', 0);
INSERT INTO `pv` VALUES (434, '2019-08-08', 85);
INSERT INTO `pv` VALUES (435, '2019-08-09', 115);
INSERT INTO `pv` VALUES (436, '2019-08-10', 43);
INSERT INTO `pv` VALUES (437, '2019-08-11', 41);
INSERT INTO `pv` VALUES (438, '2019-08-12', 105);
INSERT INTO `pv` VALUES (439, '2019-08-13', 66);
INSERT INTO `pv` VALUES (440, '2019-08-14', 83);
INSERT INTO `pv` VALUES (441, '2019-08-15', 76);
INSERT INTO `pv` VALUES (442, '2019-08-16', 111);
INSERT INTO `pv` VALUES (443, '2019-08-17', 53);
INSERT INTO `pv` VALUES (444, '2019-08-18', 40);
INSERT INTO `pv` VALUES (445, '2019-08-19', 108);
INSERT INTO `pv` VALUES (446, '2019-08-20', 59);
INSERT INTO `pv` VALUES (447, '2019-08-21', 73);
INSERT INTO `pv` VALUES (448, '2019-08-22', 82);
INSERT INTO `pv` VALUES (449, '2019-08-23', 81);
INSERT INTO `pv` VALUES (450, '2019-08-24', 34);
INSERT INTO `pv` VALUES (451, '2019-08-25', 25);
INSERT INTO `pv` VALUES (452, '2019-08-26', 82);
INSERT INTO `pv` VALUES (453, '2019-08-27', 81);
INSERT INTO `pv` VALUES (454, '2019-08-28', 91);
INSERT INTO `pv` VALUES (455, '2019-08-29', 64);
INSERT INTO `pv` VALUES (456, '2019-08-30', 62);
INSERT INTO `pv` VALUES (457, '2019-08-31', 22);
INSERT INTO `pv` VALUES (458, '2019-09-01', 25);
INSERT INTO `pv` VALUES (459, '2019-09-02', 79);
INSERT INTO `pv` VALUES (460, '2019-09-03', 53);
INSERT INTO `pv` VALUES (461, '2019-09-04', 63);
INSERT INTO `pv` VALUES (462, '2019-09-05', 78);
INSERT INTO `pv` VALUES (463, '2019-09-06', 70);
INSERT INTO `pv` VALUES (464, '2019-09-07', 35);
INSERT INTO `pv` VALUES (465, '2019-09-08', 45);
INSERT INTO `pv` VALUES (466, '2019-09-09', 47);
INSERT INTO `pv` VALUES (467, '2019-09-10', 116);
INSERT INTO `pv` VALUES (468, '2019-09-11', 80);
INSERT INTO `pv` VALUES (469, '2019-09-12', 42);
INSERT INTO `pv` VALUES (470, '2019-09-13', 16);
INSERT INTO `pv` VALUES (471, '2019-09-14', 36);
INSERT INTO `pv` VALUES (472, '2019-09-15', 128);
INSERT INTO `pv` VALUES (473, '2019-09-16', 109);
INSERT INTO `pv` VALUES (474, '2019-09-17', 94);
INSERT INTO `pv` VALUES (475, '2019-09-18', 126);
INSERT INTO `pv` VALUES (476, '2019-09-19', 96);
INSERT INTO `pv` VALUES (477, '2019-09-20', 174);
INSERT INTO `pv` VALUES (478, '2019-09-21', 33);
INSERT INTO `pv` VALUES (479, '2019-09-22', 24);
INSERT INTO `pv` VALUES (480, '2019-09-23', 66);
INSERT INTO `pv` VALUES (481, '2019-09-24', 76);
INSERT INTO `pv` VALUES (482, '2019-09-25', 81);
INSERT INTO `pv` VALUES (483, '2019-09-26', 62);
INSERT INTO `pv` VALUES (484, '2019-09-27', 70);
INSERT INTO `pv` VALUES (485, '2019-09-28', 30);
INSERT INTO `pv` VALUES (486, '2019-09-29', 77);
INSERT INTO `pv` VALUES (487, '2019-09-30', 69);
INSERT INTO `pv` VALUES (488, '2019-10-01', 22);
INSERT INTO `pv` VALUES (489, '2019-10-02', 19);
INSERT INTO `pv` VALUES (490, '2019-10-03', 20);
INSERT INTO `pv` VALUES (491, '2019-10-04', 10);
INSERT INTO `pv` VALUES (492, '2019-10-05', 23);
INSERT INTO `pv` VALUES (493, '2019-10-06', 25);
INSERT INTO `pv` VALUES (494, '2019-10-07', 12);
INSERT INTO `pv` VALUES (495, '2019-10-08', 47);
INSERT INTO `pv` VALUES (496, '2019-10-09', 44);
INSERT INTO `pv` VALUES (497, '2019-10-10', 29);
INSERT INTO `pv` VALUES (498, '2019-10-11', 52);
INSERT INTO `pv` VALUES (499, '2019-10-12', 29);
INSERT INTO `pv` VALUES (500, '2019-10-13', 18);
INSERT INTO `pv` VALUES (501, '2019-10-14', 32);
INSERT INTO `pv` VALUES (502, '2019-10-15', 48);
INSERT INTO `pv` VALUES (503, '2019-10-16', 45);
INSERT INTO `pv` VALUES (504, '2019-10-17', 30);
INSERT INTO `pv` VALUES (505, '2019-10-18', 39);
INSERT INTO `pv` VALUES (506, '2019-10-19', 9);
INSERT INTO `pv` VALUES (507, '2019-10-20', 9);
INSERT INTO `pv` VALUES (508, '2019-10-21', 58);
INSERT INTO `pv` VALUES (509, '2019-10-22', 19);
INSERT INTO `pv` VALUES (510, '2019-10-23', 47);
INSERT INTO `pv` VALUES (511, '2019-10-24', 46);
INSERT INTO `pv` VALUES (512, '2019-10-25', 57);
INSERT INTO `pv` VALUES (513, '2019-10-26', 15);
INSERT INTO `pv` VALUES (514, '2019-10-27', 24);
INSERT INTO `pv` VALUES (515, '2019-10-28', 47);
INSERT INTO `pv` VALUES (516, '2019-10-29', 49);
INSERT INTO `pv` VALUES (517, '2019-10-30', 69);
INSERT INTO `pv` VALUES (518, '2019-10-31', 53);
INSERT INTO `pv` VALUES (519, '2019-11-01', 58);
INSERT INTO `pv` VALUES (520, '2019-11-02', 28);
INSERT INTO `pv` VALUES (521, '2019-11-03', 6);
INSERT INTO `pv` VALUES (522, '2019-11-04', 51);
INSERT INTO `pv` VALUES (523, '2019-11-05', 33);
INSERT INTO `pv` VALUES (524, '2019-11-06', 50);
INSERT INTO `pv` VALUES (525, '2019-11-07', 47);
INSERT INTO `pv` VALUES (526, '2019-11-08', 54);
INSERT INTO `pv` VALUES (527, '2019-11-09', 17);
INSERT INTO `pv` VALUES (528, '2019-11-10', 12);
INSERT INTO `pv` VALUES (529, '2019-11-11', 72);
INSERT INTO `pv` VALUES (530, '2019-11-12', 37);
INSERT INTO `pv` VALUES (531, '2019-11-13', 52);
INSERT INTO `pv` VALUES (532, '2019-11-14', 47);
INSERT INTO `pv` VALUES (533, '2019-11-15', 52);
INSERT INTO `pv` VALUES (534, '2019-11-16', 33);
INSERT INTO `pv` VALUES (535, '2019-11-17', 29);
INSERT INTO `pv` VALUES (536, '2019-11-18', 43);
INSERT INTO `pv` VALUES (537, '2019-11-19', 44);
INSERT INTO `pv` VALUES (538, '2019-11-20', 32);
INSERT INTO `pv` VALUES (539, '2019-11-21', 25);
INSERT INTO `pv` VALUES (540, '2019-11-22', 38);
INSERT INTO `pv` VALUES (541, '2019-11-23', 22);
INSERT INTO `pv` VALUES (542, '2019-11-24', 11);
INSERT INTO `pv` VALUES (543, '2019-11-25', 25);
INSERT INTO `pv` VALUES (544, '2019-11-26', 29);
INSERT INTO `pv` VALUES (545, '2019-11-27', 36);
INSERT INTO `pv` VALUES (546, '2019-11-28', 23);
INSERT INTO `pv` VALUES (547, '2019-11-29', 25);
INSERT INTO `pv` VALUES (548, '2019-11-30', 21);
INSERT INTO `pv` VALUES (549, '2019-12-01', 8);
INSERT INTO `pv` VALUES (550, '2019-12-02', 40);
INSERT INTO `pv` VALUES (551, '2019-12-03', 24);
INSERT INTO `pv` VALUES (552, '2019-12-04', 31);
INSERT INTO `pv` VALUES (553, '2019-12-05', 26);
INSERT INTO `pv` VALUES (554, '2019-12-06', 69);
INSERT INTO `pv` VALUES (555, '2019-12-07', 29);
INSERT INTO `pv` VALUES (556, '2019-12-08', 33);
INSERT INTO `pv` VALUES (557, '2019-12-09', 48);
INSERT INTO `pv` VALUES (558, '2019-12-10', 59);
INSERT INTO `pv` VALUES (559, '2019-12-11', 39);
INSERT INTO `pv` VALUES (560, '2019-12-12', 34);
INSERT INTO `pv` VALUES (561, '2019-12-13', 55);
INSERT INTO `pv` VALUES (562, '2019-12-14', 30);
INSERT INTO `pv` VALUES (563, '2019-12-15', 22);
INSERT INTO `pv` VALUES (564, '2019-12-16', 42);
INSERT INTO `pv` VALUES (565, '2019-12-17', 54);
INSERT INTO `pv` VALUES (566, '2019-12-18', 46);
INSERT INTO `pv` VALUES (567, '2019-12-19', 49);
INSERT INTO `pv` VALUES (568, '2019-12-20', 38);
INSERT INTO `pv` VALUES (569, '2019-12-21', 38);
INSERT INTO `pv` VALUES (570, '2019-12-22', 23);
INSERT INTO `pv` VALUES (571, '2019-12-23', 29);
INSERT INTO `pv` VALUES (572, '2019-12-24', 33);
INSERT INTO `pv` VALUES (573, '2019-12-25', 51);
INSERT INTO `pv` VALUES (574, '2019-12-26', 33);
INSERT INTO `pv` VALUES (575, '2019-12-27', 40);
INSERT INTO `pv` VALUES (576, '2019-12-28', 28);
INSERT INTO `pv` VALUES (577, '2019-12-29', 31);
INSERT INTO `pv` VALUES (578, '2019-12-30', 49);
INSERT INTO `pv` VALUES (579, '2019-12-31', 39);
INSERT INTO `pv` VALUES (580, '2020-01-01', 25);
INSERT INTO `pv` VALUES (581, '2020-01-02', 45);
INSERT INTO `pv` VALUES (582, '2020-01-03', 45);
INSERT INTO `pv` VALUES (583, '2020-01-04', 42);
INSERT INTO `pv` VALUES (584, '2020-01-05', 32);
INSERT INTO `pv` VALUES (585, '2020-01-06', 66);
INSERT INTO `pv` VALUES (586, '2020-01-07', 50);
INSERT INTO `pv` VALUES (587, '2020-01-08', 34);
INSERT INTO `pv` VALUES (588, '2020-01-09', 37);
INSERT INTO `pv` VALUES (589, '2020-01-10', 24);
INSERT INTO `pv` VALUES (590, '2020-01-11', 17);
INSERT INTO `pv` VALUES (591, '2020-01-12', 9);
INSERT INTO `pv` VALUES (592, '2020-01-13', 29);
INSERT INTO `pv` VALUES (593, '2020-01-14', 24);
INSERT INTO `pv` VALUES (594, '2020-01-15', 37);
INSERT INTO `pv` VALUES (595, '2020-01-16', 23);
INSERT INTO `pv` VALUES (596, '2020-01-17', 32);
INSERT INTO `pv` VALUES (597, '2020-01-18', 35);
INSERT INTO `pv` VALUES (598, '2020-01-19', 17);
INSERT INTO `pv` VALUES (599, '2020-01-20', 13);
INSERT INTO `pv` VALUES (600, '2020-01-21', 18);
INSERT INTO `pv` VALUES (601, '2020-01-22', 6);
INSERT INTO `pv` VALUES (602, '2020-01-23', 15);
INSERT INTO `pv` VALUES (603, '2020-01-24', 14);
INSERT INTO `pv` VALUES (604, '2020-01-25', 9);
INSERT INTO `pv` VALUES (605, '2020-01-26', 12);
INSERT INTO `pv` VALUES (606, '2020-01-27', 22);
INSERT INTO `pv` VALUES (607, '2020-01-28', 15);
INSERT INTO `pv` VALUES (608, '2020-01-29', 18);
INSERT INTO `pv` VALUES (609, '2020-01-30', 7);
INSERT INTO `pv` VALUES (610, '2020-01-31', 19);
INSERT INTO `pv` VALUES (611, '2020-02-01', 19);
INSERT INTO `pv` VALUES (612, '2020-02-02', 24);
INSERT INTO `pv` VALUES (613, '2020-02-03', 19);
INSERT INTO `pv` VALUES (614, '2020-02-04', 18);
INSERT INTO `pv` VALUES (615, '2020-02-05', 19);
INSERT INTO `pv` VALUES (616, '2020-02-06', 15);
INSERT INTO `pv` VALUES (617, '2020-02-07', 10);
INSERT INTO `pv` VALUES (618, '2020-02-08', 17);
INSERT INTO `pv` VALUES (619, '2020-02-09', 15);
INSERT INTO `pv` VALUES (620, '2020-02-10', 36);
INSERT INTO `pv` VALUES (621, '2020-02-11', 30);
INSERT INTO `pv` VALUES (622, '2020-02-12', 47);
INSERT INTO `pv` VALUES (623, '2020-02-13', 58);
INSERT INTO `pv` VALUES (624, '2020-02-14', 43);
INSERT INTO `pv` VALUES (625, '2020-02-15', 38);
INSERT INTO `pv` VALUES (626, '2020-02-16', 47);
INSERT INTO `pv` VALUES (627, '2020-02-17', 46);
INSERT INTO `pv` VALUES (628, '2020-02-18', 34);
INSERT INTO `pv` VALUES (629, '2020-02-19', 45);
INSERT INTO `pv` VALUES (630, '2020-02-20', 33);
INSERT INTO `pv` VALUES (631, '2020-02-21', 59);
INSERT INTO `pv` VALUES (632, '2020-02-22', 52);
INSERT INTO `pv` VALUES (633, '2020-02-23', 45);
INSERT INTO `pv` VALUES (634, '2020-02-24', 39);
INSERT INTO `pv` VALUES (635, '2020-02-25', 39);
INSERT INTO `pv` VALUES (636, '2020-02-26', 53);
INSERT INTO `pv` VALUES (637, '2020-02-27', 1);
COMMIT;

-- ----------------------------
-- Table structure for tabs
-- ----------------------------
DROP TABLE IF EXISTS `tabs`;
CREATE TABLE `tabs` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名称',
  `article_id` int NOT NULL COMMENT '所属文章编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='标签表';

-- ----------------------------
-- Records of tabs
-- ----------------------------
BEGIN;
INSERT INTO `tabs` VALUES (1, 'JavaScript', 1);
INSERT INTO `tabs` VALUES (2, 'web前端', 1);
INSERT INTO `tabs` VALUES (3, 'JS脚本', 1);
INSERT INTO `tabs` VALUES (4, 'CSS3', 2);
INSERT INTO `tabs` VALUES (5, 'web前端', 2);
INSERT INTO `tabs` VALUES (6, 'HTML5', 3);
INSERT INTO `tabs` VALUES (7, 'web前端', 3);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', '123456');
INSERT INTO `user` VALUES (2, 'zhangsan', '123456');
INSERT INTO `user` VALUES (3, 'lisi', '0000');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
