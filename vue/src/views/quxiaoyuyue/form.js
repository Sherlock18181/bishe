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
        yuyuerenxingming: "",
        tianjiaren: store.state.user.session.username,
        quxiaoyuanyin: "",
        quxiaoren: store.state.user.session.username,
        yuyueid: 0,
    };

    return form;
}

export function loadInfo(id) {
    return new Promise((resolve, reject) => {
        store
            .dispatch("yuyue/findById", id)
            .then((data) => {
                var obj = createForm();
                var autoText = ["yuyueid", "kechengid", "bianhao", "kechengmingcheng", "leixing", "yuyuerenxingming", "tianjiaren"];
                for (var txt of autoText) {
                    obj[txt] = data[txt];
                }
                obj.yuyueid = id;
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
