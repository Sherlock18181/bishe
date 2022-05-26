package com.spboot.tx.pojo;

import com.baomidou.mybatisplus.annotation.*;
import com.jntoo.db.*;
import com.spboot.tx.utils.Request;

import java.io.Serializable;
import java.util.*;

@TableName("kecheng")
public class Kecheng implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Integer id;

    private String bianhao;

    private String kechengmingcheng;

    private Integer leixing;

    private String tupian;

    private String kechengxiangqing;

    private String tianjiaren;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getYuyueCount() {
        return DB.name("yuyue").where("yuyueren" , Request.user().getUsername()).where("zhuangtai" , "已预约").where("kechengid", id).count();
    }

    public String getBianhao() {
        return bianhao;
    }

    public void setBianhao(String bianhao) {
        this.bianhao = bianhao == null ? "" : bianhao.trim();
    }

    public String getKechengmingcheng() {
        return kechengmingcheng;
    }

    public void setKechengmingcheng(String kechengmingcheng) {
        this.kechengmingcheng = kechengmingcheng == null ? "" : kechengmingcheng.trim();
    }

    public Integer getLeixing() {
        return leixing;
    }

    public void setLeixing(Integer leixing) {
        this.leixing = leixing == null ? 0 : leixing;
    }

    public String getTupian() {
        return tupian;
    }

    public void setTupian(String tupian) {
        this.tupian = tupian == null ? "" : tupian.trim();
    }

    public String getKechengxiangqing() {
        return kechengxiangqing;
    }

    public void setKechengxiangqing(String kechengxiangqing) {
        this.kechengxiangqing = kechengxiangqing == null ? "" : kechengxiangqing.trim();
    }

    public String getTianjiaren() {
        return tianjiaren;
    }

    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren == null ? "" : tianjiaren.trim();
    }

    public Wxuser getTianjiarenuser() {
        return DB.name(Wxuser.class).where("id", tianjiaren).find();
    }
}
