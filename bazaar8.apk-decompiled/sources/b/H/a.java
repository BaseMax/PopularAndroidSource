package b.H;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: Configuration */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f1315a;

    /* renamed from: b  reason: collision with root package name */
    public final q f1316b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1317c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1318d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1319e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1320f;

    /* renamed from: b.H.a$a  reason: collision with other inner class name */
    /* compiled from: Configuration */
    public static final class C0017a {

        /* renamed from: a  reason: collision with root package name */
        public Executor f1321a;

        /* renamed from: b  reason: collision with root package name */
        public q f1322b;

        /* renamed from: c  reason: collision with root package name */
        public int f1323c = 4;

        /* renamed from: d  reason: collision with root package name */
        public int f1324d = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f1325e = Integer.MAX_VALUE;

        /* renamed from: f  reason: collision with root package name */
        public int f1326f = 20;

        public C0017a a(q qVar) {
            this.f1322b = qVar;
            return this;
        }

        public a a() {
            return new a(this);
        }
    }

    public a(C0017a aVar) {
        Executor executor = aVar.f1321a;
        if (executor == null) {
            this.f1315a = a();
        } else {
            this.f1315a = executor;
        }
        q qVar = aVar.f1322b;
        if (qVar == null) {
            this.f1316b = q.a();
        } else {
            this.f1316b = qVar;
        }
        this.f1317c = aVar.f1323c;
        this.f1318d = aVar.f1324d;
        this.f1319e = aVar.f1325e;
        this.f1320f = aVar.f1326f;
    }

    public final Executor a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    public Executor b() {
        return this.f1315a;
    }

    public int c() {
        return this.f1319e;
    }

    public int d() {
        if (Build.VERSION.SDK_INT == 23) {
            return this.f1320f / 2;
        }
        return this.f1320f;
    }

    public int e() {
        return this.f1318d;
    }

    public int f() {
        return this.f1317c;
    }

    public q g() {
        return this.f1316b;
    }
}
