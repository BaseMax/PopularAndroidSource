package b.H.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable;
import b.H.a;
import b.H.a.a.c.c;
import b.H.a.d.b.d;
import b.H.a.d.g;
import b.H.a.d.h;
import b.H.f;
import b.H.i;
import b.H.j;
import b.H.k;
import b.H.n;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: WorkManagerImpl */
public class m extends b.H.m {

    /* renamed from: a  reason: collision with root package name */
    public static m f1581a;

    /* renamed from: b  reason: collision with root package name */
    public static m f1582b;

    /* renamed from: c  reason: collision with root package name */
    public static final Object f1583c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public Context f1584d;

    /* renamed from: e  reason: collision with root package name */
    public a f1585e;

    /* renamed from: f  reason: collision with root package name */
    public WorkDatabase f1586f;

    /* renamed from: g  reason: collision with root package name */
    public b.H.a.d.b.a f1587g;

    /* renamed from: h  reason: collision with root package name */
    public List<d> f1588h;

    /* renamed from: i  reason: collision with root package name */
    public c f1589i;

    /* renamed from: j  reason: collision with root package name */
    public g f1590j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f1591k;

    /* renamed from: l  reason: collision with root package name */
    public BroadcastReceiver.PendingResult f1592l;
    public final n m;

    public m(Context context, a aVar, b.H.a.d.b.a aVar2) {
        this(context, aVar, aVar2, context.getResources().getBoolean(k.workmanager_test_configuration));
    }

    public static m a() {
        synchronized (f1583c) {
            if (f1581a != null) {
                m mVar = f1581a;
                return mVar;
            }
            m mVar2 = f1582b;
            return mVar2;
        }
    }

    public Context b() {
        return this.f1584d;
    }

    public a c() {
        return this.f1585e;
    }

    public g d() {
        return this.f1590j;
    }

    public c e() {
        return this.f1589i;
    }

    public List<d> f() {
        return this.f1588h;
    }

    public WorkDatabase g() {
        return this.f1586f;
    }

    public b.H.a.d.b.a h() {
        return this.f1587g;
    }

    public void i() {
        synchronized (f1583c) {
            this.f1591k = true;
            if (this.f1592l != null) {
                this.f1592l.finish();
                this.f1592l = null;
            }
        }
    }

    public void j() {
        if (Build.VERSION.SDK_INT >= 23) {
            c.a(b());
        }
        g().v().d();
        e.a(c(), g(), f());
    }

    public final f b(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, j jVar) {
        ExistingWorkPolicy existingWorkPolicy;
        if (existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.KEEP) {
            existingWorkPolicy = ExistingWorkPolicy.KEEP;
        } else {
            existingWorkPolicy = ExistingWorkPolicy.REPLACE;
        }
        return new f(this, str, existingWorkPolicy, Collections.singletonList(jVar));
    }

    public void c(String str) {
        a(str, (WorkerParameters.a) null);
    }

    public void d(String str) {
        this.f1587g.a(new b.H.a.d.k(this, str));
    }

    public m(Context context, a aVar, b.H.a.d.b.a aVar2, boolean z) {
        this.m = new n();
        Context applicationContext = context.getApplicationContext();
        WorkDatabase a2 = WorkDatabase.a(applicationContext, z);
        f.a((f) new f.a(aVar.f()));
        Context context2 = context;
        a aVar3 = aVar;
        b.H.a.d.b.a aVar4 = aVar2;
        WorkDatabase workDatabase = a2;
        List<d> a3 = a(applicationContext);
        c cVar = new c(context2, aVar3, aVar4, workDatabase, a3);
        a(context2, aVar3, aVar4, workDatabase, a3, cVar);
    }

    public static void a(Context context, a aVar) {
        synchronized (f1583c) {
            if (f1581a != null) {
                if (f1582b != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information.");
                }
            }
            if (f1581a == null) {
                Context applicationContext = context.getApplicationContext();
                if (f1582b == null) {
                    f1582b = new m(applicationContext, aVar, new d());
                }
                f1581a = f1582b;
            }
        }
    }

    public c.e.b.a.a.a<List<WorkInfo>> b(String str) {
        b.H.a.d.j<List<WorkInfo>> a2 = b.H.a.d.j.a(this, str);
        this.f1587g.c().execute(a2);
        return a2.a();
    }

    public i a(List<? extends n> list) {
        if (!list.isEmpty()) {
            return new f(this, list).a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    public i a(String str, ExistingWorkPolicy existingWorkPolicy, List<b.H.g> list) {
        return new f(this, str, existingWorkPolicy, list).a();
    }

    public i a(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, j jVar) {
        return b(str, existingPeriodicWorkPolicy, jVar).a();
    }

    public i a(String str) {
        b.H.a.d.c a2 = b.H.a.d.c.a(str, this);
        this.f1587g.a(a2);
        return a2.a();
    }

    public void a(String str, WorkerParameters.a aVar) {
        this.f1587g.a(new h(this, str, aVar));
    }

    public void a(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f1583c) {
            this.f1592l = pendingResult;
            if (this.f1591k) {
                this.f1592l.finish();
                this.f1592l = null;
            }
        }
    }

    public final void a(Context context, a aVar, b.H.a.d.b.a aVar2, WorkDatabase workDatabase, List<d> list, c cVar) {
        Context applicationContext = context.getApplicationContext();
        this.f1584d = applicationContext;
        this.f1585e = aVar;
        this.f1587g = aVar2;
        this.f1586f = workDatabase;
        this.f1588h = list;
        this.f1589i = cVar;
        this.f1590j = new g(this.f1584d);
        this.f1591k = false;
        this.f1587g.a(new ForceStopRunnable(applicationContext, this));
    }

    public List<d> a(Context context) {
        return Arrays.asList(new d[]{e.a(context, this), new b.H.a.a.a.a(context, this)});
    }
}
