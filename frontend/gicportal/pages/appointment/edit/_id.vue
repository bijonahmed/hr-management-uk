<template>
<div>
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item">
                                <router-link to="/" href="javascript:;"><i class="bx bx-home-alt"></i></router-link>
                            </li>
                            <li class="breadcrumb-item" aria-current="page">
                                <router-link to="/appointment/appointment-list">Appointment List</router-link>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">New Appointment</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!--end breadcrumb-->
            <!--end row-->
            <div class="row">
                <div class="col-xl-12 mx-auto">
                    <div class="card border-top border-0 border-4 border-info">
                        <div class="card-body">
                            <div class="border p-4 rounded">
                                <form @submit.prevent="saveData()" id="formrest" class="forms-sample" enctype="multipart/form-data">
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Name</label>
                                        <div class="col-sm-9">
                                             <input type="hidden" class="form-control id" v-model="insertdata.id" id="id">
                                            <input type="text" class="form-control name" v-model="insertdata.name" id="name" placeholder="Name">
                                            <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">App. Date time</label>
                                        <div class="col-sm-9">
                                            <input type="datetime-local" class="form-control name" v-model="insertdata.datetimie" id="datetimie" placeholder="0:00">
                                            <span class="text-danger" v-if="errors.datetimie">{{ errors.datetimie[0] }}</span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputEnterYourName" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control name" v-model="insertdata.email" id="email" placeholder="Email">
                                            <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputPhoneNo2" class="col-sm-3 col-form-label">Phone No</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control phone" v-model="insertdata.phone" id="phone" placeholder="Phone No">
                                            <span class="text-danger" v-if="errors.phone">{{ errors.phone[0] }}</span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="inputEmailAddress2" class="col-sm-3 col-form-label">Address</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control addres" v-model="insertdata.addres" id="addres" placeholder="Address">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-sm-3 col-form-label"></label>
                                        <div class="col-sm-9">
                                            <button type="submit" class="btn btn-success px-5 w-100"><i class="bx bx-check-circle mr-1"></i> Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
        </div>
    </div>
    <!--end page wrapper -->
</div>
</template>
<script>

import $ from "jquery";
export default {
    head: {
        title: 'Appointment Making..'
    },
    data() {
        return {
            insertdata: {
                id: '',
                name: '',
                phone: '',
                email: '',
                addres: '',
                datetimie: '',
                status: 1,
            },
            notifmsg: '',
            errors: {},
        }
    },
    created() {
        this.getData();
    },
    methods: {
        onFileSelected() {
            this.file = this.$refs.file.files[0];
        },
        saveData() {
            const formData = new FormData();
            formData.append('id', this.insertdata.id);
            formData.append('name', this.insertdata.name);
            formData.append('email', this.insertdata.email);
            formData.append('phone', this.insertdata.phone);
            formData.append('datetimie', this.insertdata.datetimie);
            formData.append('addres', this.insertdata.addres);
            formData.append('status', this.insertdata.status);
            const headers = {
                'Content-Type': 'multipart/form-data'
            };
            this.$axios.post('/appointment/save',
                formData, {
                    headers
                }).then((res) => {
                $('#formrest')[0].reset();
                this.success_noti();
                this.$router.push('/appointment/appointment-list');
            }).catch(error => {
                if (error.response.status === 422) {
                    this.errors = error.response.data.errors;
                }
            });
        },
        getData() {
            console.log(this.$route.params.id);
            let id = this.$route.params.id;
            this.$axios.get(`/appointment/getRow/${id}`).then(response => {
               // console.log(response.data.data.name)
                this.insertdata.id = response.data.data.id;
                this.insertdata.name = response.data.data.name;
                this.insertdata.email = response.data.data.email;
                this.insertdata.datetimie = response.data.data.datetimie;
                this.insertdata.phone = response.data.data.phone;
                this.insertdata.addres = response.data.data.addres;
            })
        },
        success_noti() {
            Lobibox.notify('success', {
                pauseDelayOnHover: true,
                continueDelayOnInactiveTab: false,
                position: 'top right',
                icon: 'bx bx-check-circle',
                msg: 'Your data has been successfully update.'
            });
        },
    },
}
</script>
