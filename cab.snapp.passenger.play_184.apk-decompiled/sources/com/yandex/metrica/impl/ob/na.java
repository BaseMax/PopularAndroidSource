package com.yandex.metrica.impl.ob;

import android.util.Log;

public abstract class na {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f6447a = false;

    private static String d(String str) {
        return str == null ? "" : str;
    }

    /* access modifiers changed from: package-private */
    public abstract String c(String str, Object[] objArr);

    /* access modifiers changed from: package-private */
    public abstract String d();

    /* access modifiers changed from: package-private */
    public abstract String e();

    public void a() {
        this.f6447a = true;
    }

    public boolean b() {
        return this.f6447a;
    }

    public na(boolean z) {
        this.f6447a = z;
    }

    public void a(String str) {
        a(4, str);
    }

    public void b(String str) {
        a(5, str);
    }

    public void c(String str) {
        a(6, str);
    }

    public void a(String str, Object... objArr) {
        a(4, str, objArr);
    }

    public void b(String str, Object... objArr) {
        a(5, str, objArr);
    }

    /* access modifiers changed from: package-private */
    public void a(int i, String str) {
        if (this.f6447a) {
            String d = d();
            Log.println(i, d, e() + d(str));
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i, String str, Object... objArr) {
        if (this.f6447a) {
            Log.println(i, d(), d(str, objArr));
        }
    }

    private String d(String str, Object[] objArr) {
        try {
            return e() + c(d(str), objArr);
        } catch (Throwable unused) {
            return c();
        }
    }

    /* access modifiers changed from: package-private */
    public String c() {
        return e();
    }
}
