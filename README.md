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

# END