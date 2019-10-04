package b.H.a;

import android.content.Context;
import android.os.Build;
import androidx.work.ListenableWorker;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import b.H.a.c.B;
import b.H.a.c.C0181b;
import b.H.a.c.o;
import b.H.a.c.p;
import b.H.a.d.a.c;
import b.H.d;
import b.H.e;
import b.H.f;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

/* compiled from: WorkerWrapper */
public class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1599a = f.a("WorkerWrapper");

    /* renamed from: b  reason: collision with root package name */
    public Context f1600b;

    /* renamed from: c  reason: collision with root package name */
    public String f1601c;

    /* renamed from: d  reason: collision with root package name */
    public List<d> f1602d;

    /* renamed from: e  reason: collision with root package name */
    public WorkerParameters.a f1603e;

    /* renamed from: f  reason: collision with root package name */
    public o f1604f;

    /* renamed from: g  reason: collision with root package name */
    public ListenableWorker f1605g;

    /* renamed from: h  reason: collision with root package name */
    public ListenableWorker.a f1606h = ListenableWorker.a.a();

    /* renamed from: i  reason: collision with root package name */
    public b.H.a f1607i;

    /* renamed from: j  reason: collision with root package name */
    public b.H.a.d.b.a f1608j;

    /* renamed from: k  reason: collision with root package name */
    public WorkDatabase f1609k;

    /* renamed from: l  reason: collision with root package name */
    public p f1610l;
    public C0181b m;
    public B n;
    public List<String> o;
    public String p;
    public c<Boolean> q = c.e();
    public c.e.b.a.a.a<ListenableWorker.a> r = null;
    public volatile boolean s;

    /* compiled from: WorkerWrapper */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public Context f1611a;

        /* renamed from: b  reason: collision with root package name */
        public ListenableWorker f1612b;

        /* renamed from: c  reason: collision with root package name */
        public b.H.a.d.b.a f1613c;

        /* renamed from: d  reason: collision with root package name */
        public b.H.a f1614d;

        /* renamed from: e  reason: collision with root package name */
        public WorkDatabase f1615e;

        /* renamed from: f  reason: collision with root package name */
        public String f1616f;

        /* renamed from: g  reason: collision with root package name */
        public List<d> f1617g;

        /* renamed from: h  reason: collision with root package name */
        public WorkerParameters.a f1618h = new WorkerParameters.a();

        public a(Context context, b.H.a aVar, b.H.a.d.b.a aVar2, WorkDatabase workDatabase, String str) {
            this.f1611a = context.getApplicationContext();
            this.f1613c = aVar2;
            this.f1614d = aVar;
            this.f1615e = workDatabase;
            this.f1616f = str;
        }

        public a a(List<d> list) {
            this.f1617g = list;
            return this;
        }

        public a a(WorkerParameters.a aVar) {
            if (aVar != null) {
                this.f1618h = aVar;
            }
            return this;
        }

        public q a() {
            return new q(this);
        }
    }

    public q(a aVar) {
        this.f1600b = aVar.f1611a;
        this.f1608j = aVar.f1613c;
        this.f1601c = aVar.f1616f;
        this.f1602d = aVar.f1617g;
        this.f1603e = aVar.f1618h;
        this.f1605g = aVar.f1612b;
        this.f1607i = aVar.f1614d;
        this.f1609k = aVar.f1615e;
        this.f1610l = this.f1609k.v();
        this.m = this.f1609k.p();
        this.n = this.f1609k.w();
    }

    public void a(boolean z) {
        this.s = true;
        j();
        c.e.b.a.a.a<ListenableWorker.a> aVar = this.r;
        if (aVar != null) {
            aVar.cancel(true);
        }
        ListenableWorker listenableWorker = this.f1605g;
        if (listenableWorker != null) {
            listenableWorker.j();
        }
    }

    public c.e.b.a.a.a<Boolean> b() {
        return this.q;
    }

    public void c() {
        a();
        boolean z = false;
        if (!j()) {
            try {
                this.f1609k.c();
                WorkInfo.State c2 = this.f1610l.c(this.f1601c);
                if (c2 == null) {
                    b(false);
                    z = true;
                } else if (c2 == WorkInfo.State.RUNNING) {
                    a(this.f1606h);
                    z = this.f1610l.c(this.f1601c).f();
                } else if (!c2.f()) {
                    d();
                }
                this.f1609k.o();
            } finally {
                this.f1609k.e();
            }
        }
        List<d> list = this.f1602d;
        if (list != null) {
            if (z) {
                for (d a2 : list) {
                    a2.a(this.f1601c);
                }
            }
            e.a(this.f1607i, this.f1609k, this.f1602d);
        }
    }

    public final void d() {
        this.f1609k.c();
        try {
            this.f1610l.a(WorkInfo.State.ENQUEUED, this.f1601c);
            this.f1610l.b(this.f1601c, System.currentTimeMillis());
            if (Build.VERSION.SDK_INT < 23) {
                this.f1610l.a(this.f1601c, -1);
            }
            this.f1609k.o();
        } finally {
            this.f1609k.e();
            b(true);
        }
    }

    public final void e() {
        this.f1609k.c();
        try {
            this.f1610l.b(this.f1601c, System.currentTimeMillis());
            this.f1610l.a(WorkInfo.State.ENQUEUED, this.f1601c);
            this.f1610l.e(this.f1601c);
            if (Build.VERSION.SDK_INT < 23) {
                this.f1610l.a(this.f1601c, -1);
            }
            this.f1609k.o();
        } finally {
            this.f1609k.e();
            b(false);
        }
    }

    public final void f() {
        WorkInfo.State c2 = this.f1610l.c(this.f1601c);
        if (c2 == WorkInfo.State.RUNNING) {
            f.a().a(f1599a, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", new Object[]{this.f1601c}), new Throwable[0]);
            b(true);
            return;
        }
        f.a().a(f1599a, String.format("Status for %s is %s; not doing any work", new Object[]{this.f1601c, c2}), new Throwable[0]);
        b(false);
    }

    public final void g() {
        d a2;
        if (!j()) {
            this.f1609k.c();
            try {
                this.f1604f = this.f1610l.d(this.f1601c);
                if (this.f1604f == null) {
                    f.a().b(f1599a, String.format("Didn't find WorkSpec for id %s", new Object[]{this.f1601c}), new Throwable[0]);
                    b(false);
                } else if (this.f1604f.f1467d != WorkInfo.State.ENQUEUED) {
                    f();
                    this.f1609k.o();
                    f.a().a(f1599a, String.format("%s is not in ENQUEUED state. Nothing more to do.", new Object[]{this.f1604f.f1468e}), new Throwable[0]);
                    this.f1609k.e();
                } else {
                    if (this.f1604f.d() || this.f1604f.c()) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (!(Build.VERSION.SDK_INT < 23 && this.f1604f.f1473j != this.f1604f.f1474k && this.f1604f.p == 0) && currentTimeMillis < this.f1604f.a()) {
                            f.a().a(f1599a, String.format("Delaying execution for %s because it is being executed before schedule.", new Object[]{this.f1604f.f1468e}), new Throwable[0]);
                            b(true);
                            this.f1609k.e();
                            return;
                        }
                    }
                    this.f1609k.o();
                    this.f1609k.e();
                    if (this.f1604f.d()) {
                        a2 = this.f1604f.f1470g;
                    } else {
                        e a3 = e.a(this.f1604f.f1469f);
                        if (a3 == null) {
                            f.a().b(f1599a, String.format("Could not create Input Merger %s", new Object[]{this.f1604f.f1469f}), new Throwable[0]);
                            h();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.f1604f.f1470g);
                        arrayList.addAll(this.f1610l.g(this.f1601c));
                        a2 = a3.a((List<d>) arrayList);
                    }
                    WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f1601c), a2, this.o, this.f1603e, this.f1604f.m, this.f1607i.b(), this.f1608j, this.f1607i.g());
                    if (this.f1605g == null) {
                        this.f1605g = this.f1607i.g().b(this.f1600b, this.f1604f.f1468e, workerParameters);
                    }
                    ListenableWorker listenableWorker = this.f1605g;
                    if (listenableWorker == null) {
                        f.a().b(f1599a, String.format("Could not create Worker %s", new Object[]{this.f1604f.f1468e}), new Throwable[0]);
                        h();
                    } else if (listenableWorker.f()) {
                        f.a().b(f1599a, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", new Object[]{this.f1604f.f1468e}), new Throwable[0]);
                        h();
                    } else {
                        this.f1605g.h();
                        if (!k()) {
                            f();
                        } else if (!j()) {
                            c e2 = c.e();
                            this.f1608j.b().execute(new o(this, e2));
                            e2.a((Runnable) new p(this, e2, this.p), this.f1608j.c());
                        }
                    }
                }
            } finally {
                this.f1609k.e();
            }
        }
    }

    public void h() {
        this.f1609k.c();
        try {
            a(this.f1601c);
            this.f1610l.a(this.f1601c, ((ListenableWorker.a.C0013a) this.f1606h).d());
            this.f1609k.o();
        } finally {
            this.f1609k.e();
            b(false);
        }
    }

    public final void i() {
        this.f1609k.c();
        try {
            this.f1610l.a(WorkInfo.State.SUCCEEDED, this.f1601c);
            this.f1610l.a(this.f1601c, ((ListenableWorker.a.c) this.f1606h).d());
            long currentTimeMillis = System.currentTimeMillis();
            for (String next : this.m.a(this.f1601c)) {
                if (this.f1610l.c(next) == WorkInfo.State.BLOCKED && this.m.b(next)) {
                    f.a().c(f1599a, String.format("Setting status to enqueued for %s", new Object[]{next}), new Throwable[0]);
                    this.f1610l.a(WorkInfo.State.ENQUEUED, next);
                    this.f1610l.b(next, currentTimeMillis);
                }
            }
            this.f1609k.o();
        } finally {
            this.f1609k.e();
            b(false);
        }
    }

    public final boolean j() {
        if (!this.s) {
            return false;
        }
        f.a().a(f1599a, String.format("Work interrupted for %s", new Object[]{this.p}), new Throwable[0]);
        WorkInfo.State c2 = this.f1610l.c(this.f1601c);
        if (c2 == null) {
            b(false);
        } else {
            b(!c2.f());
        }
        return true;
    }

    public final boolean k() {
        this.f1609k.c();
        try {
            boolean z = true;
            if (this.f1610l.c(this.f1601c) == WorkInfo.State.ENQUEUED) {
                this.f1610l.a(WorkInfo.State.RUNNING, this.f1601c);
                this.f1610l.h(this.f1601c);
            } else {
                z = false;
            }
            this.f1609k.o();
            return z;
        } finally {
            this.f1609k.e();
        }
    }

    public void run() {
        this.o = this.n.a(this.f1601c);
        this.p = a(this.o);
        g();
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x001e A[Catch:{ all -> 0x0039 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(boolean r4) {
        /*
            r3 = this;
            androidx.work.impl.WorkDatabase r0 = r3.f1609k     // Catch:{ all -> 0x0039 }
            r0.c()     // Catch:{ all -> 0x0039 }
            androidx.work.impl.WorkDatabase r0 = r3.f1609k     // Catch:{ all -> 0x0039 }
            b.H.a.c.p r0 = r0.v()     // Catch:{ all -> 0x0039 }
            java.util.List r0 = r0.c()     // Catch:{ all -> 0x0039 }
            r1 = 0
            if (r0 == 0) goto L_0x001b
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0039 }
            if (r0 == 0) goto L_0x0019
            goto L_0x001b
        L_0x0019:
            r0 = 0
            goto L_0x001c
        L_0x001b:
            r0 = 1
        L_0x001c:
            if (r0 == 0) goto L_0x0025
            android.content.Context r0 = r3.f1600b     // Catch:{ all -> 0x0039 }
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r2 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            b.H.a.d.f.a(r0, r2, r1)     // Catch:{ all -> 0x0039 }
        L_0x0025:
            androidx.work.impl.WorkDatabase r0 = r3.f1609k     // Catch:{ all -> 0x0039 }
            r0.o()     // Catch:{ all -> 0x0039 }
            androidx.work.impl.WorkDatabase r0 = r3.f1609k
            r0.e()
            b.H.a.d.a.c<java.lang.Boolean> r0 = r3.q
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            r0.c(r4)
            return
        L_0x0039:
            r4 = move-exception
            androidx.work.impl.WorkDatabase r0 = r3.f1609k
            r0.e()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: b.H.a.q.b(boolean):void");
    }

    public final void a(ListenableWorker.a aVar) {
        if (aVar instanceof ListenableWorker.a.c) {
            f.a().c(f1599a, String.format("Worker result SUCCESS for %s", new Object[]{this.p}), new Throwable[0]);
            if (this.f1604f.d()) {
                e();
            } else {
                i();
            }
        } else if (aVar instanceof ListenableWorker.a.b) {
            f.a().c(f1599a, String.format("Worker result RETRY for %s", new Object[]{this.p}), new Throwable[0]);
            d();
        } else {
            f.a().c(f1599a, String.format("Worker result FAILURE for %s", new Object[]{this.p}), new Throwable[0]);
            if (this.f1604f.d()) {
                e();
            } else {
                h();
            }
        }
    }

    public final void a(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f1610l.c(str2) != WorkInfo.State.CANCELLED) {
                this.f1610l.a(WorkInfo.State.FAILED, str2);
            }
            linkedList.addAll(this.m.a(str2));
        }
    }

    public final void a() {
        if (this.f1608j.a() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be executed on the Background executor thread.");
        }
    }

    public final String a(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f1601c);
        sb.append(", tags={ ");
        boolean z = true;
        for (String next : list) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(next);
        }
        sb.append(" } ]");
        return sb.toString();
    }
}
