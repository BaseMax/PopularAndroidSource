package com.farsitel.bazaar.analytics.model.what;

import com.farsitel.bazaar.common.model.ui.PackageChangeType;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class PackageChangeEvent extends WhatType {
    public final String name = "package_change";
    public final String packageName;
    public final PackageChangeType packageStatus;

    public PackageChangeEvent(String str, PackageChangeType packageChangeType) {
        j.b(str, "packageName");
        j.b(packageChangeType, "packageStatus");
        this.packageName = str;
        this.packageStatus = packageChangeType;
    }

    public String a() {
        return this.name;
    }

    public Map<String, String> b() {
        return A.b(f.a("package_name", this.packageName), f.a("status", this.packageStatus.getValue()));
    }
}
