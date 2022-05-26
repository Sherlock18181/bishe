// pages/yuyue/add.js

const app = getApp();
const DB = require("../../request/db");
const store = require("../../request/module/yuyue");
const utils = require("../../utils/util");

Page({
    /**
     * 页面的初始数据
     */
    data: {
        loading: false,
        form: {},
        errors: {},
        readMap: {},

        showyuyueshijian: false,
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function (options) {
        wx.setNavigationBarTitle({
            title: "预约添加",
        });
        if (!utils.empty(options)) {
            this.setData(options);
        }

        this.setData({ "form.yuyueren": app.session("username") });
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
            .checkForm(form, this.data.readMap)
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
            loading: true,
        });
        store
            .loadInfo(this.data.id)
            .then((res) => {
                this.setData({
                    loading: false,
                });
                this.setData(res);
                if (this.data.form.yuyueshijian) {
                    this.setData({
                        currentyuyueshijian: new Date(this.data.form.yuyueshijian).getTime(),
                    });
                }
            })
            .catch((err) => {
                this.setData({
                    loading: false,
                });
                console.log(err);
            });
    },
    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function () {},

    onCloseyuyueshijian() {
        this.setData({
            showyuyueshijian: false,
        });
    },
    onShowyuyueshijian() {
        this.setData({
            showyuyueshijian: true,
        });
    },
});
