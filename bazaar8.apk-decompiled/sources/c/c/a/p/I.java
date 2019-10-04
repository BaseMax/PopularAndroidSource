package c.c.a.p;

import androidx.work.BackoffPolicy;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;
import b.H.b;
import b.H.g;
import b.H.j;
import b.H.m;
import b.H.n;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.farsitel.bazaar.app.BazaarApp;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.work.BookmarkWorker;
import com.farsitel.bazaar.work.CommentActionWorker;
import com.farsitel.bazaar.work.LocationUpdatesWorker;
import com.farsitel.bazaar.work.PendingBookmarkWorker;
import com.farsitel.bazaar.work.PendingCommentWorker;
import com.farsitel.bazaar.work.PostCommentWorker;
import com.farsitel.bazaar.work.RegisterDeviceWorker;
import com.farsitel.bazaar.work.ReportApplicationWorker;
import com.farsitel.bazaar.work.ReportCommentWorker;
import com.farsitel.bazaar.work.SendActionLogsWorker;
import com.farsitel.bazaar.work.StopScheduleUpdateWorker;
import com.farsitel.bazaar.work.SyncBookmarkWorker;
import com.farsitel.bazaar.work.SyncPurchasesWorker;
import com.farsitel.bazaar.work.UpgradableAppsWorker;
import com.farsitel.bazaar.work.periodicdelay.StartScheduleUpdateWorker;
import h.f.b.f;
import h.f.b.j;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: WorkManagerScheduler.kt */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7148a = new a(null);

    /* compiled from: WorkManagerScheduler.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public final void a(boolean z) {
        NetworkType networkType;
        if (z) {
            networkType = NetworkType.UNMETERED;
        } else {
            networkType = NetworkType.CONNECTED;
        }
        b.a aVar = new b.a();
        aVar.a(networkType);
        b a2 = aVar.a();
        j.a((Object) a2, "Constraints.Builder()\n  …ype)\n            .build()");
        m.a().a((n) a(a2));
    }

    public final b.H.j b(b bVar) {
        n a2 = ((j.a) ((j.a) new j.a(UpgradableAppsWorker.class, 12, TimeUnit.HOURS).a(bVar)).a("upgradable_apps")).a();
        h.f.b.j.a((Object) a2, "PeriodicWorkRequest\n    …TAG)\n            .build()");
        return (b.H.j) a2;
    }

    public final void c() {
        m();
    }

    public final void d() {
        m.a().a("location", ExistingPeriodicWorkPolicy.KEEP, e());
        m.a().a("send_action_logs", ExistingPeriodicWorkPolicy.REPLACE, g());
        m.a().a("registerDevice", ExistingPeriodicWorkPolicy.REPLACE, f());
    }

    public final b.H.j e() {
        n a2 = ((j.a) new j.a(LocationUpdatesWorker.class, 6, TimeUnit.HOURS).a("location")).a();
        h.f.b.j.a((Object) a2, "PeriodicWorkRequest\n    …KER_TAG)\n        .build()");
        return (b.H.j) a2;
    }

    public final b.H.j f() {
        j.a aVar = new j.a(RegisterDeviceWorker.class, 6, TimeUnit.HOURS);
        b.a aVar2 = new b.a();
        aVar2.a(NetworkType.CONNECTED);
        n a2 = ((j.a) ((j.a) aVar.a(aVar2.a())).a("registerDevice")).a();
        h.f.b.j.a((Object) a2, "PeriodicWorkRequest\n    …_DEVICE)\n        .build()");
        return (b.H.j) a2;
    }

    public final b.H.j g() {
        j.a aVar = new j.a(SendActionLogsWorker.class, 6, TimeUnit.HOURS);
        b.a aVar2 = new b.a();
        aVar2.a(NetworkType.CONNECTED);
        n a2 = ((j.a) ((j.a) aVar.a(aVar2.a())).a("send_action_logs")).a();
        h.f.b.j.a((Object) a2, "PeriodicWorkRequest\n    …KER_TAG)\n        .build()");
        return (b.H.j) a2;
    }

    public final void h() {
        g.a aVar = new g.a(PendingCommentWorker.class);
        b.a aVar2 = new b.a();
        aVar2.a(NetworkType.CONNECTED);
        aVar2.a(true);
        n a2 = ((g.a) ((g.a) aVar.a(aVar2.a())).a("comment")).a();
        h.f.b.j.a((Object) a2, "OneTimeWorkRequest.Build…TAG)\n            .build()");
        m.a().a("comment", ExistingWorkPolicy.KEEP, (g) a2);
    }

    public final void i() {
        g.a aVar = new g.a(SyncPurchasesWorker.class);
        b.a aVar2 = new b.a();
        aVar2.a(NetworkType.CONNECTED);
        n a2 = ((g.a) ((g.a) aVar.a(aVar2.a())).a("sync_purchases")).a();
        h.f.b.j.a((Object) a2, "OneTimeWorkRequest.Build…TAG)\n            .build()");
        m.a().a("sync_purchases", ExistingWorkPolicy.REPLACE, (g) a2);
    }

    public final void j() {
        long a2 = a();
        if (a2 >= 0) {
            n.a(StartScheduleUpdateWorker.class, a2, 24, new String[]{"oneTimeScheduler"}, NetworkType.CONNECTED, true, true, false, 0, 384, null);
        }
    }

    public final boolean k() {
        b a2 = new b.a().a();
        h.f.b.j.a((Object) a2, "Constraints.Builder().build()");
        List<WorkInfo> list = m.a().b("upgradable_apps").get();
        h.f.b.j.a((Object) list, "workerInfo");
        boolean z = true;
        for (WorkInfo workInfo : list) {
            h.f.b.j.a((Object) workInfo, "it");
            WorkInfo.State a3 = workInfo.a();
            h.f.b.j.a((Object) a3, "it.state");
            if (!a3.f()) {
                z = false;
            }
        }
        if (z) {
            m.a().a("upgradable_apps", ExistingPeriodicWorkPolicy.KEEP, b(a2));
        }
        return z;
    }

    public final void l() {
        m a2 = m.a();
        ExistingWorkPolicy existingWorkPolicy = ExistingWorkPolicy.KEEP;
        g.a aVar = new g.a(PendingBookmarkWorker.class);
        b.a aVar2 = new b.a();
        aVar2.a(NetworkType.CONNECTED);
        aVar2.a(true);
        a2.a("bookmark", existingWorkPolicy, (g) ((g.a) ((g.a) aVar.a(aVar2.a())).a(BackoffPolicy.EXPONENTIAL, 30, TimeUnit.MINUTES)).a());
    }

    public final void m() {
        n.a("reportApp");
    }

    public final void n() {
        m.a().a("bookmark", ExistingWorkPolicy.REPLACE, (g) new g.a(SyncBookmarkWorker.class).a());
    }

    public final void b() {
        n.a("oneTimeScheduler");
    }

    public final g a(b bVar) {
        n a2 = ((g.a) new g.a(UpgradableAppsWorker.class).a(bVar)).a();
        h.f.b.j.a((Object) a2, "OneTimeWorkRequest.Build…ints(constraints).build()");
        return (g) a2;
    }

    public final void a(String str, int i2, String str2, long j2, EntityType entityType) {
        h.f.b.j.b(str, "entityId");
        h.f.b.j.b(entityType, "entityType");
        m.a().a(((g.a) new g.a(PostCommentWorker.class).a(PostCommentWorker.f12470f.a(str, i2, str2, j2, entityType))).a());
    }

    public final void a(int i2, boolean z, boolean z2) {
        m.a().a(((g.a) new g.a(CommentActionWorker.class).a(CommentActionWorker.f12452f.a(i2, z, z2))).a());
    }

    public static /* synthetic */ void a(I i2, int i3, boolean z, EntityType entityType, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            entityType = EntityType.APP;
        }
        i2.a(i3, z, entityType);
    }

    public final void a(int i2, boolean z, EntityType entityType) {
        h.f.b.j.b(entityType, "entityType");
        m.a().a(((g.a) new g.a(ReportCommentWorker.class).a(ReportCommentWorker.f12482f.a(i2, z, entityType))).a());
    }

    public final void a(String str, String str2, String str3, boolean z, int i2, String str4) {
        h.f.b.j.b(str, "packageName");
        h.f.b.j.b(str2, "appName");
        h.f.b.j.b(str3, "appIconURL");
        m.a().a(((g.a) new g.a(BookmarkWorker.class).a(BookmarkWorker.f12447f.a(str, str2, str3, i2, str4, z))).a());
    }

    public final void a(long j2) {
        m a2 = m.a();
        g.a aVar = new g.a(StopScheduleUpdateWorker.class);
        aVar.a(j2, TimeUnit.MILLISECONDS);
        a2.a(aVar.a());
    }

    public final long a() {
        c.c.a.e.d.u.a a2 = c.c.a.d.a.a.f4744b.a(BazaarApp.f12104i.a());
        boolean B = a2.B();
        Calendar q = a2.q();
        if (q == null || !B) {
            return -1;
        }
        if (q.getTimeInMillis() < System.currentTimeMillis()) {
            q.add(6, 1);
        }
        return ((q.getTimeInMillis() - System.currentTimeMillis()) / ((long) AnswersRetryFilesSender.BACKOFF_MS)) / ((long) 60);
    }

    public final void a(String str, String str2, String str3) {
        h.f.b.j.b(str, "packageName");
        h.f.b.j.b(str2, "selectedReason");
        m.a().a("reportApp", ExistingWorkPolicy.REPLACE, (g) ((g.a) new g.a(ReportApplicationWorker.class).a(ReportApplicationWorker.f12479f.a(str, str2, str3))).a());
    }
}
