import store from "@/store";
import router from "@/router";
import { extend } from "@/utils/extend";
import rule from "@/utils/rule";

export function createForm() {
    return {};
}

export function loadxinwenfenlei(id) {
    return new Promise((resolve, reject) => {
        store
            .dispatch("xinwenxinxi/findById", id)
            .then((data) => {
                var obj = createForm();
                var autoText = "".split(",");
                for (var txt of autoText) {
                    obj[txt] = data[txt];
                }
                obj.xinwenxinxiid = id;
                resolve(obj);
            })
            .catch((err) => {
                reject(err);
            });
    });
}
