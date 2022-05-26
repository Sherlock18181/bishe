// index.js
// 获取应用实例
import DB from "../../request/db";
const app = getApp();
const utils = require("../../utils/util");

Page({
    mixins: [require("../../utils/myMixin")],
    data: {},
    onLoad(option) {
        wx.setNavigationBarTitle({
            title: "主页",
        });
        if (!utils.empty(option)) {
            this.setData(option);
        }
        DB.name("lunbotu")
            .order("id desc")
            .limit(5)
            .select()
            .then((res) => {
                this.setData({ bhtList: res.data });
            });
        DB.name("changguan")
            .limit("4")
            .order("id desc")
            .select()
            .then((res) => {
                const st = app.include("/request/module/changguan");
                var lists = res.data;
              
                this.setData({
                    changguanlist2: lists,
                });
            });
    },
    onShow() {},
});
