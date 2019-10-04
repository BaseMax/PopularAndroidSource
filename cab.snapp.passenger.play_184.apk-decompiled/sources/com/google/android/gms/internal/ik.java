package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import java.util.Iterator;

public final class ik {

    /* renamed from: a  reason: collision with root package name */
    final String f3211a;

    /* renamed from: b  reason: collision with root package name */
    final String f3212b;
    final long c;
    final long d;
    final zzcgx e;
    private String f;

    ik(jx jxVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        ap.zzgm(str2);
        ap.zzgm(str3);
        this.f3211a = str2;
        this.f3212b = str3;
        this.f = TextUtils.isEmpty(str) ? null : str;
        this.c = j;
        this.d = j2;
        long j3 = this.d;
        if (j3 != 0 && j3 > this.c) {
            jxVar.zzawy().zzazf().zzj("Event created with reverse previous/current timestamps. appId", iz.a(str2));
        }
        this.e = a(jxVar, bundle);
    }

    private ik(jx jxVar, String str, String str2, String str3, long j, long j2, zzcgx zzcgx) {
        ap.zzgm(str2);
        ap.zzgm(str3);
        ap.checkNotNull(zzcgx);
        this.f3211a = str2;
        this.f3212b = str3;
        this.f = TextUtils.isEmpty(str) ? null : str;
        this.c = j;
        this.d = j2;
        long j3 = this.d;
        if (j3 != 0 && j3 > this.c) {
            jxVar.zzawy().zzazf().zzj("Event created with reverse previous/current timestamps. appId", iz.a(str2));
        }
        this.e = zzcgx;
    }

    private static zzcgx a(jx jxVar, Bundle bundle) {
        if (bundle == null || bundle.isEmpty()) {
            return new zzcgx(new Bundle());
        }
        Bundle bundle2 = new Bundle(bundle);
        Iterator it = bundle2.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                jxVar.zzawy().zzazd().log("Param name can't be null");
            } else {
                Object zzk = jxVar.zzawu().zzk(str, bundle2.get(str));
                if (zzk == null) {
                    jxVar.zzawy().zzazf().zzj("Param value can't be null", jxVar.zzawt().b(str));
                } else {
                    jxVar.zzawu().zza(bundle2, str, zzk);
                }
            }
            it.remove();
        }
        return new zzcgx(bundle2);
    }

    /* access modifiers changed from: package-private */
    public final ik a(jx jxVar, long j) {
        ik ikVar = new ik(jxVar, this.f, this.f3211a, this.f3212b, this.c, j, this.e);
        return ikVar;
    }

    public final String toString() {
        String str = this.f3211a;
        String str2 = this.f3212b;
        String valueOf = String.valueOf(this.e);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
