package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.ap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class o extends x {

    /* renamed from: a  reason: collision with root package name */
    final al f3416a;

    public o(z zVar, ab abVar) {
        super(zVar);
        ap.checkNotNull(abVar);
        this.f3416a = new al(zVar, abVar);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        r.zzve();
        this.f3416a.d();
    }

    public final void start() {
        this.f3416a.a();
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        this.f3416a.initialize();
    }

    public final void zzwp() {
        c();
        r.zzve();
        al alVar = this.f3416a;
        r.zzve();
        alVar.c();
        alVar.zzdu("Service disconnected");
    }

    public final void setLocalDispatchPeriod(int i) {
        c();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        this.zzdta.zzwv().zzc(new p(this, i));
    }

    public final long zza(ac acVar) {
        c();
        ap.checkNotNull(acVar);
        r.zzve();
        long zza = this.f3416a.zza(acVar, true);
        if (zza == 0) {
            al alVar = this.f3416a;
            r.zzve();
            alVar.zzb("Sending first hit to property", acVar.zzxn());
            if (!alVar.zzdta.zzxa().zzzx().zzu(ax.zzza())) {
                String zzaaa = alVar.zzdta.zzxa().zzaaa();
                if (!TextUtils.isEmpty(zzaaa)) {
                    b zza2 = ce.zza(alVar.zzdta.zzwt(), zzaaa);
                    alVar.zzb("Found relevant installation campaign", zza2);
                    alVar.a(acVar, zza2);
                }
            }
        }
        return zza;
    }

    public final void zza(bk bkVar) {
        ap.checkNotNull(bkVar);
        c();
        zzb("Hit delivery requested", bkVar);
        this.zzdta.zzwv().zzc(new s(this, bkVar));
    }

    public final void zzwm() {
        c();
        this.zzdta.zzwv().zzc(new t(this));
    }

    public final void zza(bd bdVar) {
        c();
        this.zzdta.zzwv().zzc(new u(this, bdVar));
    }

    public final void zzwn() {
        c();
        Context context = this.zzdta.getContext();
        if (!bv.zzbk(context) || !bw.zzbo(context)) {
            zza((bd) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
        context.startService(intent);
    }

    public final boolean zzwo() {
        c();
        try {
            this.zzdta.zzwv().zza(new v(this)).get(4, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        r.zzve();
        al alVar = this.f3416a;
        r.zzve();
        alVar.c = alVar.zzdta.zzws().currentTimeMillis();
    }

    public final void zza(String str, Runnable runnable) {
        ap.zzh(str, "campaign param can't be empty");
        this.zzdta.zzwv().zzc(new r(this, str, runnable));
    }
}
