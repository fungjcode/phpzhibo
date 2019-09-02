<?php
namespace app\index\controller;
use think\Cache;
use \think\Controller;
use \think\Db;

class Api extends Controller {
	//空方法
	public function _empty() {
		return json(['code' => '0', 'data' => ['msg' => 'error']]);
	}

	//空页面
	public function _404() {
		return $this->fetch('404');
	}

	//API导航
	public function api_Navigation() {
		//检查导航缓存
		$ceinfo = Cache::get('apiNavigation_info');
		if (empty($ceinfo)) {
			$url = 'http://api.hclyz.com:81/mf/json.txt';
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36');
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
			curl_setopt($ch, CURLOPT_TIMEOUT, 360);
			$result = curl_exec($ch);
			curl_close($ch);
			$arrinfo = json_decode($result, true);
			if ($arrinfo['pingtai']) {
				//设置缓存
				$ceinfo = $arrinfo['pingtai'];
				Cache::set('apiNavigation_info', $ceinfo, 1200);
				$this->api_List($ceinfo);

			} else {
				return json(['code' => '0', 'data' => ['msg' => 'error']]);
				\think\Log::record('获取列表数据失败，接口返回：' . $info, 'api-apiNavigation');
			}

		} else {
			$this->api_List($ceinfo);
		}
	}

	//API直播平台列表
	public function api_List($ceinfo) {
		//删除数据
		Db::query("TRUNCATE TABLE `avi_roomlist`");
		if (!empty($ceinfo)) {
			$allinfo = $ceinfo;
			//写入数据
			$db = Db::name('roomlist')->insertAll($allinfo);
			if ($db) {
				return true;
			} else {
				return json(['code' => '0', 'data' => ['msg' => 'error']]);
			}
		} else {
			return json(['code' => '0', 'data' => ['msg' => 'error']]);
		}
	}

/*
//平台主播列表
public function api_RoomList($roomurl, $roomname) {
$caname = $roomname . "_RoomList_info";
$arrinfoa = Cache::get($caname);
if (empty($arrinfoa)) {
$url = $roomurl;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36');
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
curl_setopt($ch, CURLOPT_TIMEOUT, 360);
$result = curl_exec($ch);
var_dump($url);
curl_close($ch);
$arrinfo = json_decode($result, true);
foreach ($arrinfo['rooms'] as $key => $value) {
if (isset($value['url'])) {
$usrstr = strripos($value['url'], 'flv?');
if ($usrstr == false) {
$live_time = $value['live_time'];
} else {
$live_time = '主播下班了';
}
$allarr[] = [

'live_time' => $live_time,
'name' => $value['name'],
'poster' => $value['poster'],
'rid' => $value['rid'],
'url' => $value['url'],
];

} else {
continue;
}
}
$array = [
'rooms' => $allarr,
'total' => $arrinfo['total'],
];
if ($arrinfo) {
//设置缓存
Cache::set($caname, $array, 3200);
return $array;
} else {
return false;
}

} else {
return $arrinfoa;
}
}
 */
//平台主播列表
	public function api_RoomList($roomurl, $roomid) {
		$caname = $roomid . "_RoomList_info";
		$arrinfoa = Cache::get($caname);
		if (empty($arrinfoa)) {
			$url = $roomurl;
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36');
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
			curl_setopt($ch, CURLOPT_TIMEOUT, 360);
			$result = curl_exec($ch);
			curl_close($ch);
			$arrinfo = json_decode($result, true);
			if ($arrinfo) {
				foreach ($arrinfo['zhubo'] as $key => $value) {
					//判断播放URL属性
					$rida = strstr($value['address'], 'rtmp');
					if ($rida == false) {
						$rid = '1'; //HTTP
					} else {
						$rid = '0'; //rtmp
					}
					$usrstr = strripos($value['address'], 'flv?');
					if ($usrstr == false) {
						$live_time = '1'; //正常地址
					} else {
						$live_time = '0'; //授权地址
					}
					$allarr[] = [
						'address' => $value['address'],
						'img' => $value['img'],
						'title' => $value['title'],
						'rid' => $rid,
						'live_time' => $live_time,
					];
				}
				$array = $allarr;
				//设置缓存
				Cache::set($caname, $array, 1200);
				return $array;
			} else {
				return false;
			}
		} else {
			return $arrinfoa;
		}
	}

}
