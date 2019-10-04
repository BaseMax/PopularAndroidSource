package c.b.a.c.b;

import android.os.Handler;
import android.os.Looper;
import c.b.a.c.b.x;
import c.b.a.c.c;
import c.b.a.i.i;
import c.b.a.i.k;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* renamed from: c.b.a.c.b.c  reason: case insensitive filesystem */
/* compiled from: ActiveResources */
public final class C0360c {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f3925a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f3926b = new Handler(Looper.getMainLooper(), new C0358a(this));

    /* renamed from: c  reason: collision with root package name */
    public final Map<c, b> f3927c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public x.a f3928d;

    /* renamed from: e  reason: collision with root package name */
    public ReferenceQueue<x<?>> f3929e;

    /* renamed from: f  reason: collision with root package name */
    public Thread f3930f;

    /* renamed from: g  reason: collision with root package name */
    public volatile boolean f3931g;

    /* renamed from: h  reason: collision with root package name */
    public volatile a f3932h;

    /* renamed from: c.b.a.c.b.c$a */
    /* compiled from: ActiveResources */
    interface a {
        void a();
    }

    /* renamed from: c.b.a.c.b.c$b */
    /* compiled from: ActiveResources */
    static final class b extends WeakReference<x<?>> {

        /* renamed from: a  reason: collision with root package name */
        public final c f3934a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3935b;

        /* renamed from: c  reason: collision with root package name */
        public D<?> f3936c;

        public b(c cVar, x<?> xVar, ReferenceQueue<? super x<?>> referenceQueue, boolean z) {
            super(xVar, referenceQueue);
            D<?> d2;
            i.a(cVar);
            this.f3934a = cVar;
            if (!xVar.f() || !z) {
                d2 = null;
            } else {
                D<?> e2 = xVar.e();
                i.a(e2);
                d2 = e2;
            }
            this.f3936c = d2;
            this.f3935b = xVar.f();
        }

        public void a() {
            this.f3936c = null;
            clear();
        }
    }

    public C0360c(boolean z) {
        this.f3925a = z;
    }

    public void a(x.a aVar) {
        this.f3928d = aVar;
    }

    public x<?> b(c cVar) {
        b bVar = this.f3927c.get(cVar);
        if (bVar == null) {
            return null;
        }
        x<?> xVar = (x) bVar.get();
        if (xVar == null) {
            a(bVar);
        }
        return xVar;
    }

    public void a(c cVar, x<?> xVar) {
        b put = this.f3927c.put(cVar, new b(cVar, xVar, b(), this.f3925a));
        if (put != null) {
            put.a();
        }
    }

    public final ReferenceQueue<x<?>> b() {
        if (this.f3929e == null) {
            this.f3929e = new ReferenceQueue<>();
            this.f3930f = new Thread(new C0359b(this), "glide-active-resources");
            this.f3930f.start();
        }
        return this.f3929e;
    }

    public void a(c cVar) {
        b remove = this.f3927c.remove(cVar);
        if (remove != null) {
            remove.a();
        }
    }

    public void a(b bVar) {
        k.b();
        this.f3927c.remove(bVar.f3934a);
        if (bVar.f3935b) {
            D<?> d2 = bVar.f3936c;
            if (d2 != null) {
                x xVar = new x(d2, true, false);
                xVar.a(bVar.f3934a, this.f3928d);
                this.f3928d.a(bVar.f3934a, xVar);
            }
        }
    }

    public void a() {
        while (!this.f3931g) {
            try {
                this.f3926b.obtainMessage(1, (b) this.f3929e.remove()).sendToTarget();
                a aVar = this.f3932h;
                if (aVar != null) {
                    aVar.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
