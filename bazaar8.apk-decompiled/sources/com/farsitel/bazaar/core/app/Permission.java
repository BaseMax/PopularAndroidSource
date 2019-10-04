package com.farsitel.bazaar.core.app;

/* compiled from: PermissionManager.kt */
public enum Permission {
    WRITE_EXTERNAL_STORAGE("android.permission.WRITE_EXTERNAL_STORAGE", "WRITE_EXTERNAL_STORAGE"),
    ACCESS_COARSE_LOCATION("android.permission.ACCESS_COARSE_LOCATION", "ACCESS_COARSE_LOCATION");
    
    public final String description;
    public final String value;

    /* access modifiers changed from: public */
    Permission(String str, String str2) {
        this.value = str;
        this.description = str2;
    }

    public final String f() {
        return this.value;
    }
}
