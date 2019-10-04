package c.b.a.c.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import b.i.j.e;
import c.b.a.c.c;
import c.b.a.g.h;
import c.b.a.i.a.d;
import c.b.a.i.a.g;
import c.b.a.i.k;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EngineJob */
public class t<R> implements DecodeJob.a<R>, d.c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4016a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final Handler f4017b = new Handler(Looper.getMainLooper(), new b());

    /* renamed from: c  reason: collision with root package name */
    public final List<h> f4018c;

    /* renamed from: d  reason: collision with root package name */
    public final g f4019d;

    /* renamed from: e  reason: collision with root package name */
    public final e<t<?>> f4020e;

    /* renamed from: f  reason: collision with root package name */
    public final a f4021f;

    /* renamed from: g  reason: collision with root package name */
    public final u f4022g;

    /* renamed from: h  reason: collision with root package name */
    public final c.b.a.c.b.c.b f4023h;

    /* renamed from: i  reason: collision with root package name */
    public final c.b.a.c.b.c.b f4024i;

    /* renamed from: j  reason: collision with root package name */
    public final c.b.a.c.b.c.b f4025j;

    /* renamed from: k  reason: collision with root package name */
    public final c.b.a.c.b.c.b f4026k;

    /* renamed from: l  reason: collision with root package name */
    public c f4027l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public D<?> q;
    public DataSource r;
    public boolean s;
    public GlideException t;
    public boolean u;
    public List<h> v;
    public x<?> w;
    public DecodeJob<R> x;
    public volatile boolean y;

    /* compiled from: EngineJob */
    static class a {
        public <R> x<R> a(D<R> d2, boolean z) {
            return new x<>(d2, z, true);
        }
    }

    /* compiled from: EngineJob */
    private static class b implements Handler.Callback {
        public boolean handleMessage(Message message) {
            t tVar = (t) message.obj;
            int i2 = message.what;
            if (i2 == 1) {
                tVar.e();
            } else if (i2 == 2) {
                tVar.d();
            } else if (i2 == 3) {
                tVar.c();
            } else {
                throw new IllegalStateException("Unrecognized message: " + message.what);
            }
            return true;
        }
    }

    public t(c.b.a.c.b.c.b bVar, c.b.a.c.b.c.b bVar2, c.b.a.c.b.c.b bVar3, c.b.a.c.b.c.b bVar4, u uVar, e<t<?>> eVar) {
        this(bVar, bVar2, bVar3, bVar4, uVar, eVar, f4016a);
    }

    public t<R> a(c cVar, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f4027l = cVar;
        this.m = z;
        this.n = z2;
        this.o = z3;
        this.p = z4;
        return this;
    }

    public void b(DecodeJob<R> decodeJob) {
        c.b.a.c.b.c.b bVar;
        this.x = decodeJob;
        if (decodeJob.r()) {
            bVar = this.f4023h;
        } else {
            bVar = b();
        }
        bVar.execute(decodeJob);
    }

    public final boolean c(h hVar) {
        List<h> list = this.v;
        return list != null && list.contains(hVar);
    }

    public void d(h hVar) {
        k.b();
        this.f4019d.b();
        if (this.s || this.u) {
            b(hVar);
            return;
        }
        this.f4018c.remove(hVar);
        if (this.f4018c.isEmpty()) {
            a();
        }
    }

    public void e() {
        this.f4019d.b();
        if (this.y) {
            this.q.a();
            a(false);
        } else if (this.f4018c.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        } else if (!this.s) {
            this.w = this.f4021f.a(this.q, this.m);
            this.s = true;
            this.w.d();
            this.f4022g.a(this, this.f4027l, this.w);
            int size = this.f4018c.size();
            for (int i2 = 0; i2 < size; i2++) {
                h hVar = this.f4018c.get(i2);
                if (!c(hVar)) {
                    this.w.d();
                    hVar.a(this.w, this.r);
                }
            }
            this.w.g();
            a(false);
        } else {
            throw new IllegalStateException("Already have resource");
        }
    }

    public g f() {
        return this.f4019d;
    }

    public boolean g() {
        return this.p;
    }

    public t(c.b.a.c.b.c.b bVar, c.b.a.c.b.c.b bVar2, c.b.a.c.b.c.b bVar3, c.b.a.c.b.c.b bVar4, u uVar, e<t<?>> eVar, a aVar) {
        this.f4018c = new ArrayList(2);
        this.f4019d = g.a();
        this.f4023h = bVar;
        this.f4024i = bVar2;
        this.f4025j = bVar3;
        this.f4026k = bVar4;
        this.f4022g = uVar;
        this.f4020e = eVar;
        this.f4021f = aVar;
    }

    public void c() {
        this.f4019d.b();
        if (this.y) {
            this.f4022g.a(this, this.f4027l);
            a(false);
            return;
        }
        throw new IllegalStateException("Not cancelled");
    }

    public void a(h hVar) {
        k.b();
        this.f4019d.b();
        if (this.s) {
            hVar.a(this.w, this.r);
        } else if (this.u) {
            hVar.a(this.t);
        } else {
            this.f4018c.add(hVar);
        }
    }

    public final c.b.a.c.b.c.b b() {
        if (this.n) {
            return this.f4025j;
        }
        return this.o ? this.f4026k : this.f4024i;
    }

    public final void b(h hVar) {
        if (this.v == null) {
            this.v = new ArrayList(2);
        }
        if (!this.v.contains(hVar)) {
            this.v.add(hVar);
        }
    }

    public void d() {
        this.f4019d.b();
        if (this.y) {
            a(false);
        } else if (this.f4018c.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        } else if (!this.u) {
            this.u = true;
            this.f4022g.a(this, this.f4027l, null);
            for (h next : this.f4018c) {
                if (!c(next)) {
                    next.a(this.t);
                }
            }
            a(false);
        } else {
            throw new IllegalStateException("Already failed once");
        }
    }

    public void a() {
        if (!this.u && !this.s && !this.y) {
            this.y = true;
            this.x.h();
            this.f4022g.a(this, this.f4027l);
        }
    }

    public final void a(boolean z) {
        k.b();
        this.f4018c.clear();
        this.f4027l = null;
        this.w = null;
        this.q = null;
        List<h> list = this.v;
        if (list != null) {
            list.clear();
        }
        this.u = false;
        this.y = false;
        this.s = false;
        this.x.a(z);
        this.x = null;
        this.t = null;
        this.r = null;
        this.f4020e.a(this);
    }

    public void a(D<R> d2, DataSource dataSource) {
        this.q = d2;
        this.r = dataSource;
        f4017b.obtainMessage(1, this).sendToTarget();
    }

    public void a(GlideException glideException) {
        this.t = glideException;
        f4017b.obtainMessage(2, this).sendToTarget();
    }

    public void a(DecodeJob<?> decodeJob) {
        b().execute(decodeJob);
    }
}
