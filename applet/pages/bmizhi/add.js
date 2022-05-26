// pages/bmizhi/add.js

const app = getApp();
const DB = require("../../request/db");
const store = require("../../request/module/bmizhi");
const utils = require("../../utils/util");

Page({
    /**
     * 页面的初始数据
     */
    data: {
        loading: false,
        form: {},
        errors: {},

        showriqi: false,
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function (options) {
        wx.setNavigationBarTitle({
            title: "BMI值添加",
        });
        if (!utils.empty(options)) {
            this.setData(options);
        }
        this.setData({
            channle: options.channle,
        });

        this.setData({ "form.tianjiaren": app.session("username") });
        this.loadInfo();
    },

    submit(callback) {
        if (this.data.loading) return;
        this.setData({
            loading: true,
            erros: {},
        });
        var form = utils.extend(true, {}, this.data.form);

        store
            .checkForm(form)
            .then(() => {
                store
                    .insert(form)
                    .then((res) => {
                        this.setData({
                            loading: false,
                        });
                        if (res.code == 0) {
                            wx.showToast({
                                title: "添加成功",
                                icon: "success",
                                duration: 1250,
                            });
                            if (this.data.channle) {
                                const eventChannel = this.getOpenerEventChannel();
                                eventChannel.emit("updateData", res.data);
                            }
                            if (utils.isFunction(callback)) {
                                callback(res.data);
                            } else {
                                setTimeout(() => {
                                    wx.navigateBack();
                                }, 1250);
                            }
                        } else {
                            wx.showToast({
                                title: res.msg,
                                icon: "error",
                                duration: 2000,
                            });
                        }
                    })
                    .catch((err) => {
                        this.setData({
                            loading: false,
                        });
                        wx.showToast({
                            title: err.message,
                            icon: "error",
                            duration: 2000,
                        });
                    });
            })
            .catch((err) => {
                console.log(err);
                this.setData(err);
                this.setData({
                    loading: false,
                });
            });
    },
    loadInfo() {
        if (this.data.loading) return;

        // 获取模块得数据
        this.setData({
            form: store.createForm(),
        });
        if (this.data.form.riqi) {
            this.setData({
                currentriqi: new Date(this.data.form.riqi).getTime(),
            });
        }
    },
    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function () {},

    onCloseriqi() {
        this.setData({
            showriqi: false,
        });
    },
    onShowriqi() {
        this.setData({
            showriqi: true,
        });
    },
});
