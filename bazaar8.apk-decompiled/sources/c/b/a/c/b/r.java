package c.b.a.c.b;

import android.util.Log;
import b.i.j.e;
import c.b.a.c.b.b.a;
import c.b.a.c.b.b.i;
import c.b.a.c.b.x;
import c.b.a.c.f;
import c.b.a.g;
import c.b.a.g.h;
import c.b.a.i.k;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DecodeJob;
import java.util.Map;

/* compiled from: Engine */
public class r implements u, i.a, x.a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f3993a = Log.isLoggable("Engine", 2);

    /* renamed from: b  reason: collision with root package name */
    public final z f3994b;

    /* renamed from: c  reason: collision with root package name */
    public final w f3995c;

    /* renamed from: d  reason: collision with root package name */
    public final i f3996d;

    /* renamed from: e  reason: collision with root package name */
    public final b f3997e;

    /* renamed from: f  reason: collision with root package name */
    public final G f3998f;

    /* renamed from: g  reason: collision with root package name */
    public final c f3999g;

    /* renamed from: h  reason: collision with root package name */
    public final a f4000h;

    /* renamed from: i  reason: collision with root package name */
    public final C0360c f4001i;

    /* compiled from: Engine */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final DecodeJob.d f4002a;

        /* renamed from: b  reason: collision with root package name */
        public final e<DecodeJob<?>> f4003b = c.b.a.i.a.d.a(150, new q(this));

        /* renamed from: c  reason: collision with root package name */
        public int f4004c;

        public a(DecodeJob.d dVar) {
            this.f4002a = dVar;
        }

        public <R> DecodeJob<R> a(g gVar, Object obj, v vVar, c.b.a.c.c cVar, int i2, int i3, Class<?> cls, Class<R> cls2, Priority priority, p pVar, Map<Class<?>, c.b.a.c.i<?>> map, boolean z, boolean z2, boolean z3, f fVar, DecodeJob.a<R> aVar) {
            DecodeJob<R> a2 = this.f4003b.a();
            c.b.a.i.i.a(a2);
            DecodeJob<R> decodeJob = a2;
            int i4 = this.f4004c;
            int i5 = i4;
            this.f4004c = i4 + 1;
            decodeJob.a(gVar, obj, vVar, cVar, i2, i3, cls, cls2, priority, pVar, map, z, z2, z3, fVar, aVar, i5);
            return decodeJob;
        }
    }

    /* compiled from: Engine */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public final c.b.a.c.b.c.b f4005a;

        /* renamed from: b  reason: collision with root package name */
        public final c.b.a.c.b.c.b f4006b;

        /* renamed from: c  reason: collision with root package name */
        public final c.b.a.c.b.c.b f4007c;

        /* renamed from: d  reason: collision with root package name */
        public final c.b.a.c.b.c.b f4008d;

        /* renamed from: e  reason: collision with root package name */
        public final u f4009e;

        /* renamed from: f  reason: collision with root package name */
        public final e<t<?>> f4010f = c.b.a.i.a.d.a(150, new s(this));

        public b(c.b.a.c.b.c.b bVar, c.b.a.c.b.c.b bVar2, c.b.a.c.b.c.b bVar3, c.b.a.c.b.c.b bVar4, u uVar) {
            this.f4005a = bVar;
            this.f4006b = bVar2;
            this.f4007c = bVar3;
            this.f4008d = bVar4;
            this.f4009e = uVar;
        }

        public <R> t<R> a(c.b.a.c.c cVar, boolean z, boolean z2, boolean z3, boolean z4) {
            t<R> a2 = this.f4010f.a();
            c.b.a.i.i.a(a2);
            t<R> tVar = a2;
            tVar.a(cVar, z, z2, z3, z4);
            return tVar;
        }
    }

    /* compiled from: Engine */
    private static class c implements DecodeJob.d {

        /* renamed from: a  reason: collision with root package name */
        public final a.C0054a f4011a;

        /* renamed from: b  reason: collision with root package name */
        public volatile c.b.a.c.b.b.a f4012b;

        public c(a.C0054a aVar) {
            this.f4011a = aVar;
        }

        public c.b.a.c.b.b.a a() {
            if (this.f4012b == null) {
                synchronized (this) {
                    if (this.f4012b == null) {
                        this.f4012b = this.f4011a.build();
                    }
                    if (this.f4012b == null) {
                        this.f4012b = new c.b.a.c.b.b.b();
                    }
                }
            }
            return this.f4012b;
        }
    }

    /* compiled from: Engine */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public final t<?> f4013a;

        /* renamed from: b  reason: collision with root package name */
        public final h f4014b;

        public d(h hVar, t<?> tVar) {
            this.f4014b = hVar;
            this.f4013a = tVar;
        }

        public void a() {
            this.f4013a.d(this.f4014b);
        }
    }

    public r(i iVar, a.C0054a aVar, c.b.a.c.b.c.b bVar, c.b.a.c.b.c.b bVar2, c.b.a.c.b.c.b bVar3, c.b.a.c.b.c.b bVar4, boolean z) {
        this(iVar, aVar, bVar, bVar2, bVar3, bVar4, null, null, null, null, null, null, z);
    }

    public <R> d a(g gVar, Object obj, c.b.a.c.c cVar, int i2, int i3, Class<?> cls, Class<R> cls2, Priority priority, p pVar, Map<Class<?>, c.b.a.c.i<?>> map, boolean z, boolean z2, f fVar, boolean z3, boolean z4, boolean z5, boolean z6, h hVar) {
        boolean z7 = z3;
        h hVar2 = hVar;
        k.b();
        long a2 = f3993a ? c.b.a.i.e.a() : 0;
        v a3 = this.f3995c.a(obj, cVar, i2, i3, map, cls, cls2, fVar);
        x<?> a4 = a((c.b.a.c.c) a3, z7);
        if (a4 != null) {
            hVar2.a(a4, DataSource.MEMORY_CACHE);
            if (f3993a) {
                a("Loaded resource from active resources", a2, (c.b.a.c.c) a3);
            }
            return null;
        }
        x<?> b2 = b(a3, z7);
        if (b2 != null) {
            hVar2.a(b2, DataSource.MEMORY_CACHE);
            if (f3993a) {
                a("Loaded resource from cache", a2, (c.b.a.c.c) a3);
            }
            return null;
        }
        t<?> a5 = this.f3994b.a((c.b.a.c.c) a3, z6);
        if (a5 != null) {
            a5.a(hVar2);
            if (f3993a) {
                a("Added to existing load", a2, (c.b.a.c.c) a3);
            }
            return new d(hVar2, a5);
        }
        t a6 = this.f3997e.a(a3, z3, z4, z5, z6);
        DecodeJob<R> a7 = this.f4000h.a(gVar, obj, a3, cVar, i2, i3, cls, cls2, priority, pVar, map, z, z2, z6, fVar, a6);
        this.f3994b.a((c.b.a.c.c) a3, (t<?>) a6);
        a6.a(hVar2);
        a6.b(a7);
        if (f3993a) {
            a("Started new load", a2, (c.b.a.c.c) a3);
        }
        return new d(hVar2, a6);
    }

    public final x<?> b(c.b.a.c.c cVar, boolean z) {
        if (!z) {
            return null;
        }
        x<?> a2 = a(cVar);
        if (a2 != null) {
            a2.d();
            this.f4001i.a(cVar, a2);
        }
        return a2;
    }

    public r(i iVar, a.C0054a aVar, c.b.a.c.b.c.b bVar, c.b.a.c.b.c.b bVar2, c.b.a.c.b.c.b bVar3, c.b.a.c.b.c.b bVar4, z zVar, w wVar, C0360c cVar, b bVar5, a aVar2, G g2, boolean z) {
        this.f3996d = iVar;
        a.C0054a aVar3 = aVar;
        this.f3999g = new c(aVar);
        C0360c cVar2 = cVar == null ? new C0360c(z) : cVar;
        this.f4001i = cVar2;
        cVar2.a((x.a) this);
        this.f3995c = wVar == null ? new w() : wVar;
        this.f3994b = zVar == null ? new z() : zVar;
        this.f3997e = bVar5 == null ? new b(bVar, bVar2, bVar3, bVar4, this) : bVar5;
        this.f4000h = aVar2 == null ? new a(this.f3999g) : aVar2;
        this.f3998f = g2 == null ? new G() : g2;
        iVar.a((i.a) this);
    }

    public void b(D<?> d2) {
        k.b();
        if (d2 instanceof x) {
            ((x) d2).g();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    public static void a(String str, long j2, c.b.a.c.c cVar) {
        Log.v("Engine", str + " in " + c.b.a.i.e.a(j2) + "ms, key: " + cVar);
    }

    public final x<?> a(c.b.a.c.c cVar, boolean z) {
        if (!z) {
            return null;
        }
        x<?> b2 = this.f4001i.b(cVar);
        if (b2 != null) {
            b2.d();
        }
        return b2;
    }

    public final x<?> a(c.b.a.c.c cVar) {
        D<?> a2 = this.f3996d.a(cVar);
        if (a2 == null) {
            return null;
        }
        if (a2 instanceof x) {
            return (x) a2;
        }
        return new x<>(a2, true, true);
    }

    public void a(t<?> tVar, c.b.a.c.c cVar, x<?> xVar) {
        k.b();
        if (xVar != null) {
            xVar.a(cVar, this);
            if (xVar.f()) {
                this.f4001i.a(cVar, xVar);
            }
        }
        this.f3994b.b(cVar, tVar);
    }

    public void a(t<?> tVar, c.b.a.c.c cVar) {
        k.b();
        this.f3994b.b(cVar, tVar);
    }

    public void a(D<?> d2) {
        k.b();
        this.f3998f.a(d2);
    }

    public void a(c.b.a.c.c cVar, x<?> xVar) {
        k.b();
        this.f4001i.a(cVar);
        if (xVar.f()) {
            this.f3996d.a(cVar, xVar);
        } else {
            this.f3998f.a(xVar);
        }
    }
}
