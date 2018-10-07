package com.yzt.zhmp.beans;

public class PoliceFeatures{
    private String ZhuHuChaXun;
    private String PaiChuSuoInfo;
    private String AnQuanJanYi;
    private String XunRenQiShi;
    private String WangShangHuiJian;
    private String XiaQuMinJing;
    private String YiJianBaoJing;
    private String FangWuZuLin;
    private String ZhaoPingXinXi;


    public PoliceFeatures(){}
    public PoliceFeatures(String zhuHuChaXun, String paiChuSuoInfo, String anQuanJanYi, String xunRenQiShi, String wangShangHuiJian, String xiaQuMinJing, String yiJianBaoJing, String fangWuZuLin, String zhaoPingXinXi) {
        ZhuHuChaXun = zhuHuChaXun;
        PaiChuSuoInfo = paiChuSuoInfo;
        AnQuanJanYi = anQuanJanYi;
        XunRenQiShi = xunRenQiShi;
        WangShangHuiJian = wangShangHuiJian;
        XiaQuMinJing = xiaQuMinJing;
        YiJianBaoJing = yiJianBaoJing;
        FangWuZuLin = fangWuZuLin;
        ZhaoPingXinXi = zhaoPingXinXi;
    }

    public String getZhuHuChaXun() {
        return ZhuHuChaXun;
    }

    public void setZhuHuChaXun(String zhuHuChaXun) {
        ZhuHuChaXun = zhuHuChaXun;
    }

    public String getPaiChuSuoInfo() {
        return PaiChuSuoInfo;
    }

    public void setPaiChuSuoInfo(String paiChuSuoInfo) {
        PaiChuSuoInfo = paiChuSuoInfo;
    }

    public String getAnQuanJanYi() {
        return AnQuanJanYi;
    }

    public void setAnQuanJanYi(String anQuanJanYi) {
        AnQuanJanYi = anQuanJanYi;
    }

    public String getXunRenQiShi() {
        return XunRenQiShi;
    }

    public void setXunRenQiShi(String xunRenQiShi) {
        XunRenQiShi = xunRenQiShi;
    }

    public String getWangShangHuiJian() {
        return WangShangHuiJian;
    }

    public void setWangShangHuiJian(String wangShangHuiJian) {
        WangShangHuiJian = wangShangHuiJian;
    }

    public String getXiaQuMinJing() {
        return XiaQuMinJing;
    }

    public void setXiaQuMinJing(String xiaQuMinJing) {
        XiaQuMinJing = xiaQuMinJing;
    }

    public String getYiJianBaoJing() {
        return YiJianBaoJing;
    }

    public void setYiJianBaoJing(String yiJianBaoJing) {
        YiJianBaoJing = yiJianBaoJing;
    }

    public String getFangWuZuLin() {
        return FangWuZuLin;
    }

    public void setFangWuZuLin(String fangWuZuLin) {
        FangWuZuLin = fangWuZuLin;
    }

    public String getZhaoPingXinXi() {
        return ZhaoPingXinXi;
    }

    public void setZhaoPingXinXi(String zhaoPingXinXi) {
        ZhaoPingXinXi = zhaoPingXinXi;
    }

    @Override
    public String toString() {
        return "PoliceFeatures{" +
                "ZhuHuChaXun='" + ZhuHuChaXun + '\'' +
                ", PaiChuSuoInfo='" + PaiChuSuoInfo + '\'' +
                ", AnQuanJanYi='" + AnQuanJanYi + '\'' +
                ", XunRenQiShi='" + XunRenQiShi + '\'' +
                ", WangShangHuiJian='" + WangShangHuiJian + '\'' +
                ", XiaQuMinJing='" + XiaQuMinJing + '\'' +
                ", YiJianBaoJing='" + YiJianBaoJing + '\'' +
                ", FangWuZuLin='" + FangWuZuLin + '\'' +
                ", ZhaoPingXinXi='" + ZhaoPingXinXi + '\'' +
                '}';
    }
}
