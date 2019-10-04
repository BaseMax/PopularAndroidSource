package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.dynamite.DynamiteModule;

final class k {

    /* renamed from: a  reason: collision with root package name */
    private static aa f2989a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2990b = new Object();
    private static Context c;

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0012, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static synchronized void a(android.content.Context r2) {
        /*
            java.lang.Class<com.google.android.gms.common.k> r0 = com.google.android.gms.common.k.class
            monitor-enter(r0)
            android.content.Context r1 = c     // Catch:{ all -> 0x0013 }
            if (r1 != 0) goto L_0x0011
            if (r2 == 0) goto L_0x0011
            android.content.Context r2 = r2.getApplicationContext()     // Catch:{ all -> 0x0013 }
            c = r2     // Catch:{ all -> 0x0013 }
            monitor-exit(r0)
            return
        L_0x0011:
            monitor-exit(r0)
            return
        L_0x0013:
            r2 = move-exception
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.k.a(android.content.Context):void");
    }

    private static boolean a() {
        if (f2989a != null) {
            return true;
        }
        ap.checkNotNull(c);
        synchronized (f2990b) {
            if (f2989a == null) {
                try {
                    f2989a = ab.zzan(DynamiteModule.zza(c, DynamiteModule.zzgwz, "com.google.android.gms.googlecertificates").zzhb("com.google.android.gms.common.GoogleCertificatesImpl"));
                } catch (DynamiteModule.c unused) {
                    return false;
                }
            }
        }
        return true;
    }

    static boolean a(String str, l lVar) {
        return a(str, lVar, false);
    }

    private static boolean a(String str, l lVar, boolean z) {
        if (!a()) {
            return false;
        }
        ap.checkNotNull(c);
        try {
            return f2989a.zza(new zzn(str, lVar, z), m.zzz(c.getPackageManager()));
        } catch (RemoteException unused) {
            return false;
        }
    }

    static boolean b(String str, l lVar) {
        return a(str, lVar, true);
    }
}
