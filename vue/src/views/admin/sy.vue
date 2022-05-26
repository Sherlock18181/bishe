<template>
    <div class="v-admin-sy">
        <el-row :gutter="50">
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ adminsList.length }}</div>
                    <div class="text">管理员</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ wxuserList.length }}</div>
                    <div class="text">微信用户</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ changguanList.length }}</div>
                    <div class="text">场馆</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ kechengList.length }}</div>
                    <div class="text">课程</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ yuyueList.length }}</div>
                    <div class="text">预约</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ kechengleixingList.length }}</div>
                    <div class="text">课程类型</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ quxiaoyuyueList.length }}</div>
                    <div class="text">取消预约</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ bmizhiList.length }}</div>
                    <div class="text">BMI值</div>
                </div>
            </el-col>
            <el-col :span="6" style="margin-bottom: 50px">
                <div class="msg-box">
                    <div class="number">{{ lunbotuList.length }}</div>
                    <div class="text">轮播图</div>
                </div>
            </el-col>
        </el-row>
    </div>
</template>
<style type="text/scss" lang="scss">
    .v-admin-sy {
        padding: 0 20px;
        .msg-box {
            padding: 10px;
            background: #ffffff;
            text-align: center;
            .number {
                padding: 10px 0;
                font-size: 36px;
                font-weight: bold;
                color: #900;
            }

            .text {
                font-size: 16px;
                padding-bottom: 10px;
            }
        }
    }
</style>
<script>
    import store from "@/store";
    const setting = require("@/setting");
    export default {
        name: "v-admin-sy",
        data() {
            return {
                setting,
            };
        },
        watch: {},
        computed: {
            adminsList() {
                return store.state.admins.lists;
            },
            wxuserList() {
                return store.state.wxuser.lists;
            },
            changguanList() {
                return store.state.changguan.lists;
            },
            kechengList() {
                return store.state.kecheng.lists;
            },
            yuyueList() {
                return store.state.yuyue.lists;
            },
            kechengleixingList() {
                return store.state.kechengleixing.lists;
            },
            quxiaoyuyueList() {
                return store.state.quxiaoyuyue.lists;
            },
            bmizhiList() {
                return store.state.bmizhi.lists;
            },
            lunbotuList() {
                return store.state.lunbotu.lists;
            },
        },
        methods: {},
        created() {
            store.dispatch("admins/selectAll");

            store.dispatch("wxuser/selectAll");

            store.dispatch("changguan/selectAll");

            store.dispatch("kecheng/selectAll");

            store.dispatch("yuyue/selectAll");

            store.dispatch("kechengleixing/selectAll");

            store.dispatch("quxiaoyuyue/selectAll");

            store.dispatch("bmizhi/selectAll");

            store.dispatch("lunbotu/selectAll");
        },
        mounted() {},
        destroyed() {},
    };
</script>
