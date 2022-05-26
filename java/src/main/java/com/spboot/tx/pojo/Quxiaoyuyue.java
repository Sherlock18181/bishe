package com.spboot.tx.pojo;

import com.baomidou.mybatisplus.annotation.*;
import com.jntoo.db.*;
import java.io.Serializable;
import java.util.*;

@TableName("quxiaoyuyue")
public class Quxiaoyuyue implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Integer id;

    private Integer yuyueid;

    private Integer kechengid;

    private String bianhao;

    private String kechengmingcheng;

    private Integer leixing;

    private String yuyuerenxingming;

    private String tianjiaren;

    private String quxiaoyuanyin;

    private String quxiaoren;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYuyueid() {
        return yuyueid;
    }

    public void setYuyueid(Integer yuyueid) {
        this.yuyueid = yuyueid == null ? 0 : yuyueid;
    }

    public Integer getKechengid() {
        return kechengid;
    }

    public void setKechengid(Integer kechengid) {
        this.kechengid = kechengid == null ? 0 : kechengid;
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

    public String getYuyuerenxingming() {
        return yuyuerenxingming;
    }

    public void setYuyuerenxingming(String yuyuerenxingming) {
        this.yuyuerenxingming = yuyuerenxingming == null ? "" : yuyuerenxingming.trim();
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

    public String getQuxiaoyuanyin() {
        return quxiaoyuanyin;
    }

    public void setQuxiaoyuanyin(String quxiaoyuanyin) {
        this.quxiaoyuanyin = quxiaoyuanyin == null ? "" : quxiaoyuanyin.trim();
    }

    public String getQuxiaoren() {
        return quxiaoren;
    }

    public void setQuxiaoren(String quxiaoren) {
        this.quxiaoren = quxiaoren == null ? "" : quxiaoren.trim();
    }

    public Wxuser getQuxiaorenuser() {
        return DB.name(Wxuser.class).where("id", quxiaoren).find();
    }
}
