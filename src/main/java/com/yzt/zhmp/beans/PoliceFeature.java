package com.yzt.zhmp.beans;

public class PoliceFeature {
    private String fetaures;
    private String status;

    public PoliceFeature(String fetaures, String status) {
        this.fetaures = fetaures;
        this.status = status;
    }

    public String getFetaures() {
        return fetaures;
    }

    public void setFetaures(String fetaures) {
        this.fetaures = fetaures;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "PoliceFeature{" +
                "fetaures='" + fetaures + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
