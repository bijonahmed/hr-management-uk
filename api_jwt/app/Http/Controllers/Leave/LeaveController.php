<?php
namespace App\Http\Controllers\Leave;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\Holiday;
use App\Models\User;
use App\Models\LeaveType;
use App\Models\LeaveRule;
use App\Models\HolidayList;
use App\Models\Profile;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use DB;
class LeaveController extends Controller
{
    protected $userid;
    public function __construct()
    {
        $this->middleware('auth:api');
        $id = auth('api')->user();
        $user = User::find($id->id);
        $this->userid = $user->id;
    }
    public function createEditLeaveRule(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'employee_type_id'      => 'required',
            'leave_type_id'         => 'required',
            'maximum_no_annual'     => 'required',
            'effective_from'        => 'required',
            'effective_to'          => 'required',
            'status'                => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        if (empty($request->id)) {
            $data = new LeaveRule;
            $data->employee_type_id   = !empty($request->employee_type_id) ? $request->employee_type_id : "";
            $data->leave_type_id      = !empty($request->leave_type_id) ? $request->leave_type_id : "";
            $data->maximum_no_annual  = !empty($request->maximum_no_annual) ? $request->maximum_no_annual : "";
            $data->effective_from     = !empty($request->effective_from) ? $request->effective_from : "";
            $data->effective_to       = !empty($request->effective_to) ? $request->effective_to : "";
            $data->status             = !empty($request->status) ? $request->status : "";
            $data->save();
        } else {
            LeaveRule::where('id', $request->id)->update([
                'employee_type_id'    => !empty($request->employee_type_id) ? $request->employee_type_id : "",
                'leave_type_id'       => !empty($request->leave_type_id) ? $request->leave_type_id : "",
                'maximum_no_annual'   => !empty($request->maximum_no_annual) ? $request->maximum_no_annual : "",
                'effective_from'      => !empty($request->effective_from) ? $request->effective_from : "",
                'effective_to'        => !empty($request->effective_to) ? $request->effective_to : "",
                'status'              => !empty($request->status) ? $request->status : "",
            ]);
        }
        $response = [
            'message' => 'Successfull',
        ];
        return response()->json($response);
    }
    public function createEditLeavType(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'code'      => 'required',
            'status'    => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        if (empty($request->id)) {
            $data = new LeaveType;
            $data->name   = !empty($request->name) ? $request->name : "";
            $data->code   = !empty($request->code) ? $request->code : "";
            $data->status = !empty($request->name) ? $request->status : "";
            $data->save();
        } else {
            LeaveType::where('id', $request->id)->update([
                'name'   => !empty($request->name) ? $request->name : "",
                'code'   => !empty($request->code) ? $request->code : "",
                'status' => !empty($request->status) ? $request->status : "",
            ]);
        }
        $response = [
            'message' => 'Successfull',
        ];
        return response()->json($response);
    }
    public function createEditHoliday(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'status'    => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        if (empty($request->id)) {
            $data = new Holiday;
            $data->name   = !empty($request->name) ? $request->name : "";
            $data->status = !empty($request->name) ? $request->status : "";
            $data->save();
        } else {
            Holiday::where('id', $request->id)->update([
                'name'   => !empty($request->name) ? $request->name : "",
                'status' => !empty($request->status) ? $request->status : "",
            ]);
        }
        $response = [
            'message' => 'Successfull',
        ];
        return response()->json($response);
    }
    public function createEditHolidayList(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'frm_date'          => 'required',
            'to_date'           => 'required',
            'no_of_days'        => 'required',
            'day'               => 'required',
            'holiday_type_id'   => 'required',
            'status'            => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        if (empty($request->id)) {
            $data = new HolidayList;
            $data->frm_date          = !empty($request->frm_date) ? $request->frm_date : "";
            $data->to_date           = !empty($request->to_date) ? $request->to_date : "";
            $data->no_of_days        = !empty($request->no_of_days) ? $request->no_of_days : "";
            $data->day               = !empty($request->day) ? $request->day : "";
            $data->holiday_type_id   = !empty($request->holiday_type_id) ? $request->holiday_type_id : "";
            $data->holiday_description = !empty($request->holiday_description) ? $request->holiday_description : "";
            $data->status              = !empty($request->status) ? $request->status : "";
            $data->save();
        } else {
            HolidayList::where('id', $request->id)->update([
                'frm_date'              => !empty($request->frm_date) ? $request->frm_date : "",
                'to_date'               => !empty($request->to_date) ? $request->to_date : "",
                'no_of_days'            => !empty($request->no_of_days) ? $request->no_of_days : "",
                'day'                   => !empty($request->day) ? $request->day : "",
                'holiday_type_id'       => !empty($request->holiday_type_id) ? $request->holiday_type_id : "",
                'holiday_description'   => !empty($request->holiday_description) ? $request->holiday_description : "",
                'status'                => !empty($request->status) ? $request->status : "",
            ]);
        }
        $response = [
            'message' => 'Successfull',
        ];
        return response()->json($response);
    }
    public function getholidaylist(Request $request)
    {
        try {
            $rows =  Holiday::all();
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getLeaveTypeList()
    {
        try {
            $rows =  LeaveType::all();
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getLeaveRuleList()
    {
        try {
            $rows = LeaveRule::join('employee_type', 'employee_type.id', '=', 'leave_rule.employee_type_id')
                ->leftjoin('leave_type', 'leave_type.id', '=', 'leave_rule.leave_type_id')
                ->select('leave_rule.*', 'employee_type.name as emp_type', 'leave_type.name as lev_type')
                ->get();
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getHolidayAllList(Request $request)
    {
        try {
            $rows = HolidayList::join('holiday', 'holiday.id', '=', 'leave_list.holiday_type_id')
                ->select('leave_list.*', 'holiday.name as holidaytype')
                ->get();
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function chkholiDayRow($id)
    {
        $id = (int) $id;
        $data = Holiday::find($id);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }
    public function leaveTyperow($id)
    {
        $id = (int) $id;
        $data = LeaveType::find($id);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }
    public function leaveRulerow($id)
    {
        $id = (int) $id;
        $data = LeaveRule::find($id);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }
    public function chkleadlistId($id)
    {
        $id = (int) $id;
        $data = HolidayList::find($id);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }
}
