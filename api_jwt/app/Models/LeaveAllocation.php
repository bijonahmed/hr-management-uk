<?php
namespace App\Models;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use AuthorizesRequests;
use DB;
class LeaveAllocation extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    public $table = "leave_allocation";
    protected $fillable = [
        'employee_type',
        'employe_id',
        'year',
        'status',
        'leave_in_hand',
        'effective_year',


    ];
}
