package com.spboot.tx.pojo;

import com.baomidou.mybatisplus.annotation.*;
import com.jntoo.db.*;
import java.io.Serializable;
import java.util.*;

@TableName("yuyue")
public class Yuyue implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Integer id;

    private Integer kechengid;

    private String bianhao;

    private String kechengmingcheng;

    private Integer leixing;

    private String tianjiaren;

    private String yuyueshijian;

    private String yuyuerenxingming;

    private String dianhua;

    private String beizhu;

    private String zhuangtai;

    private String yuyueren;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getQuxiaoyuyueCount() {
        return DB.name("quxiaoyuyue").where("yuyueid", id).count();
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

    public String getTianjiaren() {
        return tianjiaren;
    }

    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren == null ? "" : tianjiaren.trim();
    }

    public Wxuser getTianjiarenuser() {
        return DB.name(Wxuser.class).where("id", tianjiaren).find();
    }

    public String getYuyueshijian() {
        return yuyueshijian;
    }

    public void setYuyueshijian(String yuyueshijian) {
        this.yuyueshijian = yuyueshijian == null ? "" : yuyueshijian.trim();
    }

    public String getYuyuerenxingming() {
        return yuyuerenxingming;
    }

    public void setYuyuerenxingming(String yuyuerenxingming) {
        this.yuyuerenxingming = yuyuerenxingming == null ? "" : yuyuerenxingming.trim();
    }

    public String getDianhua() {
        return dianhua;
    }

    public void setDianhua(String dianhua) {
        this.dianhua = dianhua == null ? "" : dianhua.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? "" : zhuangtai.trim();
    }

    public String getYuyueren() {
        return yuyueren;
    }

    public void setYuyueren(String yuyueren) {
        this.yuyueren = yuyueren == null ? "" : yuyueren.trim();
    }

    public Wxuser getYuyuerenuser() {
        return DB.name(Wxuser.class).where("id", yuyueren).find();
    }
}
