package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.d;
import com.google.android.gms.common.internal.ap;

public class w {
    public final z zzdta;

    protected w(z zVar) {
        ap.checkNotNull(zVar);
        this.zzdta = zVar;
    }

    private static String a(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    protected static String a(String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = str2;
        }
        String a2 = a(obj);
        String a3 = a(obj2);
        String a4 = a(obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str2);
            sb.append(a2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str2);
            sb.append(a3);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a4)) {
            sb.append(str2);
            sb.append(a4);
        }
        return sb.toString();
    }

    private final void a(int i, String str, Object obj, Object obj2, Object obj3) {
        z zVar = this.zzdta;
        bp zzxh = zVar != null ? zVar.zzxh() : null;
        String str2 = bf.zzdvy.get();
        if (zzxh != null) {
            if (Log.isLoggable(str2, i)) {
                Log.println(i, str2, bp.a(str, obj, obj2, obj3));
            }
            if (i >= 5) {
                zzxh.zzb(i, str, obj, obj2, obj3);
            }
            return;
        }
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, a(str, obj, obj2, obj3));
        }
    }

    public static boolean zzpz() {
        return Log.isLoggable(bf.zzdvy.get(), 2);
    }

    public final void zza(String str, Object obj) {
        a(2, str, obj, null, null);
    }

    public final void zza(String str, Object obj, Object obj2) {
        a(2, str, obj, obj2, null);
    }

    public final void zza(String str, Object obj, Object obj2, Object obj3) {
        a(3, str, obj, obj2, obj3);
    }

    public final void zzb(String str, Object obj) {
        a(3, str, obj, null, null);
    }

    public final void zzb(String str, Object obj, Object obj2) {
        a(3, str, obj, obj2, null);
    }

    public final void zzb(String str, Object obj, Object obj2, Object obj3) {
        a(5, str, obj, obj2, obj3);
    }

    public final void zzc(String str, Object obj) {
        a(4, str, obj, null, null);
    }

    public final void zzc(String str, Object obj, Object obj2) {
        a(5, str, obj, obj2, null);
    }

    public final void zzd(String str, Object obj) {
        a(5, str, obj, null, null);
    }

    public final void zzd(String str, Object obj, Object obj2) {
        a(6, str, obj, obj2, null);
    }

    public final void zzdu(String str) {
        a(2, str, null, null, null);
    }

    public final void zzdv(String str) {
        a(3, str, null, null, null);
    }

    public final void zzdw(String str) {
        a(4, str, null, null, null);
    }

    public final void zzdx(String str) {
        a(5, str, null, null, null);
    }

    public final void zzdy(String str) {
        a(6, str, null, null, null);
    }

    public final void zze(String str, Object obj) {
        a(6, str, obj, null, null);
    }

    public final z zzwr() {
        return this.zzdta;
    }

    public final d zzww() {
        return this.zzdta.zzxi();
    }
}
