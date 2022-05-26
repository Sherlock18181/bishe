// pages/changguan/list.js

import DB from "../../request/db";
const utils = require("../../utils/util");
const store = require("../../request/module/changguan");

const app = getApp();

Page({
    /**
     * 页面的初始数据
     */
    data: {
        lists: [],
        search: {
            bianhao: "",
            changguanmingcheng: "",
            page: 1, // 当前页
            pagesize: 12, // 页大小
            orderby: "id", // 默认排序
            sort: "DESC", // 倒序方式排序
        },
        totalPages: 0,
        totalCount: 0,
        total: {},
    },
    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function (option) {
        wx.setNavigationBarTitle({
            title: "列表",
        });
        if (!utils.empty(option)) {
            this.setData(option);
        }

        this.data.lists = [];
        this.loadList(1);
        DB.name("changguan")
            .limit("4")
            .order("id desc")
            .select()
            .then((res) => {
                const st = app.include("/request/module/changguan");
                var lists = res.data;
                st.formatDataList(lists);
                for (var c of lists) {
                    c.isZan = 0;
                    c.zanCount = 0;
                }
                this.loadCardZanList(lists.map((s) => s.id));
                this.setData({
                    changguanlist1: lists,
                });
            });
    },
    onShow() {},

    loadList(page) {
        if (this.data.loading) return;
        this.setData({
            "search.page": page,
            loading: true,
        });
        store
            .dispatch("query", this.data.search)
            .then((res) => {
                this.setData({
                    loading: false,
                });
                if (res.code == 0) {
                    var data = res.data;
                    var lists = data.lists.records;

                    store.formatDataList(lists);
                    this.handlerListData(lists);
                    lists = this.data.lists.concat(lists);
                    this.setData({
                        totalCount: data.lists.total,
                        totalPages: data.lists.pages,
                    });
                    this.setData({
                        lists: lists,
                    });
                }
            })
            .catch((err) => {
                this.setData({
                    loading: false,
                });
            });
    },
    handlerListData(lists) {},

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function () {
        this.setData({
            lists: [],
        });
        this.loadList(1);
    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function () {
        if (this.data.totalPages > this.data.search.page) {
            this.loadList(this.data.search.page + 1);
        }
    },
    goBack() {
        wx.navigateBack({
            delta: 1,
        });
    },
});
