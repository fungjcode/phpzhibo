<?php
namespace app\index\controller;
use \think\Controller;
use \think\Db;

class Index extends Controller {
	//空方法
	public function _empty() {
		return json(['code' => '0', 'data' => ['msg' => 'error']]);
	}

	//空页面
	public function _404() {
		return $this->fetch('404');
	}

	//主页
	public function index() {
		//刷新列表
		$event = controller('index/Api', 'controller');
		$info = $event->api_Navigation();
		//直播平台数量
		$alldb = Db::name('roomlist')->count();
		// 查询状态为1的用户数据 并且每页显示10条数据
		$list = Db::name('roomlist')->where('')->cache(true, 360)->paginate(44);
		// 获取分页显示
		$page = $list->render();
		// 模板变量赋值
		$this->assign('alldb', $alldb);
		$this->assign('list', $list);
		$this->assign('page', $page);
		// 渲染模板输出
		return $this->fetch();
	}

	//列表页
	public function s() {
		$id = input('param.');
		if (!empty($id['id'])) {
			//正常秩序
			//读取数据
			$db = Db::name('roomlist')->where('id', $id['id'])->find();
			if ($db) {
				//传递数据给接口
				$roomurl = 'http://zbzbzb.xyz/api/room?plat=' . $db['path'];
				$roomname = $db['name'];
				$event = controller('index/Api', 'controller');
				$info = $event->api_RoomList($roomurl, $roomname);
				if ($info != false) {
					// 渲染模板输出
					$this->assign('list', $info['rooms']);
					$this->assign('alldb', $info['total']);
					$this->assign('roomname', $roomname);
					return $this->fetch();
				} else {
					$this->error('直播平台数据获取失败，请稍后再试');
				}
			} else {
				$this->error('没有找到这个直播平台');
			}

		} else {
			$this->error('请求错误');
		}
	}

	//FVL播放
	public function i() {
		$name = input('post.name');
		$url = input('post.url');
		if (!empty($name) and !empty($url)) {
			header('Access-Control-Allow-Origin:*');
			$this->assign('url', $url);
			$this->assign('roomname', $name);
			return $this->fetch();
		} else {
			$this->error('非法提交');
		}
	}
}
