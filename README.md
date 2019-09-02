# 环境准备

PHP 7+

MYSQL 5.5+

NGINX 1.7+ 或 阿帕奇 需要伪静态Thinkphp

# 安装恢复

## 1、恢复MYSQL

1、数据库文件在DB文件夹下avi.sql，Mysql新建数据库avi，并恢复数据库文件。

2、application目录下，修改database.php配置文件

>	// 服务器地址
	'hostname' => '127.0.0.1',
	// 数据库名
	'database' => 'avi',
	// 用户名
	'username' => 'root',
	// 密码
	'password' => '',
	// 端口
	'hostport' => '',

将以上信息修改为你的信息。

## 2、修改配置

1、修改根目录下runtime文件夹为777权限，Windows服务器忽略。

2、打开你的网址进行访问，over


## 3、系统更新

此次更新解决了接口地址改变的问题，同时修改了部分问题。
增加了rtmp直播源的播放方式。

1、删除数据库，avi,新建avi数据库，并恢复DB文件夹下的SQL文件。

2、上传替换application目录下，index和extra两个文件夹内的所有文件。

3、删除runtime下的所有文件。

## Ps. 

由于是在WIN系统下做的，所有没太注意大小写区分的问题

运行后模板404的问题，把文件夹/view/index/，大写I改成小写i就可以了

# END