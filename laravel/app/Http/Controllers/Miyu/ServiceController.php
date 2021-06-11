<?php

namespace App\Http\Controllers\Miyu;

use App\Models\Wxuser;
use Illuminate\Http\Request;
use App\Models\Wxpicture;
use App\Models\Wxevent;
use App\Models\Wxeventflow;
use App\Models\Wxcouple;
use App\Models\Wxmiss;
use App\Models\Wxcity;

class ServiceController extends BaseController
{
    public function __construct(Request $e)
    {
        parent::__construct($e);

    }

    public function login(Request $e) {
        $me = Wxuser::where('id', $this->userId)->first();

        $couple = Wxcouple::where('id', $this->coupleId)->first();
        $other = [];
        if($couple) {
            $otherId = $couple['fromuserid'] == $this->userId ? $couple['touserid'] : $couple['fromuserid'];
            $other = Wxuser::where('id', $otherId)->first();
        }

        $data = [
            'userid' => $this->userId,
            'name' => $me['name'],
            'avatar' => $me['email'],
            'couple' => [
                'name' => $other ? $other['name'] : '',
                'avatar' => $other ? ['email'] : ''
            ],
            'statics' =>  [
                'days' => $couple? max(ceil((time() - strtotime($couple['created_at']))/86400), 1) : 0,
                'events' => Wxeventflow::where('coupleid', $this->userId)->count(),
                'cities' => Wxcity::where('coupleid', $this->userId)->count(),
                'start' => $couple ? date("Y-m-d", strtotime($couple['created_at'])) : 0,
                'pics' => Wxpicture::where('coupleid', $this->userId)->count()
            ]];

        return json_encode([
            'status' => 'success',
            'code' => 0,
            'data' => $data
        ]);
    }

    public function getPictureList(Request $e)
    {
        $pics = Wxpicture::where('userid', $this->userId)->get();

        $data = [];
        foreach($pics as $item) {
            $data[] = [
                'url' => $item['path'],
            ];
        }

        if($data) {
            return json_encode(['data' => [
                [
                    'date' => '2021-06-08',
                    'items' => $data
                ]
            ]]);
        }else {
            return json_encode(['data' => [
                [
                    'date' => '',
                    'items' => $data
                ]
            ]]);
        }

    }

    public function uploadPicture(Request $e)
    {
        $file = $e->file('pic');


        if($file->isValid() && in_array( strtolower($file->extension()),['jpeg','jpg','gif','gpeg','png'])){
            $newName = time(). $file->getClientOriginalName();

            $path = public_path() . '/' . 'upload';

            $file->move($path, $newName);

            Wxpicture::create([
                'coupleid' => 0,
                'userid'   => $this->userId,
                'path'     => env('APP_URL') . "/upload/" . $newName
            ]);

            return json_encode([
                'data' => [
                    'url' => env('APP_URL') . "/upload/" . $newName
                ]
            ]);
        }
    }

    public function getEvent(Request $e)
    {
        $data = [];
        $doneEventId = [];

        $event = Wxevent::all();

        $done = Wxeventflow::where('userid', $this->userId)->get();
        foreach($done as $item) {
            $doneEventId[] = $item['eventid'];
        }

        foreach($event as $item) {
            $data[] = [
                'id' => $item['id'],
                'name' => $item['name'],
                'url' => $item['image'],
                'done' => in_array($item['id'], $doneEventId)
            ];
        }

        return response([
            'status' => 'success',
            'code' => 0,
            'data' => $data
        ])->header('Access-Control-Allow-Origin', '*');
    }

    public function finishEvent(Request $e) {
        $id = $e->get('id');

        $event = Wxevent::where('id', $id)->first();

        if($event) {
            Wxeventflow::create([
                'name' => $event['name'],
                'image' => $event['image'],
                'userid' => $this->userId,
                'coupleid' => $this->coupleId,
                'eventid' => $id
            ]);
        }

        return json_encode([
            'status' => 'success',
            'code' => 0,
            'data' => []
        ]);
    }

    public function joinCouple(Request $e)
    {
        $fromUserid = $e->get('fromuserid');

        $other = Wxuser::where('id', $fromUserid)->first();
        $me = Wxuser::where('id', $this->userId)->first();

        if(!$me || !$other) {
            return json_encode([
                'status' => 'fail',
                'code' => 011,
                'data' => []
            ]);
        }

        $couple = [];

        if(!($couple=Wxcouple::where('fromuserid', $this->userId)->first()) &&
            !($couple=Wxcouple::where('fromuserid', $fromUserid)->first()) &&
            !($couple=Wxcouple::where('touserid', $this->userId)->first()) &&
            !($couple=Wxcouple::where('touserid', $fromUserid)->first())) {
                $couple = Wxcouple::create([
                    'fromuserid' => $fromUserid,
                    'touserid' => $this->userId
                ]);
        }

        $data = [
            'name' => $me['name'],
            'avatar' => $me['email'],
            'couple' => [
                'name' => $other['name'],
                'avatar' => $other['email']
            ],
          'statics' =>  [
              'days' => max(ceil((time() - strtotime($couple['created_at']))/86400), 1),
              'events' => Wxeventflow::where('coupleid', $this->coupleId)->count(),
              'cities' => Wxcity::where('coupleid', $this->coupleId)->count(),
              'start' => date("Y-m-d", strtotime($couple['created_at'])),
              'pics' => Wxpicture::where('coupleid', $this->coupleId)->count()
          ]];

        return json_encode([
            'status' => 'success',
            'code' => 0,
            'data' => $data
        ]);
    }

    public function miss() {
        $last = Wxmiss::where('userid', $this->userId)->orderBy('id', 'desc')->first();
        if(!$last || ($last && (strtotime($last['created_at']) + 5*60<=time()))) {
            Wxmiss::create([
                'coupleid' => $this->coupleId,
                'userid' => $this->userId
            ]);
        }

        return json_encode([
            'status' => 'success',
            'code' => 0,
            'data' => []
        ]);
    }

    public function update(Request $e) {
        $user = Wxuser::where('id', $this->userId)->first();
        $user['name'] = $e->get('name');
        $user['email'] = $e->get('avatar');
        $user->save();

        return json_encode([
            'status' => 'success',
            'code' => 0,
            'data' => []
        ]);
    }
}
