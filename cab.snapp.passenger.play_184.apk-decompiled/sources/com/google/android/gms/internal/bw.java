package com.google.android.gms.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.bz;

public final class bw<T extends Context & bz> {
    private static Boolean c;

    /* renamed from: a  reason: collision with root package name */
    final Handler f3108a = new Handler();

    /* renamed from: b  reason: collision with root package name */
    final T f3109b;

    public bw(T t) {
        ap.checkNotNull(t);
        this.f3109b = t;
    }

    private final void a(Integer num, JobParameters jobParameters) {
        z zzbm = z.zzbm(this.f3109b);
        bp zzwt = zzbm.zzwt();
        o zzwx = zzbm.zzwx();
        bx bxVar = new bx(this, num, zzbm, zzwt, jobParameters);
        zzwx.zza((bd) bxVar);
    }

    public static boolean zzbo(Context context) {
        ap.checkNotNull(context);
        Boolean bool = c;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zzt = ce.zzt(context, "com.google.android.gms.analytics.AnalyticsService");
        c = Boolean.valueOf(zzt);
        return zzt;
    }

    public final void onCreate() {
        z.zzbm(this.f3109b).zzwt().zzdu("Local AnalyticsService is starting up");
    }

    public final void onDestroy() {
        z.zzbm(this.f3109b).zzwt().zzdu("Local AnalyticsService is shutting down");
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        try {
            synchronized (bv.f3106a) {
                on onVar = bv.f3107b;
                if (onVar != null && onVar.isHeld()) {
                    onVar.release();
                }
            }
        } catch (SecurityException unused) {
        }
        bp zzwt = z.zzbm(this.f3109b).zzwt();
        if (intent == null) {
            zzwt.zzdx("AnalyticsService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzwt.zza("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            a(Integer.valueOf(i2), null);
        }
        return 2;
    }

    public final boolean onStartJob(JobParameters jobParameters) {
        bp zzwt = z.zzbm(this.f3109b).zzwt();
        String string = jobParameters.getExtras().getString("action");
        zzwt.zza("Local AnalyticsJobService called. action", string);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(string)) {
            a(null, jobParameters);
        }
        return true;
    }
}
