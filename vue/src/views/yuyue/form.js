import store from "@/store";
import router from "@/router";
import { extend } from "@/utils/extend";
import rule from "@/utils/rule";

export function createForm() {
    var $route = router.currentRoute;
    const $store = store;
    var form = {
        bianhao: "",
        kechengmingcheng: "",
        leixing: "",
        tianjiaren: store.state.user.session.username,
        yuyueshijian: "",
        yuyuerenxingming: "",
        dianhua: "",
        beizhu: "",
        zhuangtai: "已预约",
        yuyueren: store.state.user.session.username,
        kechengid: 0,
    };

    return form;
}

export function loadInfo(id) {
    return new Promise((resolve, reject) => {
        store
            .dispatch("kecheng/findById", id)
            .then((data) => {
                var obj = createForm();
                var autoText = ["kechengid", "bianhao", "kechengmingcheng", "leixing", "tianjiaren"];
                for (var txt of autoText) {
                    obj[txt] = data[txt];
                }
                obj.kechengid = id;
                resolve({ form: obj, readMap: data });
            })
            .catch((err) => {
                reject(err);
            });
    });
}

export default {
    createForm,
    loadInfo,
};
