<?php

namespace App\Http\Controllers\Miyu;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use App\Models\Wxuser;

class BaseController extends Controller
{
    const APPID = 'wx8dc21f66b43bc06b';
    const SECRET = 'a85cc88da7937ed14fcc89cf1d6cee04';
    const USER_SESSION_URL = 'https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&js_code=%s&grant_type=authorization_code';

    public $userInfo;

    public $userId;

    public $coupleId = 0;

    public function __construct(Request $e) {

        if($e->get('userid')) {
            $this->userId = $e->get('userid');
        } else {
            $this->getUserSession($e);
            $this->getUserInfo();
        }
    }

    public function getUserSession(Request $request) {
        $jscode = trim($request->get('code'));

        $res = Http::withHeaders(['Accept' => 'application/json'])
            ->get(sprintf(self::USER_SESSION_URL, self::APPID, self::SECRET, $jscode));

        $this->userInfo = json_decode($res->body(), true);
    }

    public function getUserInfo() {
        $userInfo = Wxuser::where('openid', $this->userInfo['openid'])->first();
        if(!$userInfo) {
            $userInfo = Wxuser::create([
                'openid' => $this->userInfo['openid'],
                'name' => 'name',
                'email' => time() . '1@1.com',
                'password' => 'password',
                'menuroles' => 'user'
            ]);
        }

        $this->userId =  $userInfo['id'];
    }

}
