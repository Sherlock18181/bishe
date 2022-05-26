export default [
    {
        label: "课程管理",
        to: "",
        children: [
            {
                label: "课程添加",
                to: "/admin/kechengadd",
            },
            {
                label: "课程查询",
                to: "/admin/kecheng_tianjiaren",
            },
        ],
    },
    {
        label: "预约管理",
        to: "",
        children: [
            {
                label: "预约查询",
                to: "/admin/yuyue_tianjiaren",
            },
        ],
    },
    {
        label: "取消预约管理",
        to: "",
        children: [
            {
                label: "取消预约查询",
                to: "/admin/quxiaoyuyue_tianjiaren",
            },
        ],
    },
    {
        label: "个人中心",
        to: "",
        children: [
            {
                label: "修改个人资料",
                to: "/admin/adminsupdtself",
            },
            {
                label: "修改密码",
                to: "/admin/mod",
            },
        ],
    },
];
