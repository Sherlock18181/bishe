package com.spboot.tx.pojo;

import com.baomidou.mybatisplus.annotation.*;
import com.jntoo.db.*;
import java.io.Serializable;
import java.util.*;

@TableName("bmizhi")
public class Bmizhi implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Integer id;

    private String riqi;

    private Double shengao;

    private Double tizhong;

    private Double bmizhi;

    private String tianjiaren;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRiqi() {
        return riqi;
    }

    public void setRiqi(String riqi) {
        this.riqi = riqi == null ? "" : riqi.trim();
    }

    public Double getShengao() {
        return shengao;
    }

    public void setShengao(Double shengao) {
        this.shengao = shengao == null ? 0.0f : shengao;
    }

    public Double getTizhong() {
        return tizhong;
    }

    public void setTizhong(Double tizhong) {
        this.tizhong = tizhong == null ? 0.0f : tizhong;
    }

    public Double getBmizhi() {
        return bmizhi;
    }

    public void setBmizhi(Double bmizhi) {
        this.bmizhi = bmizhi == null ? 0.0f : bmizhi;
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
