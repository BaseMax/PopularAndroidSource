package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.n;
import com.google.android.gms.internal.z;
import java.util.ListIterator;

public class i extends q<i> {

    /* renamed from: a  reason: collision with root package name */
    final z f2581a;
    private boolean d;

    public i(z zVar) {
        super(zVar.zzwv(), zVar.zzws());
        this.f2581a = zVar;
    }

    /* access modifiers changed from: protected */
    public final void a(o oVar) {
        j jVar = (j) oVar.zzb(j.class);
        if (TextUtils.isEmpty(jVar.zzvz())) {
            jVar.setClientId(this.f2581a.zzxl().zzyk());
        }
        if (this.d && TextUtils.isEmpty(jVar.zzwa())) {
            n zzxk = this.f2581a.zzxk();
            jVar.zzdq(zzxk.zzwi());
            jVar.zzai(zzxk.zzwb());
        }
    }

    public final void enableAdvertisingIdCollection(boolean z) {
        this.d = z;
    }

    public final void zzde(String str) {
        ap.zzgm(str);
        Uri a2 = j.a(str);
        ListIterator<u> listIterator = this.c.getTransports().listIterator();
        while (listIterator.hasNext()) {
            if (a2.equals(listIterator.next().zzup())) {
                listIterator.remove();
            }
        }
        this.c.getTransports().add(new j(this.f2581a, str));
    }

    public final o zzun() {
        o zzus = this.c.zzus();
        zzus.zza((p) this.f2581a.zzxd().zzxy());
        zzus.zza((p) this.f2581a.zzxe().zzzc());
        a();
        return zzus;
    }
}
