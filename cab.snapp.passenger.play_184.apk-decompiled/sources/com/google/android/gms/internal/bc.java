package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ap;
import io.fabric.sdk.android.services.settings.t;

public final class bc extends x {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3082a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3083b;
    private final AlarmManager c = ((AlarmManager) this.zzdta.getContext().getSystemService(NotificationCompat.CATEGORY_ALARM));
    private Integer d;

    public final boolean zzdx() {
        return this.f3083b;
    }

    public final boolean zzze() {
        return this.f3082a;
    }

    protected bc(z zVar) {
        super(zVar);
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        try {
            cancel();
            if (ax.zzyt() > 0) {
                ActivityInfo receiverInfo = this.zzdta.getContext().getPackageManager().getReceiverInfo(new ComponentName(this.zzdta.getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2);
                if (receiverInfo != null && receiverInfo.enabled) {
                    zzdu("Receiver registered for local dispatch.");
                    this.f3082a = true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public final void schedule() {
        c();
        ap.zza(this.f3082a, (Object) "Receiver not registered");
        long zzyt = ax.zzyt();
        if (zzyt > 0) {
            cancel();
            long elapsedRealtime = this.zzdta.zzws().elapsedRealtime() + zzyt;
            this.f3083b = true;
            if (Build.VERSION.SDK_INT >= 24) {
                zzdu("Scheduling upload with JobScheduler");
                JobInfo.Builder builder = new JobInfo.Builder(b(), new ComponentName(this.zzdta.getContext(), "com.google.android.gms.analytics.AnalyticsJobService"));
                builder.setMinimumLatency(zzyt);
                builder.setOverrideDeadline(zzyt << 1);
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString("action", "com.google.android.gms.analytics.ANALYTICS_DISPATCH");
                builder.setExtras(persistableBundle);
                JobInfo build = builder.build();
                zza("Scheduling job. JobID", Integer.valueOf(b()));
                ((JobScheduler) this.zzdta.getContext().getSystemService("jobscheduler")).schedule(build);
                return;
            }
            zzdu("Scheduling upload with AlarmManager");
            this.c.setInexactRepeating(2, elapsedRealtime, zzyt, a());
        }
    }

    private final PendingIntent a() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(this.zzdta.getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(this.zzdta.getContext(), 0, intent, 0);
    }

    public final void cancel() {
        this.f3083b = false;
        this.c.cancel(a());
        if (Build.VERSION.SDK_INT >= 24) {
            zza("Cancelling job. JobID", Integer.valueOf(b()));
            ((JobScheduler) this.zzdta.getContext().getSystemService("jobscheduler")).cancel(b());
        }
    }

    private final int b() {
        if (this.d == null) {
            String valueOf = String.valueOf(this.zzdta.getContext().getPackageName());
            this.d = Integer.valueOf((valueOf.length() != 0 ? t.ANALYTICS_KEY.concat(valueOf) : new String(t.ANALYTICS_KEY)).hashCode());
        }
        return this.d.intValue();
    }
}
