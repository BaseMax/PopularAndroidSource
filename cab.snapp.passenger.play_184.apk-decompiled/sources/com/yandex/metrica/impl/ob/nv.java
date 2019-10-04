package com.yandex.metrica.impl.ob;

import android.content.Context;

public class nv {

    /* renamed from: a  reason: collision with root package name */
    private final String f6463a;

    public nv(Context context) {
        this(context.getPackageName());
    }

    nv(String str) {
        this.f6463a = str;
    }

    public byte[] a() {
        try {
            return nm.a(this.f6463a);
        } catch (Exception unused) {
            return new byte[16];
        }
    }

    public byte[] b() {
        try {
            return nm.a(new StringBuilder(this.f6463a).reverse().toString());
        } catch (Exception unused) {
            return new byte[16];
        }
    }
}
