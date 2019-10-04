package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;

public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2965a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static h f2966b;

    public static h zzco(Context context) {
        synchronized (f2965a) {
            if (f2966b == null) {
                f2966b = new j(context.getApplicationContext());
            }
        }
        return f2966b;
    }

    /* access modifiers changed from: protected */
    public abstract boolean a(i iVar, ServiceConnection serviceConnection, String str);

    /* access modifiers changed from: protected */
    public abstract void b(i iVar, ServiceConnection serviceConnection, String str);

    public final void zza(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        b(new i(str, str2, i), serviceConnection, str3);
    }

    public final boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return a(new i(componentName, 129), serviceConnection, str);
    }

    public final void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        b(new i(componentName, 129), serviceConnection, str);
    }
}
