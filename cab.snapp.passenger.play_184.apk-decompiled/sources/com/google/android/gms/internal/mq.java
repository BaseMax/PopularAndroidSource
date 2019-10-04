package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;

public final class mq extends kw {

    /* renamed from: a  reason: collision with root package name */
    long f3395a = zzws().elapsedRealtime();

    /* renamed from: b  reason: collision with root package name */
    final ih f3396b = new mr(this, this.e);
    final ih c = new ms(this, this.e);
    private Handler d;

    mq(jx jxVar) {
        super(jxVar);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        synchronized (this) {
            if (this.d == null) {
                this.d = new Handler(Looper.getMainLooper());
            }
        }
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final /* bridge */ /* synthetic */ void zzawj() {
        super.zzawj();
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final boolean zzbs(boolean z) {
        zzve();
        k();
        long elapsedRealtime = zzws().elapsedRealtime();
        zzawz().zzjdh.set(zzws().currentTimeMillis());
        long j = elapsedRealtime - this.f3395a;
        if (z || j >= 1000) {
            zzawz().zzjdi.set(j);
            zzawy().zzazj().zzj("Recording user engagement, ms", Long.valueOf(j));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j);
            ln.zza((AppMeasurement.g) zzawq().zzbao(), bundle);
            zzawm().zzc("auto", "_e", bundle);
            this.f3395a = elapsedRealtime;
            this.c.cancel();
            this.c.zzs(Math.max(0, 3600000 - zzawz().zzjdi.get()));
            return true;
        }
        zzawy().zzazj().zzj("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
        return false;
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
