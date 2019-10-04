package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.s;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f2563a;

    public b(Context context) {
        try {
            Context remoteContext = s.getRemoteContext(context);
            this.f2563a = remoteContext == null ? null : remoteContext.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable unused) {
            this.f2563a = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final float a(String str) {
        try {
            if (this.f2563a == null) {
                return 0.0f;
            }
            return this.f2563a.getFloat(str, 0.0f);
        } catch (Throwable unused) {
            return 0.0f;
        }
    }

    /* access modifiers changed from: package-private */
    public final String a(String str, String str2) {
        try {
            return this.f2563a == null ? str2 : this.f2563a.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        try {
            if (this.f2563a == null) {
                return false;
            }
            return this.f2563a.getBoolean(str, false);
        } catch (Throwable unused) {
            return false;
        }
    }
}
