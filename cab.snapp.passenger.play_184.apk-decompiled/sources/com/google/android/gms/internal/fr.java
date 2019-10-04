package com.google.android.gms.internal;

import android.content.Context;

public final class fr {

    /* renamed from: b  reason: collision with root package name */
    private static fr f3154b = new fr();

    /* renamed from: a  reason: collision with root package name */
    private fq f3155a = null;

    private final synchronized fq a(Context context) {
        if (this.f3155a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f3155a = new fq(context);
        }
        return this.f3155a;
    }

    public static fq zzdb(Context context) {
        return f3154b.a(context);
    }
}
