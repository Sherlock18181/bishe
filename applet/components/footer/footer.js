// pages/footer/footer.js
var app = getApp();
Component({
    /**
     * 组件的属性列表
     */
    properties: {},
    /**
     * 组件的初始数据
     */
    data: {
        tabBar: [
            {
                url: "/pages/index/index",
                icon: "wap-home-o",
                name: "主页",
            },
            {
                url: "/pages/kecheng/list",
                icon: "calendar-o",
                name: "课程",
            },
            {
                url: "/pages/member/member",
                icon: "friends-o",
                name: "我的",
            },
        ],
        Selected: 0,
    },
    attached() {
        var pages = getCurrentPages();
        var currentPage = pages[pages.length - 1];
        var url = currentPage.route;
        for (var i in this.data.tabBar) {
            var vn = this.data.tabBar[i];
            if (vn.url == "/" + url) {
                this.setData({
                    Selected: i,
                });
                break;
            }
        }
    },
    /**
     * 组件的方法列表
     */
    methods: {},
});
