package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.UnsupportedEncodingException;

class hp {

    /* renamed from: a  reason: collision with root package name */
    private Context f6116a;

    public hp(Context context) {
        this.f6116a = context;
    }

    public String a(ic icVar) {
        String a2 = ij.a(icVar);
        if (a2 != null) {
            return a(a2);
        }
        return null;
    }

    public ic a(long j, String str) {
        String b2 = b(str);
        if (b2 == null) {
            return null;
        }
        return ij.a(j, b2);
    }

    public String a(hv hvVar) {
        String a2 = ij.a(hvVar);
        if (a2 == null) {
            return null;
        }
        return a(a2);
    }

    /* access modifiers changed from: package-private */
    public hv b(long j, String str) {
        String b2 = b(str);
        if (b2 == null) {
            return null;
        }
        return ij.b(j, b2);
    }

    public String a(String str) {
        try {
            return nm.a(this.f6116a, str);
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public String b(String str) {
        try {
            return nm.a(this.f6116a, str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }
}
