<?php
namespace App\Models;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use AuthorizesRequests;
use DB;
class Recruitment extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    public $table = "joblist";
    protected $fillable = [
        'emp_id',
        'emp_id',
        'doc_name',
        'doc',
        'entry_by',
        'status',
    ];
    public static function filterJobList()
    {
        return DB::table('joblist')->get();
    }


      public static function filterJobPublish()
    {
        return DB::table('jobpublish')->get();
    }

  public static function filterEmailSending()
    {
        return DB::table('send_message')->get();
    }
    
    public static function getAllJobPosts()
    {
        return DB::table('jobpost')->get();
    }
    public static function editId($id)
    {
        return DB::table('joblist')->where('id', $id)->first();
    }
    public static function jobpostRow($id)
    {
        return DB::table('jobpost')->where('id', $id)->first();
    }

 public static function jobpostpublishRow($id)
    {
        return DB::table('jobpublish')->where('id', $id)->first();
    }
    
}
