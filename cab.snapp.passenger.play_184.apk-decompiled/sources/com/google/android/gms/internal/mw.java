package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.d;

public final class mw extends kw {

    /* renamed from: a  reason: collision with root package name */
    private final AlarmManager f3405a = ((AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM));

    /* renamed from: b  reason: collision with root package name */
    private final ih f3406b;
    private Integer c;

    protected mw(jx jxVar) {
        super(jxVar);
        this.f3406b = new mx(this, jxVar);
    }

    private final void c() {
        zzawy().zzazj().zzj("Cancelling job. JobID", Integer.valueOf(d()));
        ((JobScheduler) getContext().getSystemService("jobscheduler")).cancel(d());
    }

    private final int d() {
        if (this.c == null) {
            String valueOf = String.valueOf(getContext().getPackageName());
            this.c = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.c.intValue();
    }

    private final PendingIntent e() {
        Intent className = new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(getContext(), 0, className, 0);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        this.f3405a.cancel(e());
        if (Build.VERSION.SDK_INT >= 24) {
            c();
        }
        return false;
    }

    public final void cancel() {
        k();
        this.f3405a.cancel(e());
        this.f3406b.cancel();
        if (Build.VERSION.SDK_INT >= 24) {
            c();
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

    public final void zzs(long j) {
        k();
        if (!jo.zzbk(getContext())) {
            zzawy().zzazi().log("Receiver not registered/enabled");
        }
        if (!ml.zzk(getContext(), false)) {
            zzawy().zzazi().log("Service not registered/enabled");
        }
        cancel();
        long elapsedRealtime = zzws().elapsedRealtime() + j;
        if (j < Math.max(0, ip.zzjba.get().longValue()) && !this.f3406b.zzdx()) {
            zzawy().zzazj().log("Scheduling upload with DelayedRunnable");
            this.f3406b.zzs(j);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            zzawy().zzazj().log("Scheduling upload with JobScheduler");
            JobInfo.Builder builder = new JobInfo.Builder(d(), new ComponentName(getContext(), "com.google.android.gms.measurement.AppMeasurementJobService"));
            builder.setMinimumLatency(j);
            builder.setOverrideDeadline(j << 1);
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            builder.setExtras(persistableBundle);
            JobInfo build = builder.build();
            zzawy().zzazj().zzj("Scheduling job. JobID", Integer.valueOf(d()));
            ((JobScheduler) getContext().getSystemService("jobscheduler")).schedule(build);
            return;
        }
        zzawy().zzazj().log("Scheduling upload with AlarmManager");
        this.f3405a.setInexactRepeating(2, elapsedRealtime, Math.max(ip.zzjav.get().longValue(), j), e());
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
