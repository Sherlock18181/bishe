import store from "@/store";
import router from "@/router";
import { extend } from "@/utils/extend";
import rule from "@/utils/rule";

export function createForm() {
    var $route = router.currentRoute;
    const $store = store;
    var form = {
        bianhao: rule.getID(),
        kechengmingcheng: "",
        leixing: "",
        tupian: "",
        kechengxiangqing: "",
        tianjiaren: store.state.user.session.username,
    };

    return form;
}

export default {
    createForm,
};
