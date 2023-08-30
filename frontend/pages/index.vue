<template>
<div class="page-wrapper" v-if="$auth.loggedIn">
    <div class="page-content">
        <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">
            <div class="col">
                <div class="card radius-10 bg-gradient-deepblue">
                    <Nuxt-link to="/employee/employee-list">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Employee</p>

                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-cart fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>
            <div class="col">
                <div class="card radius-10 bg-gradient-orange">
                    <Nuxt-link to="/user/user_list">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Users</p>

                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-group fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>
            <div class="col">
                <div class="card radius-10 bg-gradient-ohhappiness">
                    <Nuxt-link to="/task/task-list">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Task</p>

                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-group fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>
        
            <div class="col">
                <div class="card radius-10 bg-gradient-ibiza">
                    <Nuxt-link to="/organogram/organisation-hierarchy-list">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Organogram Chart</p>
                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-envelope fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>
            <div class="col">
                <div class="card radius-10 bg-gradient-deepblue">
                    <Nuxt-link to="/organisation/profile">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Organisation Profile</p>
                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-envelope fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>

            <div class="col">
                <div class="card radius-10 bg-gradient-deepblue">
                    <Nuxt-link to="/setting/dashboard">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Setting</p>
                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-envelope fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>

            <div class="col">
                <div class="card radius-10 bg-gradient-deepblue">
                    <Nuxt-link to="/recruitment/dashboard">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Recruitment</p>
                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-envelope fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>

            <div class="col">
                <div class="card radius-10 bg-gradient-deepblue">
                    <Nuxt-link to="/holiday/dashboard">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Holiday Management</p>
                                </div>
                                <div class="ms-auto">
                                    <i class='bx bx-envelope fs-3 text-white'></i>
                                </div>
                            </div>

                        </div>
                    </Nuxt-link>
                </div>
            </div>
        </div>
        <!--end row-->

        <div class="overlay toggle-icon"></div>
        <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
    </div>
</div>
</template>

<script>
export default {
    head: {
        title: 'Dashboard',
    },
    computed: {

        loggedIn() {
            return this.$store.state.auth.loggedIn;
        },
        user() {
            return this.$store.state.auth.user
        }
    }
}
</script>

<style>

</style>
