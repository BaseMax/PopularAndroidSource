package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class DownloadEvent extends WhatType {
    public final String entityId;
    public final boolean isFree;
    public final Boolean isUpdating;
    public final String name = "download";
    public final String networkOperator;
    public final String networkType;
    public final String referrer;
    public final String status;
    public final Long versionCode;

    public DownloadEvent(String str, String str2, String str3, boolean z, String str4, String str5, Boolean bool, Long l2) {
        j.b(str, "status");
        j.b(str2, "entityId");
        j.b(str3, "referrer");
        j.b(str4, "networkOperator");
        j.b(str5, "networkType");
        this.status = str;
        this.entityId = str2;
        this.referrer = str3;
        this.isFree = z;
        this.networkOperator = str4;
        this.networkType = str5;
        this.isUpdating = bool;
        this.versionCode = l2;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = A.c(f.a("status", this.status), f.a("entity_id", this.entityId), f.a("referrer", this.referrer), f.a("is_free", Boolean.valueOf(this.isFree)), f.a("network_operator", this.networkOperator), f.a("network_type", this.networkType));
        Boolean bool = this.isUpdating;
        if (bool != null) {
            bool.booleanValue();
            c2.put("updating", this.isUpdating);
        }
        Long l2 = this.versionCode;
        if (l2 != null) {
            l2.longValue();
            c2.put("version_code", String.valueOf(this.versionCode.longValue()));
        }
        return c2;
    }
}
