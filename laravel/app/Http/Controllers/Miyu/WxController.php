<?php

namespace App\Http\Controllers\Miyu;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use App\Models\User;

class WxController extends Controller
{
    const APPID = 'wx8dc21f66b43bc06b';
    const SECRET = 'a85cc88da7937ed14fcc89cf1d6cee04';
    const USER_SESSION_URL = 'https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&js_code=%s&grant_type=authorization_code';

    public $userInfo;

    public function index(Request $e) {
        $this->getUserSession($e);

        $this->getUserInfo();
    }

    public function getUserSession(Request $request) {
        $jscode = trim($request->get('code'));

        $res = Http::withHeaders(['Accept' => 'application/json'])
            ->get(sprintf(self::USER_SESSION_URL, self::APPID, self::SECRET, $jscode));

        $this->userInfo = json_decode($res->body(), true);
    }

    public function getUserInfo() {
        $userInfo = User::where('openid', $this->userInfo['openid'])->first();
        if(!$userInfo) {
            User::create([
                'openid' => $this->userInfo['openid'],
                'name' => 'name',
                'email' => '1@1.com',
                'password' => 'password'
            ]);
        }
    }

}
