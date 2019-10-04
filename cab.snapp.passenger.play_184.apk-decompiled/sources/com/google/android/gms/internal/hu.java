package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Map;

public final class hu extends kv {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Long> f3190a = new ArrayMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<String, Integer> f3191b = new ArrayMap();
    long c;

    public hu(jx jxVar) {
        super(jxVar);
    }

    /* access modifiers changed from: package-private */
    public final void a(long j) {
        for (String put : this.f3190a.keySet()) {
            this.f3190a.put(put, Long.valueOf(j));
        }
        if (!this.f3190a.isEmpty()) {
            this.c = j;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(long j, AppMeasurement.g gVar) {
        if (gVar == null) {
            zzawy().zzazj().log("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            zzawy().zzazj().zzj("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            ln.zza(gVar, bundle);
            zzawm().zzc("am", "_xa", bundle);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, long j, AppMeasurement.g gVar) {
        if (gVar == null) {
            zzawy().zzazj().log("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            zzawy().zzazj().zzj("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            ln.zza(gVar, bundle);
            zzawm().zzc("am", "_xu", bundle);
        }
    }

    public final void beginAdUnitExposure(String str) {
        if (str == null || str.length() == 0) {
            zzawy().zzazd().log("Ad unit id must be a non-empty string");
            return;
        }
        zzawx().zzg(new hv(this, str, zzws().elapsedRealtime()));
    }

    public final void endAdUnitExposure(String str) {
        if (str == null || str.length() == 0) {
            zzawy().zzazd().log("Ad unit id must be a non-empty string");
            return;
        }
        zzawx().zzg(new hw(this, str, zzws().elapsedRealtime()));
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final void zzaj(long j) {
        lq zzbao = zzawq().zzbao();
        for (String next : this.f3190a.keySet()) {
            a(next, j - this.f3190a.get(next).longValue(), zzbao);
        }
        if (!this.f3190a.isEmpty()) {
            a(j - this.c, zzbao);
        }
        a(j);
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

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
