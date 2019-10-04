package com.google.android.gms.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ap;
import java.util.Map;

public class bp extends x {

    /* renamed from: a  reason: collision with root package name */
    private static bp f3095a;

    public bp(z zVar) {
        super(zVar);
    }

    private static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        String str = "-";
        if (!(obj instanceof Long)) {
            return obj instanceof Boolean ? String.valueOf(obj) : obj instanceof Throwable ? obj.getClass().getCanonicalName() : str;
        }
        Long l = (Long) obj;
        int i = (Math.abs(l.longValue()) > 100 ? 1 : (Math.abs(l.longValue()) == 100 ? 0 : -1));
        String valueOf = String.valueOf(obj);
        if (i < 0) {
            return valueOf;
        }
        if (valueOf.charAt(0) != '-') {
            str = "";
        }
        String valueOf2 = String.valueOf(Math.abs(l.longValue()));
        return str + Math.round(Math.pow(10.0d, (double) (valueOf2.length() - 1))) + "..." + str + Math.round(Math.pow(10.0d, (double) valueOf2.length()) - 1.0d);
    }

    public static bp zzzo() {
        return f3095a;
    }

    public final void zza(bk bkVar, String str) {
        String bkVar2 = bkVar != null ? bkVar.toString() : "no hit data";
        String valueOf = String.valueOf(str);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), bkVar2);
    }

    public final void zzf(Map<String, String> map, String str) {
        String str2;
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry next : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append((String) next.getKey());
                sb.append('=');
                sb.append((String) next.getValue());
            }
            str2 = sb.toString();
        } else {
            str2 = "no hit data";
        }
        String valueOf = String.valueOf(str);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), str2);
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        synchronized (bp.class) {
            f3095a = this;
        }
    }

    public final synchronized void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        ap.checkNotNull(str);
        if (i < 0) {
            i = 0;
        }
        if (i >= 9) {
            i = 8;
        }
        char c = this.zzdta.zzwu().zzyp() ? 'C' : 'c';
        char charAt = "01VDIWEA?".charAt(i);
        String str2 = y.VERSION;
        String a2 = a(str, a(obj), a(obj2), a(obj3));
        StringBuilder sb = new StringBuilder(ExifInterface.GPS_MEASUREMENT_3D.length() + 3 + String.valueOf(str2).length() + String.valueOf(a2).length());
        sb.append(ExifInterface.GPS_MEASUREMENT_3D);
        sb.append(charAt);
        sb.append(c);
        sb.append(str2);
        sb.append(":");
        sb.append(a2);
        String sb2 = sb.toString();
        if (sb2.length() > 1024) {
            sb2 = sb2.substring(0, 1024);
        }
        bt zzxj = zzwr().zzxj();
        if (zzxj != null) {
            zzxj.zzaab().zzeg(sb2);
        }
    }
}
