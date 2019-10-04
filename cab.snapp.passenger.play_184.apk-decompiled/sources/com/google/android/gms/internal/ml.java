package com.google.android.gms.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.mp;

public final class ml<T extends Context & mp> {

    /* renamed from: a  reason: collision with root package name */
    final T f3388a;

    public ml(T t) {
        ap.checkNotNull(t);
        this.f3388a = t;
    }

    private final void a(Runnable runnable) {
        jx zzdx = jx.zzdx(this.f3388a);
        zzdx.zzawy();
        zzdx.zzawx().zzg(new mo(zzdx, runnable));
    }

    public static boolean zzk(Context context, boolean z) {
        ap.checkNotNull(context);
        return na.zzt(context, Build.VERSION.SDK_INT >= 24 ? "com.google.android.gms.measurement.AppMeasurementJobService" : "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* access modifiers changed from: package-private */
    public final iz a() {
        return jx.zzdx(this.f3388a).zzawy();
    }

    public final IBinder onBind(Intent intent) {
        if (intent == null) {
            a().zzazd().log("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new kc(jx.zzdx(this.f3388a));
        }
        a().zzazf().zzj("onBind received unknown action", action);
        return null;
    }

    public final void onCreate() {
        jx.zzdx(this.f3388a).zzawy().zzazj().log("Local AppMeasurementService is starting up");
    }

    public final void onDestroy() {
        jx.zzdx(this.f3388a).zzawy().zzazj().log("Local AppMeasurementService is shutting down");
    }

    public final void onRebind(Intent intent) {
        if (intent == null) {
            a().zzazd().log("onRebind called with null intent");
            return;
        }
        a().zzazj().zzj("onRebind called. action", intent.getAction());
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        iz zzawy = jx.zzdx(this.f3388a).zzawy();
        if (intent == null) {
            zzawy.zzazf().log("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzawy.zzazj().zze("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            a(new mm(this, i2, zzawy, intent));
        }
        return 2;
    }

    public final boolean onStartJob(JobParameters jobParameters) {
        iz zzawy = jx.zzdx(this.f3388a).zzawy();
        String string = jobParameters.getExtras().getString("action");
        zzawy.zzazj().zzj("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            a(new mn(this, zzawy, jobParameters));
        }
        return true;
    }

    public final boolean onUnbind(Intent intent) {
        if (intent == null) {
            a().zzazd().log("onUnbind called with null intent");
            return true;
        }
        a().zzazj().zzj("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
