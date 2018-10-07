package com.yzt.zhmp.beans;

import java.io.Serializable;

public class District implements Serializable {
    private String discode;

    private String name;

    private static final long serialVersionUID = 1L;

    public String getDiscode() {
        return discode;
    }

    public void setDiscode(String discode) {
        this.discode = discode == null ? null : discode.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", discode=").append(discode);
        sb.append(", name=").append(name);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}