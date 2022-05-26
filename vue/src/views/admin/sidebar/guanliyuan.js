export default [
    {
        label: "账号管理",
        to: "",
        children: [
            {
                label: "管理员账号管理",
                to: "/admin/admins",
            },
            {
                label: "管理员账号添加",
                to: "/admin/adminsadd",
            },
            {
                label: "密码修改",
                to: "/admin/mod",
            },
        ],
    },
    {
        label: "场馆管理",
        to: "",
        children: [
            {
                label: "场馆添加",
                to: "/admin/changguanadd",
            },
            {
                label: "场馆查询",
                to: "/admin/changguan",
            },
        ],
    },
    {
        label: "课程类型管理",
        to: "",
        children: [
            {
                label: "课程类型添加",
                to: "/admin/kechengleixingadd",
            },
            {
                label: "课程类型查询",
                to: "/admin/kechengleixing",
            },
        ],
    },
    {
        label: "课程管理",
        to: "",
        children: [
    
            {
                label: "课程查询",
                to: "/admin/kecheng",
            },
        ],
    },
    {
        label: "预约管理",
        to: "",
        children: [
            {
                label: "预约查询",
                to: "/admin/yuyue",
            },
        ],
    },
    {
        label: "取消预约管理",
        to: "",
        children: [
            {
                label: "取消预约查询",
                to: "/admin/quxiaoyuyue",
            },
        ],
    },
    {
        label: "BMI值管理",
        to: "",
        children: [
            {
                label: "BMI值查询",
                to: "/admin/bmizhi",
            },
        ],
    },
    {
        label: "轮播图管理",
        to: "",
        children: [
            {
                label: "轮播图添加",
                to: "/admin/lunbotuadd",
            },
            {
                label: "轮播图查询",
                to: "/admin/lunbotu",
            },
        ],
    },
];
