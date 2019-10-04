package com.google.android.gms.internal;

import com.google.android.gms.analytics.f;

@Deprecated
public final class bo {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f3094a = new ay();

    private static boolean a(int i) {
        return f3094a != null && f3094a.getLogLevel() <= i;
    }

    public static f getLogger() {
        return f3094a;
    }

    public static void setLogger(f fVar) {
        f3094a = fVar;
    }

    public static void v(String str) {
        bp zzzo = bp.zzzo();
        if (zzzo != null) {
            zzzo.zzdu(str);
        } else if (a(0)) {
            bf.zzdvy.get();
        }
        f fVar = f3094a;
        if (fVar != null) {
            fVar.verbose(str);
        }
    }

    public static void zzcu(String str) {
        bp zzzo = bp.zzzo();
        if (zzzo != null) {
            zzzo.zzdx(str);
        } else if (a(2)) {
            bf.zzdvy.get();
        }
        f fVar = f3094a;
        if (fVar != null) {
            fVar.warn(str);
        }
    }

    public static void zzf(String str, Object obj) {
        bp zzzo = bp.zzzo();
        if (zzzo != null) {
            zzzo.zze(str, obj);
        } else if (a(3)) {
            if (obj != null) {
                String valueOf = String.valueOf(obj);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(valueOf).length());
                sb.append(str);
                sb.append(":");
                sb.append(valueOf);
            }
            bf.zzdvy.get();
        }
        f fVar = f3094a;
        if (fVar != null) {
            fVar.error(str);
        }
    }
}
