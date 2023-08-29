<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\User;
use App\Models\Circumstances;
use App\Models\Recruitment;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use DB;
use File;
use PhpParser\Node\Stmt\TryCatch;
use function Ramsey\Uuid\v1;
class UnauthenticatedController extends Controller
{
    protected $frontend_url;
    protected $userid;
   
    public function checkPublishRow($id)
    {
        $id = (int) $id;
        $data = Recruitment::jobpostpublishRow($id);
        $response = [
            'data' => $data,
            'file_1' => !empty($data->file_1) ? url($data->file_1) : "",
            'file_2' => !empty($data->file_2) ? url($data->file_2) : "",
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }
    //Job Publish 
    public function applyJob(Request $request)
    {
        //dd($request->all());
        $validator = Validator::make($request->all(), [
            'job_title'             => 'required',
            'candidate_name'        => 'required',
            'candidate_email'       => 'required|email',
            'candidate_address'     => 'required',
            'candidate_num'         => 'required',
            'total_year_exp'        => 'required',
            'skill_set'             => 'required',
            'educa_qualifcation'    => 'required',
            'expeted_salary'        => 'required',
            'files'                 => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $data = array(
            'job_title'              => !empty($request->job_title) ? $request->job_title : "",
            'candidate_name'         => !empty($request->candidate_name) ? $request->candidate_name : "",
            'candidate_email'        => !empty($request->candidate_email) ? $request->candidate_email : "",
            'candidate_address'      => !empty($request->candidate_address) ? $request->candidate_address : "",
            'candidate_num'          => !empty($request->candidate_num) ? $request->candidate_num : "",
            'total_year_exp'         => !empty($request->total_year_exp) ? $request->total_year_exp : "",
            'skill_set'              => !empty($request->skill_set) ? $request->skill_set : "",
            'job_publish_id'         => !empty($request->job_publish_id) ? $request->job_publish_id : "",
            'educa_qualifcation'     => !empty($request->educa_qualifcation) ? $request->educa_qualifcation : "",
            'expeted_salary'         => !empty($request->expeted_salary) ? $request->expeted_salary : "",
            'application_date'       => date("Y-m-d"),
        );
        if (!empty($request->file('files'))) {
            $files = $request->file('files');
            $fileName = Str::random(20);
            $ext = strtolower($files->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $files->move(public_path('/backend/files/'), $upload_url);
            $file_url = $uploadPath . $path;
            $data['files'] = $file_url;
        }
     
        //dd($data);
        $id = DB::table('apply_job')->insertGetId($data);
        $response = [
            'message' => 'Successfully:' . $id
        ];
        return response()->json($response);
    }
}
