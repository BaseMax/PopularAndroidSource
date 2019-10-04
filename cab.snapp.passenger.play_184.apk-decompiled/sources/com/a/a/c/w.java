package com.a.a.c;

import android.content.Context;
import android.os.Bundle;

final class w implements al {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1825a;

    /* renamed from: b  reason: collision with root package name */
    private final String f1826b;

    public w(Context context, String str) {
        this.f1825a = context;
        this.f1826b = str;
    }

    public final String getUnityVersion() {
        try {
            Bundle bundle = this.f1825a.getPackageManager().getApplicationInfo(this.f1826b, 128).metaData;
            if (bundle != null) {
                return bundle.getString("io.fabric.unity.crashlytics.version");
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
