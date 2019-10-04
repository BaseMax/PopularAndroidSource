package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.text.TextUtils;
import b.H.a.a;
import b.H.a.m;
import b.H.f;
import java.util.HashMap;
import java.util.Map;

public class SystemJobService extends JobService implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1030a = f.a("SystemJobService");

    /* renamed from: b  reason: collision with root package name */
    public m f1031b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, JobParameters> f1032c = new HashMap();

    public void a(String str, boolean z) {
        JobParameters remove;
        f.a().a(f1030a, String.format("%s executed on JobScheduler", new Object[]{str}), new Throwable[0]);
        synchronized (this.f1032c) {
            remove = this.f1032c.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    public void onCreate() {
        super.onCreate();
        this.f1031b = m.a();
        m mVar = this.f1031b;
        if (mVar != null) {
            mVar.e().a((a) this);
        } else if (Application.class.equals(getApplication().getClass())) {
            f.a().e(f1030a, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        } else {
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    public void onDestroy() {
        super.onDestroy();
        m mVar = this.f1031b;
        if (mVar != null) {
            mVar.e().b((a) this);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0072, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0077, code lost:
        if (android.os.Build.VERSION.SDK_INT < 24) goto L_0x00aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0079, code lost:
        r2 = new androidx.work.WorkerParameters.a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0082, code lost:
        if (r9.getTriggeredContentUris() == null) goto L_0x008e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0084, code lost:
        r2.f1022b = java.util.Arrays.asList(r9.getTriggeredContentUris());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0092, code lost:
        if (r9.getTriggeredContentAuthorities() == null) goto L_0x009e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0094, code lost:
        r2.f1021a = java.util.Arrays.asList(r9.getTriggeredContentAuthorities());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a2, code lost:
        if (android.os.Build.VERSION.SDK_INT < 28) goto L_0x00aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00a4, code lost:
        r2.f1023c = r9.getNetwork();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00aa, code lost:
        r8.f1031b.a(r0, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00af, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onStartJob(android.app.job.JobParameters r9) {
        /*
            r8 = this;
            b.H.a.m r0 = r8.f1031b
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L_0x0017
            b.H.f r0 = b.H.f.a()
            java.lang.String r3 = f1030a
            java.lang.Throwable[] r4 = new java.lang.Throwable[r2]
            java.lang.String r5 = "WorkManager is not initialized; requesting retry."
            r0.a(r3, r5, r4)
            r8.jobFinished(r9, r1)
            return r2
        L_0x0017:
            android.os.PersistableBundle r0 = r9.getExtras()
            java.lang.String r3 = "EXTRA_WORK_SPEC_ID"
            java.lang.String r0 = r0.getString(r3)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L_0x0035
            b.H.f r9 = b.H.f.a()
            java.lang.String r0 = f1030a
            java.lang.Throwable[] r1 = new java.lang.Throwable[r2]
            java.lang.String r3 = "WorkSpec id not found!"
            r9.b(r0, r3, r1)
            return r2
        L_0x0035:
            java.util.Map<java.lang.String, android.app.job.JobParameters> r3 = r8.f1032c
            monitor-enter(r3)
            java.util.Map<java.lang.String, android.app.job.JobParameters> r4 = r8.f1032c     // Catch:{ all -> 0x00b0 }
            boolean r4 = r4.containsKey(r0)     // Catch:{ all -> 0x00b0 }
            if (r4 == 0) goto L_0x0057
            b.H.f r9 = b.H.f.a()     // Catch:{ all -> 0x00b0 }
            java.lang.String r4 = f1030a     // Catch:{ all -> 0x00b0 }
            java.lang.String r5 = "Job is already being executed by SystemJobService: %s"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x00b0 }
            r1[r2] = r0     // Catch:{ all -> 0x00b0 }
            java.lang.String r0 = java.lang.String.format(r5, r1)     // Catch:{ all -> 0x00b0 }
            java.lang.Throwable[] r1 = new java.lang.Throwable[r2]     // Catch:{ all -> 0x00b0 }
            r9.a(r4, r0, r1)     // Catch:{ all -> 0x00b0 }
            monitor-exit(r3)     // Catch:{ all -> 0x00b0 }
            return r2
        L_0x0057:
            b.H.f r4 = b.H.f.a()     // Catch:{ all -> 0x00b0 }
            java.lang.String r5 = f1030a     // Catch:{ all -> 0x00b0 }
            java.lang.String r6 = "onStartJob for %s"
            java.lang.Object[] r7 = new java.lang.Object[r1]     // Catch:{ all -> 0x00b0 }
            r7[r2] = r0     // Catch:{ all -> 0x00b0 }
            java.lang.String r6 = java.lang.String.format(r6, r7)     // Catch:{ all -> 0x00b0 }
            java.lang.Throwable[] r2 = new java.lang.Throwable[r2]     // Catch:{ all -> 0x00b0 }
            r4.a(r5, r6, r2)     // Catch:{ all -> 0x00b0 }
            java.util.Map<java.lang.String, android.app.job.JobParameters> r2 = r8.f1032c     // Catch:{ all -> 0x00b0 }
            r2.put(r0, r9)     // Catch:{ all -> 0x00b0 }
            monitor-exit(r3)     // Catch:{ all -> 0x00b0 }
            r2 = 0
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 24
            if (r3 < r4) goto L_0x00aa
            androidx.work.WorkerParameters$a r2 = new androidx.work.WorkerParameters$a
            r2.<init>()
            android.net.Uri[] r3 = r9.getTriggeredContentUris()
            if (r3 == 0) goto L_0x008e
            android.net.Uri[] r3 = r9.getTriggeredContentUris()
            java.util.List r3 = java.util.Arrays.asList(r3)
            r2.f1022b = r3
        L_0x008e:
            java.lang.String[] r3 = r9.getTriggeredContentAuthorities()
            if (r3 == 0) goto L_0x009e
            java.lang.String[] r3 = r9.getTriggeredContentAuthorities()
            java.util.List r3 = java.util.Arrays.asList(r3)
            r2.f1021a = r3
        L_0x009e:
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r3 < r4) goto L_0x00aa
            android.net.Network r9 = r9.getNetwork()
            r2.f1023c = r9
        L_0x00aa:
            b.H.a.m r9 = r8.f1031b
            r9.a((java.lang.String) r0, (androidx.work.WorkerParameters.a) r2)
            return r1
        L_0x00b0:
            r9 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x00b0 }
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobService.onStartJob(android.app.job.JobParameters):boolean");
    }

    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f1031b == null) {
            f.a().a(f1030a, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String string = jobParameters.getExtras().getString("EXTRA_WORK_SPEC_ID");
        if (TextUtils.isEmpty(string)) {
            f.a().b(f1030a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        f.a().a(f1030a, String.format("onStopJob for %s", new Object[]{string}), new Throwable[0]);
        synchronized (this.f1032c) {
            this.f1032c.remove(string);
        }
        this.f1031b.d(string);
        return !this.f1031b.e().a(string);
    }
}
