package com.google.android.gms.common.internal;

import android.util.Log;

public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static int f2975a = 15;

    /* renamed from: b  reason: collision with root package name */
    private static final String f2976b = null;
    private final String c;
    private final String d;

    public m(String str) {
        this(str, null);
    }

    public m(String str, String str2) {
        ap.checkNotNull(str, "log tag cannot be null");
        ap.zzb(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.c = str;
        if (str2 == null || str2.length() <= 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
    }

    private final String a(String str) {
        String str2 = this.d;
        return str2 == null ? str : str2.concat(str);
    }

    private final String a(String str, Object... objArr) {
        String format = String.format(str, objArr);
        String str2 = this.d;
        return str2 == null ? format : str2.concat(format);
    }

    private final boolean a(int i) {
        return Log.isLoggable(this.c, i);
    }

    public final void zzb(String str, String str2, Throwable th) {
        if (a(4)) {
            a(str2);
        }
    }

    public final void zzb(String str, String str2, Object... objArr) {
        if (a(3)) {
            a(str2, objArr);
        }
    }

    public final void zzc(String str, String str2, Throwable th) {
        if (a(5)) {
            a(str2);
        }
    }

    public final void zzc(String str, String str2, Object... objArr) {
        if (a(5)) {
            a(str2, objArr);
        }
    }

    public final void zzd(String str, String str2, Throwable th) {
        if (a(6)) {
            a(str2);
        }
    }

    public final void zzd(String str, String str2, Object... objArr) {
        if (a(6)) {
            a(str2, objArr);
        }
    }

    public final void zzu(String str, String str2) {
        if (a(3)) {
            a(str2);
        }
    }

    public final void zzv(String str, String str2) {
        if (a(5)) {
            a(str2);
        }
    }

    public final void zzw(String str, String str2) {
        if (a(6)) {
            a(str2);
        }
    }
}
