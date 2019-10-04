package c.e.a.b.h.b;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import c.e.a.b.g.f.C0837jc;

public final class Pb extends Sb {

    /* renamed from: d  reason: collision with root package name */
    public final AlarmManager f10714d = ((AlarmManager) b().getSystemService("alarm"));

    /* renamed from: e  reason: collision with root package name */
    public final C0907c f10715e;

    /* renamed from: f  reason: collision with root package name */
    public Integer f10716f;

    public Pb(Tb tb) {
        super(tb);
        this.f10715e = new Qb(this, tb.B(), tb);
    }

    public final void a(long j2) {
        s();
        a();
        Context b2 = b();
        if (!O.a(b2)) {
            e().A().a("Receiver not registered/enabled");
        }
        if (!cc.a(b2, false)) {
            e().A().a("Service not registered/enabled");
        }
        v();
        long a2 = c().a() + j2;
        if (j2 < Math.max(0, C0931k.L.a(null).longValue()) && !this.f10715e.d()) {
            e().B().a("Scheduling upload with DelayedRunnable");
            this.f10715e.a(j2);
        }
        a();
        if (Build.VERSION.SDK_INT >= 24) {
            e().B().a("Scheduling upload with JobScheduler");
            Context b3 = b();
            ComponentName componentName = new ComponentName(b3, "com.google.android.gms.measurement.AppMeasurementJobService");
            int w = w();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            JobInfo build = new JobInfo.Builder(w, componentName).setMinimumLatency(j2).setOverrideDeadline(j2 << 1).setExtras(persistableBundle).build();
            e().B().a("Scheduling job. JobID", Integer.valueOf(w));
            C0837jc.a(b3, build, "com.google.android.gms", "UploadAlarm");
            return;
        }
        e().B().a("Scheduling upload with AlarmManager");
        this.f10714d.setInexactRepeating(2, a2, Math.max(C0931k.G.a(null).longValue(), j2), y());
    }

    public final boolean u() {
        this.f10714d.cancel(y());
        if (Build.VERSION.SDK_INT >= 24) {
            x();
        }
        return false;
    }

    public final void v() {
        s();
        this.f10714d.cancel(y());
        this.f10715e.a();
        if (Build.VERSION.SDK_INT >= 24) {
            x();
        }
    }

    public final int w() {
        if (this.f10716f == null) {
            String valueOf = String.valueOf(b().getPackageName());
            this.f10716f = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f10716f.intValue();
    }

    @TargetApi(24)
    public final void x() {
        int w = w();
        e().B().a("Cancelling job. JobID", Integer.valueOf(w));
        ((JobScheduler) b().getSystemService("jobscheduler")).cancel(w);
    }

    public final PendingIntent y() {
        Context b2 = b();
        return PendingIntent.getBroadcast(b2, 0, new Intent().setClassName(b2, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }
}
