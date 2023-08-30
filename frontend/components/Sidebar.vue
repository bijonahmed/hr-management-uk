<template>
<!--sidebar wrapper -->
<div class="sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
        <div>
            <Nuxt-link to="/" href="javascript:;">
                <h4 class="logo-text"><img src="/images/logo-img.png" alt="logo icon"> </h4>
            </Nuxt-link>
        </div>
        <div class="toggle-icon ms-auto" @click="hideleftsidebar"><i class='bx bx-arrow-to-left'></i></div>
    </div>
    <!--navigation-->
    <ul class="metismenu" id="menu">
        <li>
            <Nuxt-link to="/" href="javascript:;">
                <i class='bx bx-home-circle'></i>
                <div class="menu-title">Dashboard</div>
            </Nuxt-link>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_15" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">HCM Master</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_15" style="width:100%;">
                <li>
                    <Nuxt-link to="/employee/department-list"><i class="bx bx-right-arrow-alt"></i>Department</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/employee/designation-list"><i class="bx bx-right-arrow-alt"></i>Designation</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/employee-type-list"><i class="bx bx-right-arrow-alt"></i>Employee Type</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/pay-group-list"><i class="bx bx-right-arrow-alt"></i>Pay Group</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/annual-pay-list"><i class="bx bx-right-arrow-alt"></i>Annual Pay</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/bank-master-list"><i class="bx bx-right-arrow-alt"></i>Bank Master</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/bank-short-code-list"><i class="bx bx-right-arrow-alt"></i>Bank ShortCode</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/tax-master-list"><i class="bx bx-right-arrow-alt"></i>Tax Master</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/payment-type-list"><i class="bx bx-right-arrow-alt"></i>Payment Type</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/setting/wedges-pay-list"><i class="bx bx-right-arrow-alt"></i>Wedges Pay Mode</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/setting/payroll-payitem-list"><i class="bx bx-right-arrow-alt"></i>Payroll Pay Item</Nuxt-link>
                </li>

            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Recruitment</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_1" style="width:100%;">
                <li>
                    <Nuxt-link to="/recruitment/job-list"><i class="bx bx-right-arrow-alt"></i>Job List</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/job-posting-list"><i class="bx bx-right-arrow-alt"></i>Job Posting</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/job-publish-list"><i class="bx bx-right-arrow-alt"></i>Job Published</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/job-applied-list"><i class="bx bx-right-arrow-alt"></i>Job Applied</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/job-short-list"><i class="bx bx-right-arrow-alt"></i>Short Listing</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/job-interview-list"><i class="bx bx-right-arrow-alt"></i>Invterview</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/job-hired-list"><i class="bx bx-right-arrow-alt"></i>Hired</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/reject-list"><i class="bx bx-right-arrow-alt"></i>Rejected</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/generate-offer-letter-list"><i class="bx bx-right-arrow-alt"></i>Generate Offer Letter</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/report"><i class="bx bx-right-arrow-alt"></i>Report</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/recruitment/message-center-list"><i class="bx bx-right-arrow-alt"></i>Message Center</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_3" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Employee</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_3" style="width:100%;">

                <li>
                    <Nuxt-link to="/employee/employee-list"><i class="bx bx-right-arrow-alt"></i>Employee</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/employee/change-of-circumstances-list"><i class="bx bx-right-arrow-alt"></i>Change Of Circumstances</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/employee/emp-assign-to-user"><i class="bx bx-right-arrow-alt"></i>Emp. Assign to User</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_30" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Holiday Management</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_30" style="width:100%;">
                <li>
                    <Nuxt-link to="/holiday/holiday-type-list"><i class="bx bx-right-arrow-alt"></i>Holiday Type</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/holiday/holiday-list"><i class="bx bx-right-arrow-alt"></i>Holiday List</Nuxt-link>
                </li>
            </ul>
        </li>

        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_30" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Leave Management</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_30" style="width:100%;">
                <li>
                    <Nuxt-link to="/leave/leave-type-list"><i class="bx bx-right-arrow-alt"></i>Manage Leave Type</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/leave/leave-role-list"><i class="bx bx-right-arrow-alt"></i>Leave Rule</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/leave/holiday-list"><i class="bx bx-right-arrow-alt"></i>Leave Allocation</Nuxt-link>
                </li>

                <li>
                    <Nuxt-link to="/leave/holiday-list"><i class="bx bx-right-arrow-alt"></i>Leave Balance</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/holiday/holiday-list"><i class="bx bx-right-arrow-alt"></i>Leave Report</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_7" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Organogram Chart</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_3" style="width:100%;">
                <li>
                    <Nuxt-link to="/organogram/level-list"><i class="bx bx-right-arrow-alt"></i>Level</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/organogram/organisation-hierarchy-list"><i class="bx bx-right-arrow-alt"></i>Organisation Hierarchy</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_7" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Organisation</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_3" style="width:100%;">
                <li>
                    <Nuxt-link to="/organisation/profile"><i class="bx bx-right-arrow-alt"></i>Organisation Profile</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/employee/employee-list"><i class="bx bx-right-arrow-alt"></i>Employee Creation Link</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_4" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">User Management</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_4" style="width:100%;">
                <li>
                    <Nuxt-link to="/role/role_list"><i class="bx bx-right-arrow-alt"></i>Role List</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/role/newrole"><i class="bx bx-right-arrow-alt"></i>Add Role</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/user/user_list"><i class="bx bx-right-arrow-alt"></i>User List</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/user/newUser"><i class="bx bx-right-arrow-alt"></i>Add User</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_5" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Task</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_5" style="width:100%;">
                <li>
                    <Nuxt-link to="/project/project-list"><i class="bx bx-right-arrow-alt"></i>Project List</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/project/new-project"><i class="bx bx-right-arrow-alt"></i>Add Project</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/task/task-list"><i class="bx bx-right-arrow-alt"></i>Task List</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/task/add-task"><i class="bx bx-right-arrow-alt"></i>Add Task</Nuxt-link>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="has-arrow nav-link dropdown-toggle" id="submenuDropdown_6" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="bx bx-category"></i>
                <div class="menu-title">Documents</div>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="submenuDropdown_6" style="width:100%;">
                <li>
                    <Nuxt-link to="/documents/documents-list"><i class="bx bx-right-arrow-alt"></i>Documents List</Nuxt-link>
                </li>
                <li>
                    <Nuxt-link to="/documents/new-documents"><i class="bx bx-right-arrow-alt"></i>Add Documents</Nuxt-link>
                </li>
            </ul>
        </li>

    </ul>
    <!--end navigation-->
</div>
<!--end sidebar wrapper -->
</template>

<style>
.sidebar-wrapper .metismenu a {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: left;
    padding: 1px 1px;
    font-size: 15px;
    width: 100%;
    color: #5f5f5f;
    outline-width: 0;
    text-overflow: ellipsis;
    overflow: hidden;
    letter-spacing: .5px;
    border: 1px solid #ffffff00;
    transition: all .3s ease-out;
}

.sidebar-wrapper .metismenu ul a {
    padding: 0px 0px 0px 0px;
    font-size: 15px;
    border: 0;
}
</style>

<script>
export default {
    methods: {
        hideleftsidebar() {
            $(".wrapper").toggleClass("toggled");
        },
    },
};
</script>
