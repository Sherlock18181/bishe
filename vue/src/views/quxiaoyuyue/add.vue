<template>
    <div class="quxiaoyuyue-add" v-loading="loading">
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span class="title"> 添加取消预约</span>
            </div>
            <div class="form-database-form">
                <el-form :model="form" ref="formModel" label-width="130px" status-icon validate-on-rule-change>
                    <el-form-item v-if="isRead" label="编号" prop="bianhao"> {{ form.bianhao }} </el-form-item>

                    <el-form-item v-if="isRead" label="课程名称" prop="kechengmingcheng"> {{ form.kechengmingcheng }} </el-form-item>

                    <el-form-item v-if="isRead" label="类型" prop="leixing">
                        <e-select-view module="kechengleixing" :value="form.leixing" select="id" show="leixingmingcheng"></e-select-view>
                    </el-form-item>

                    <el-form-item v-if="isRead" label="预约人姓名" prop="yuyuerenxingming"> {{ form.yuyuerenxingming }} </el-form-item>

                    <el-form-item v-if="isRead" label="添加人" prop="tianjiaren"> {{ form.tianjiaren }} </el-form-item>

                    <el-form-item label="取消原因" prop="quxiaoyuanyin"> <el-input type="textarea" v-model="form.quxiaoyuanyin"></el-input> </el-form-item>

                    <el-form-item label="取消人" prop="quxiaoren"> <el-input v-model="form.quxiaoren" readonly style="width: 250px"></el-input> </el-form-item>

                    <el-form-item v-if="btnText">
                        <el-button type="primary" @click="submit">{{ btnText }}</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </el-card>
    </div>
</template>
<style type="text/scss" scoped lang="scss">
    .quxiaoyuyue-add {
    }
</style>
<script>
    import api from "@/api";
    import rule from "@/utils/rule";
    import { extend } from "@/utils/extend";
    import formUtil from "./form";

    export default {
        name: "quxiaoyuyue-add",
        data() {
            return {
                readMap: {},
                rule,
                loading: false,
                form: {},
            };
        },
        watch: {},
        props: {
            isRead: {
                type: Boolean,
                default: true,
            },
            btnText: {
                type: String,
                default: "提交",
            },
        },

        computed: {},
        methods: {
            submit() {
                this.$refs.formModel
                    .validate()
                    .then((res) => {
                        if (this.loading) return;
                        this.loading = true;
                        var form = this.form;

                        this.$store
                            .dispatch("quxiaoyuyue/insert", form)
                            .then((res) => {
                                this.loading = false;
                                if (res.code == 0) {
                                    this.$message.success("添加成功");
                                    this.$router.go(-1);
                                } else {
                                    this.$message.error(res.msg);
                                }
                            })
                            .catch((err) => {
                                this.loading = false;
                                this.$message.error(err.message);
                            });
                    })
                    .catch((err) => {
                        console.log(err.message);
                    });
            },
            loadInfo() {
                if (this.loading) return;
                var form = this.form;
                this.form = formUtil.createForm();

                // 获取模块得数据
                this.loading = true;
                formUtil
                    .loadInfo(this.$route.query.id)
                    .then((res) => {
                        this.loading = false;
                        this.form = res.form;
                        this.readMap = res.readMap;
                    })
                    .catch((err) => {
                        this.loading = false;
                        this.$message.error(err.message);
                        this.$router.go(-1);
                    });
            },
        },
        created() {
            this.loadInfo();
        },
        mounted() {},
        destroyed() {},
    };
</script>
