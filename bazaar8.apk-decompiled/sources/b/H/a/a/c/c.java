package b.H.a.a.c;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import b.H.a.c.C0184e;
import b.H.a.c.o;
import b.H.a.d;
import b.H.a.d.e;
import b.H.a.m;
import b.H.f;
import java.util.List;
import java.util.Locale;

/* compiled from: SystemJobScheduler */
public class c implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1383a = f.a("SystemJobScheduler");

    /* renamed from: b  reason: collision with root package name */
    public final JobScheduler f1384b;

    /* renamed from: c  reason: collision with root package name */
    public final m f1385c;

    /* renamed from: d  reason: collision with root package name */
    public final e f1386d;

    /* renamed from: e  reason: collision with root package name */
    public final b f1387e;

    public c(Context context, m mVar) {
        this(context, mVar, (JobScheduler) context.getSystemService("jobscheduler"), new b(context));
    }

    public void a(o... oVarArr) {
        int i2;
        WorkDatabase g2 = this.f1385c.g();
        int length = oVarArr.length;
        int i3 = 0;
        while (i3 < length) {
            o oVar = oVarArr[i3];
            g2.c();
            try {
                o d2 = g2.v().d(oVar.f1466c);
                if (d2 == null) {
                    f a2 = f.a();
                    String str = f1383a;
                    a2.e(str, "Skipping scheduling " + oVar.f1466c + " because it's no longer in the DB", new Throwable[0]);
                } else if (d2.f1467d != WorkInfo.State.ENQUEUED) {
                    f a3 = f.a();
                    String str2 = f1383a;
                    a3.e(str2, "Skipping scheduling " + oVar.f1466c + " because it is no longer enqueued", new Throwable[0]);
                } else {
                    C0184e a4 = g2.t().a(oVar.f1466c);
                    if (a4 == null || a(this.f1384b, oVar.f1466c) == null) {
                        if (a4 != null) {
                            i2 = a4.f1453b;
                        } else {
                            i2 = this.f1386d.a(this.f1385c.c().e(), this.f1385c.c().c());
                        }
                        if (a4 == null) {
                            this.f1385c.g().t().a(new C0184e(oVar.f1466c, i2));
                        }
                        a(oVar, i2);
                        if (Build.VERSION.SDK_INT == 23) {
                            a(oVar, this.f1386d.a(this.f1385c.c().e(), this.f1385c.c().c()));
                        }
                        g2.o();
                    } else {
                        f.a().a(f1383a, String.format("Skipping scheduling %s because JobScheduler is aware of it already.", new Object[]{oVar.f1466c}), new Throwable[0]);
                    }
                }
                i3++;
            } finally {
                g2.e();
            }
        }
    }

    public c(Context context, m mVar, JobScheduler jobScheduler, b bVar) {
        this.f1385c = mVar;
        this.f1384b = jobScheduler;
        this.f1386d = new e(context);
        this.f1387e = bVar;
    }

    public void a(o oVar, int i2) {
        int i3;
        JobInfo a2 = this.f1387e.a(oVar, i2);
        f.a().a(f1383a, String.format("Scheduling work ID %s Job ID %s", new Object[]{oVar.f1466c, Integer.valueOf(i2)}), new Throwable[0]);
        try {
            this.f1384b.schedule(a2);
        } catch (IllegalStateException e2) {
            List<JobInfo> allPendingJobs = this.f1384b.getAllPendingJobs();
            if (allPendingJobs != null) {
                i3 = 0;
                for (JobInfo extras : allPendingJobs) {
                    if (extras.getExtras().getString("EXTRA_WORK_SPEC_ID") != null) {
                        i3++;
                    }
                }
            } else {
                i3 = 0;
            }
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", new Object[]{Integer.valueOf(i3), Integer.valueOf(this.f1385c.g().v().a().size()), Integer.valueOf(this.f1385c.c().d())});
            f.a().b(f1383a, format, new Throwable[0]);
            throw new IllegalStateException(format, e2);
        }
    }

    public void a(String str) {
        List<JobInfo> allPendingJobs = this.f1384b.getAllPendingJobs();
        if (allPendingJobs != null) {
            for (JobInfo next : allPendingJobs) {
                if (str.equals(next.getExtras().getString("EXTRA_WORK_SPEC_ID"))) {
                    this.f1385c.g().t().b(str);
                    this.f1384b.cancel(next.getId());
                    if (Build.VERSION.SDK_INT != 23) {
                        return;
                    }
                }
            }
        }
    }

    public static void a(Context context) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
            if (allPendingJobs != null) {
                for (JobInfo next : allPendingJobs) {
                    if (next.getExtras().containsKey("EXTRA_WORK_SPEC_ID")) {
                        jobScheduler.cancel(next.getId());
                    }
                }
            }
        }
    }

    public static JobInfo a(JobScheduler jobScheduler, String str) {
        List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
        if (allPendingJobs != null) {
            for (JobInfo next : allPendingJobs) {
                PersistableBundle extras = next.getExtras();
                if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID") && str.equals(extras.getString("EXTRA_WORK_SPEC_ID"))) {
                    return next;
                }
            }
        }
        return null;
    }
}
