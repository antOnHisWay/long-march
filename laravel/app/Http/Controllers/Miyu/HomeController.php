<?php

namespace App\Http\Controllers\Miyu;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Notes;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;

class HomeController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    public function getUserSession(Request $request) {
        $jscode = trim($request->get('code'));

        $res = Http::withHeaders(['Accept' => 'application/json'])
            ->get(sprintf(self::USER_SESSION_URL, self::APPID, self::SECRET, $jscode));

        $this->userInfo = json_decode($res->body(), true);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            [
                'user' => [
                    'name' => 'Zhipeng',
                    'money' => 0,
                    'coupon' => 7,
                    'coin' => 7,
                    'level' => 'Lv1',
                    'expire_date' => '2012-12-05'
                ],
                'activity_list' => [
                    [
                        'img' => '',
                        'date'=> '05/18',
                        'weekday' => '周二',
                        'title' => '言艺 | 张艺谋观念演出《对话·寓言2047》主演媒体见面会',
                        'addrress' => '言几又 见 成都优方店',
                    ],
                    [
                        'img' => '',
                        'date'=> '05/18',
                        'weekday' => '周二',
                        'title' => '言艺 | 张艺谋观念演出《对话·寓言2047》主演媒体见面会',
                        'addrress' => '言几又 见 成都优方店',
                    ]
                ]
            ],
        ];

        return response()->json( $data );
    }

}
