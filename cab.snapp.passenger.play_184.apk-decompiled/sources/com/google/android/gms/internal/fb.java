package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.internal.m;
import java.util.Locale;

public final class fb {

    /* renamed from: a  reason: collision with root package name */
    private final String f3144a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3145b;
    private final m c;
    private final int d;

    private fb(String str, String str2) {
        this.f3145b = str2;
        this.f3144a = str;
        this.c = new m(str);
        this.d = a();
    }

    public fb(String str, String... strArr) {
        this(str, a(strArr));
    }

    private final int a() {
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.f3144a, i)) {
            i++;
        }
        return i;
    }

    private final String a(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f3145b.concat(str);
    }

    private static String a(String... strArr) {
        if (strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        for (String str : strArr) {
            if (sb.length() > 1) {
                sb.append(",");
            }
            sb.append(str);
        }
        sb.append(']');
        sb.append(' ');
        return sb.toString();
    }

    private final boolean a(int i) {
        return this.d <= i;
    }

    public final void zza(String str, Throwable th, Object... objArr) {
        Log.wtf(this.f3144a, a(str, objArr), th);
    }

    public final void zza(String str, Object... objArr) {
        if (a(2)) {
            a(str, objArr);
        }
    }

    public final void zzb(String str, Object... objArr) {
        if (a(3)) {
            a(str, objArr);
        }
    }

    public final void zze(String str, Object... objArr) {
        a(str, objArr);
    }

    public final void zze(Throwable th) {
        Log.wtf(this.f3144a, th);
    }

    public final void zzf(String str, Object... objArr) {
        a(str, objArr);
    }
}
