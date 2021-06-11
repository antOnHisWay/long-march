<?php

namespace App\Http\Controllers\Miyu;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Notes;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;

class LoginController extends Controller
{
    const APPID = 'wx8dc21f66b43bc06b';
    const SECRET = 'a85cc88da7937ed14fcc89cf1d6cee04';
    const ACCESS_TOKEN_URL = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s';
    const USER_SESSION_URL = 'https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&js_code=%s&grant_type=authorization_code';
    const SEND_TEMPLATE_MESSAGE = 'https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=%s';

    public $access_token = '45_Z40g5biYQV37-9WM68ZB1bc-ra1Trobqv3_ELIvF7Dk6ELzuDpv3Bd37G8n6fiodFMtwp5RSgxq5BqKO5c4skhk6WZsJR3qL7gRHnuOcnnX4yYKvpjtI4eclz6ZGMEpaeT1ezkNeu8Xm6x1ZMGTbAAAGAN';

    public $userInfo;


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index(Request $e)
    {
        $this->getAccessToken();
        $this->getUserSession($e);

        return json_encode(['userid' => 1]);
    }

    public function getAccessToken() {

        $res = Http::withHeaders(['Accept' => 'application/json'])
            ->get(sprintf(self::ACCESS_TOKEN_URL, self::APPID, self::SECRET));

        $this->access_token = json_decode($res->body(), true)['access_token'];
    }

    public function getUserSession(Request $request) {
        $jscode = trim($request->get('code'));

        $res = Http::withHeaders(['Accept' => 'application/json'])
            ->get(sprintf(self::USER_SESSION_URL, self::APPID, self::SECRET, $jscode));

        $this->userInfo = json_decode($res->body(), true);
    }

    public function sendTemplateMessage() {
        $res = Http::withHeaders(['Accept' => 'application/json'])
            ->post(sprintf(self::SEND_TEMPLATE_MESSAGE, $this->access_token), [
                "touser" => $this->userInfo['openid'],
                "template_id" => "0r0R0RrmwMbzhPINaFd1dvQ1FtMUXM1ueLKLxNPGsw8",
                "page" => "page/page/index",
                "form_id" => "FORMID",
                "data" => [
                    "number2" => [
                        "value" => "6000"
                    ],
                    "thing3" => [
                        "value" => "本学期学习必修课，完成考试可获得积分哦"
                    ],
                    "character_string4" => [
                        "value" => "-3000000"
                    ],
                    "time5" => [
                        "value" => "2020-03-02"
                    ],
                    "thing1" => [
                        "value" => "xx课程完成，获得100积分"
                    ],
                ],
                "emphasis_keyword" => "keyword1.DATA"
            ]);
        var_dump($res->body());
    }

}
