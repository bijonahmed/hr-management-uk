<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Customer\CustomerController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\Appointment\AppointmentController;
use App\Http\Controllers\Project\ProjectController;
use App\Http\Controllers\Documents\DocumentsController;
use App\Http\Controllers\Circumstances\CircumstancesController;
use App\Http\Controllers\Recruitment\RecruitmentController;
use App\Http\Controllers\Organogram\OrganogramController;
use App\Http\Controllers\Setting\SettingController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function () {
    Route::post('register', [AuthController::class, 'register']);
    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::post('me', [AuthController::class, 'me']);
    Route::post('profile', [AuthController::class, 'profile']);
    Route::post('updateprofile', [AuthController::class, 'updateprofile']);
    Route::post('updatePassword', [AuthController::class, 'changesPassword']);
    Route::get('showProfileData', [AuthController::class, 'showProfileData']);
    Route::post('password/email', [ForgotPasswordController::class, 'sendPasswordResetEmail']);
    Route::post('password/reset', [ResetPasswordController::class, 'updatePassword']);
});
Route::group([
    'middleware' => 'api',
    'prefix' => 'customer'
], function () {
    Route::post('saveLead', [CustomerController::class, 'saveLead']);
    Route::post('saveCustomer', [CustomerController::class, 'saveCustomer']);
    Route::get('allCustomers', [CustomerController::class, 'allCustomers']);
    Route::get('allleadList', [CustomerController::class, 'allleadList']);
    Route::get('getCustomerRow/{id}', [CustomerController::class, 'checkCustomer']);
    Route::get('getLeadRow/{id}', [CustomerController::class, 'checkLead']);
});
Route::group([
    'middleware' => 'api',
    'prefix' => 'user'
], function () {
    Route::get('allUsers', [UserController::class, 'AllUsersList']);
    Route::get('employeeRow/{id}', [UserController::class, 'employeeRow']);
    Route::get('getEmployeeList', [UserController::class, 'getEmployeeList']);
    Route::post('saveEmployee', [UserController::class, 'saveEmployee']);
    Route::get('getDesignationList', [UserController::class, 'getDesignationList']);
    Route::post('saveDesignation', [UserController::class, 'saveDesignation']);
    Route::get('departmentCheck/{id}', [UserController::class, 'departmentCheck']);
    Route::get('designationCheck/{id}', [UserController::class, 'designationCheck']);
    Route::get('getDepartmentList', [UserController::class, 'getDepartmentList']);
    Route::get('typeofdoucments', [UserController::class, 'typeofdoucments']);
    Route::post('saveDepartment', [UserController::class, 'saveDepartment']);
    Route::post('changePassword', [UserController::class, 'changePassword']);
    Route::post('saveUser', [UserController::class, 'saveUser']);
    Route::post('assignToUser', [UserController::class, 'assignToUser']);
    Route::post('saveRole', [UserController::class, 'saveRole']);
    Route::get('getRoleList', [UserController::class, 'getRoleList']);
    Route::get('roleCheck/{id}', [UserController::class, 'roleCheck']);
    Route::get('getUserRow/{id}', [UserController::class, 'editUserId']);
    Route::get('getCountry', [UserController::class, 'getCountry']);
    Route::get('getTime', [UserController::class, 'getTime']);
    Route::get('inactiveEmployee', [UserController::class, 'inactiveEmployee']);
    Route::post('saveCircumstances', [CircumstancesController::class, 'saveCircumstances']);
    Route::get('getCircumstancesList', [CircumstancesController::class, 'getCircumstancesList']);
    Route::get('circumstancesRow/{id}', [CircumstancesController::class, 'circumstancesRow']);
    Route::get('getEmpType/{id}', [CircumstancesController::class, 'getEmpType']);
    Route::get('chkContractAggData', [CircumstancesController::class, 'chkContractAggData']);
    Route::get('selectOrganisationProfile', [UserController::class, 'selectOrganisationProfile']);
    Route::post('organisationUpdateprofile', [UserController::class, 'organisationUpdateprofile']);


});
Route::group([
    'middleware' => 'api',
    'prefix' => 'appointment'
], function () {
    Route::post('save', [AppointmentController::class, 'save']);
    Route::get('allAppointment', [AppointmentController::class, 'allAppointment']);
    Route::get('getRow/{id}', [AppointmentController::class, 'editAppointmentId']);
});
Route::group([
    'middleware' => 'api',
    'prefix' => 'project'
], function () {
    Route::post('saveTask', [ProjectController::class, 'saveTask']);
    Route::post('saveProject', [ProjectController::class, 'save']);
    Route::get('allProject', [ProjectController::class, 'allProject']);
    Route::get('geTaskList', [ProjectController::class, 'geTaskList']);
    Route::get('checkProjectId/{id}', [ProjectController::class, 'editId']);
    Route::get('taskRow/{id}', [ProjectController::class, 'editTaskId']);
});
Route::group([
    'middleware' => 'api',
    'prefix' => 'documents'
], function () {
    Route::post('saveDocuments', [DocumentsController::class, 'saveDocuments']);
    Route::get('getAllDocuments', [DocumentsController::class, 'getAllDocuments']);
    Route::get('documents-row/{id}', [DocumentsController::class, 'editId']);
});



Route::group([
    'middleware' => 'api',
    'prefix' => 'recruitment'
], function () {
    Route::post('saveJoblist', [RecruitmentController::class, 'saveJoblist']);
    Route::get('getAllJoblist', [RecruitmentController::class, 'getAllJoblist']);
    Route::get('checkRow/{id}', [RecruitmentController::class, 'editId']);
    //Job Posting
    Route::post('saveJobPosting', [RecruitmentController::class, 'saveJobPosting']);
    Route::get('getAllJobPost', [RecruitmentController::class, 'getAllJobPost']);
    Route::get('checkjobpostRow/{id}', [RecruitmentController::class, 'checkjobpostRow']);
    //Job Publish
    Route::post('saveJobPublish', [RecruitmentController::class, 'saveJobPublish']);
    Route::get('getAllJobPublish', [RecruitmentController::class, 'getAllJobPublish']);
    Route::get('checkPublishRow/{id}', [RecruitmentController::class, 'checkPublishRow']);
    //sending message
    Route::post('send-message', [RecruitmentController::class, 'sendMessage']);
    Route::get('getAllemailSending', [RecruitmentController::class, 'getAllemailSending']);
});

Route::group([
    'middleware' => 'api',
    'prefix' => 'organogram'
], function () {
    Route::post('saveLevel', [OrganogramController::class, 'saveLevel']);
    Route::post('updateLevel', [OrganogramController::class, 'updateLevel']);
    Route::post('saveHierarchy', [OrganogramController::class, 'saveHierarchy']);
    Route::get('getLevelList', [OrganogramController::class, 'getLevelList']);
    Route::get('getOrganisationHierarchyList', [OrganogramController::class, 'getOrganisationHierarchyList']);
    Route::get('levelCheck/{id}', [OrganogramController::class, 'editId']);
    Route::get('hierarchy-row/{id}', [OrganogramController::class, 'hierarchyRow']);

});

Route::group([
    'middleware' => 'api',
    'prefix' => 'setting'
], function () {
    //emp type
    Route::post('insertEmployeeType', [SettingController::class, 'insertEmployeeType']);
    Route::get('getEmployeeTypeList', [SettingController::class, 'getEmployeeTypeList']);
    Route::get('checkrowEmpleeType/{id}', [SettingController::class, 'checkrowEmpleeType']);
    //pay group
    Route::post('insertPayGroup', [SettingController::class, 'insertPayGroup']);
    Route::get('getPayGroupList', [SettingController::class, 'getPayGroupList']);
    Route::get('checkrowPayGroup/{id}', [SettingController::class, 'checkrowPayGroup']);
    //Annual Pay 
    Route::post('insertAnnualPay', [SettingController::class, 'insertAnnualPay']);
    Route::get('getAnnualPayist', [SettingController::class, 'getAnnualPayist']);
    Route::get('checkrowAnnualPay/{id}', [SettingController::class, 'checkrowAnnualPay']);
    //Bank Master
    Route::post('insertBankMaster', [SettingController::class, 'insertBankMaster']);
    Route::get('getBankMasterlist', [SettingController::class, 'getBankMasterlist']);
    Route::get('checkrowBankMaster/{id}', [SettingController::class, 'checkrowBankMaster']);
    //Bank Short Code 
    Route::post('insertBankCode', [SettingController::class, 'insertBankCode']);
    Route::get('getBankShortCodelist', [SettingController::class, 'getBankShortCodelist']);
    Route::get('checkrowBankShortCode/{id}', [SettingController::class, 'checkrowBankShortCode']);
    //Tax Master
    Route::post('insertTaxMaster', [SettingController::class, 'insertTaxMaster']);
    Route::get('gettxtMastlist', [SettingController::class, 'gettxtMastlist']);
    Route::get('checkrowtxtmaster/{id}', [SettingController::class, 'checkrowtxtmaster']);
    //Payment type
    Route::post('insertPaymentType', [SettingController::class, 'insertPaymentType']);
    Route::get('getPaymentType', [SettingController::class, 'getPaymentType']);
    Route::get('checkrowPaymenttype/{id}', [SettingController::class, 'checkrowPaymenttype']);
    //Wedges pay mode
    Route::post('insertWedges', [SettingController::class, 'insertWedges']);
    Route::get('getWdges', [SettingController::class, 'getWdges']);
    Route::get('checkrowWedges/{id}', [SettingController::class, 'checkrowWedges']);
    //Pay Item List 
    Route::post('insertPayItem', [SettingController::class, 'insertPayItem']);
    Route::get('getPayItemList', [SettingController::class, 'getPayItemList']);
    Route::get('checkPayItemRow/{id}', [SettingController::class, 'checkPayItemRow']);
});