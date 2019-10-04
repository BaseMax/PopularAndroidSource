package c.b.a.c.b;

import c.b.a.c.b.a.b;
import c.b.a.c.b.b.a;
import c.b.a.c.c;
import c.b.a.c.c.u;
import c.b.a.c.f;
import c.b.a.c.h;
import c.b.a.c.i;
import c.b.a.g;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.DecodeJob;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: c.b.a.c.b.h  reason: case insensitive filesystem */
/* compiled from: DecodeHelper */
public final class C0365h<Transcode> {

    /* renamed from: a  reason: collision with root package name */
    public final List<u.a<?>> f3967a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f3968b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public g f3969c;

    /* renamed from: d  reason: collision with root package name */
    public Object f3970d;

    /* renamed from: e  reason: collision with root package name */
    public int f3971e;

    /* renamed from: f  reason: collision with root package name */
    public int f3972f;

    /* renamed from: g  reason: collision with root package name */
    public Class<?> f3973g;

    /* renamed from: h  reason: collision with root package name */
    public DecodeJob.d f3974h;

    /* renamed from: i  reason: collision with root package name */
    public f f3975i;

    /* renamed from: j  reason: collision with root package name */
    public Map<Class<?>, i<?>> f3976j;

    /* renamed from: k  reason: collision with root package name */
    public Class<Transcode> f3977k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3978l;
    public boolean m;
    public c n;
    public Priority o;
    public p p;
    public boolean q;
    public boolean r;

    public <R> void a(g gVar, Object obj, c cVar, int i2, int i3, p pVar, Class<?> cls, Class<R> cls2, Priority priority, f fVar, Map<Class<?>, i<?>> map, boolean z, boolean z2, DecodeJob.d dVar) {
        this.f3969c = gVar;
        this.f3970d = obj;
        this.n = cVar;
        this.f3971e = i2;
        this.f3972f = i3;
        this.p = pVar;
        this.f3973g = cls;
        this.f3974h = dVar;
        this.f3977k = cls2;
        this.o = priority;
        this.f3975i = fVar;
        this.f3976j = map;
        this.q = z;
        this.r = z2;
    }

    public b b() {
        return this.f3969c.a();
    }

    public boolean c(Class<?> cls) {
        return a(cls) != null;
    }

    public a d() {
        return this.f3974h.a();
    }

    public p e() {
        return this.p;
    }

    public int f() {
        return this.f3972f;
    }

    public List<u.a<?>> g() {
        if (!this.f3978l) {
            this.f3978l = true;
            this.f3967a.clear();
            List a2 = this.f3969c.f().a(this.f3970d);
            int size = a2.size();
            for (int i2 = 0; i2 < size; i2++) {
                u.a a3 = ((u) a2.get(i2)).a(this.f3970d, this.f3971e, this.f3972f, this.f3975i);
                if (a3 != null) {
                    this.f3967a.add(a3);
                }
            }
        }
        return this.f3967a;
    }

    public f h() {
        return this.f3975i;
    }

    public Priority i() {
        return this.o;
    }

    public List<Class<?>> j() {
        return this.f3969c.f().c(this.f3970d.getClass(), this.f3973g, this.f3977k);
    }

    public c k() {
        return this.n;
    }

    public Class<?> l() {
        return this.f3977k;
    }

    public int m() {
        return this.f3971e;
    }

    public boolean n() {
        return this.r;
    }

    public <Z> i<Z> b(Class<Z> cls) {
        i<Z> iVar = this.f3976j.get(cls);
        if (iVar == null) {
            Iterator<Map.Entry<Class<?>, i<?>>> it = this.f3976j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry next = it.next();
                if (((Class) next.getKey()).isAssignableFrom(cls)) {
                    iVar = (i) next.getValue();
                    break;
                }
            }
        }
        if (iVar != null) {
            return iVar;
        }
        if (!this.f3976j.isEmpty() || !this.q) {
            return c.b.a.c.d.b.a();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    public List<c> c() {
        if (!this.m) {
            this.m = true;
            this.f3968b.clear();
            List<u.a<?>> g2 = g();
            int size = g2.size();
            for (int i2 = 0; i2 < size; i2++) {
                u.a aVar = g2.get(i2);
                if (!this.f3968b.contains(aVar.f4119a)) {
                    this.f3968b.add(aVar.f4119a);
                }
                for (int i3 = 0; i3 < aVar.f4120b.size(); i3++) {
                    if (!this.f3968b.contains(aVar.f4120b.get(i3))) {
                        this.f3968b.add(aVar.f4120b.get(i3));
                    }
                }
            }
        }
        return this.f3968b;
    }

    public boolean b(D<?> d2) {
        return this.f3969c.f().b(d2);
    }

    public void a() {
        this.f3969c = null;
        this.f3970d = null;
        this.n = null;
        this.f3973g = null;
        this.f3977k = null;
        this.f3975i = null;
        this.o = null;
        this.f3976j = null;
        this.p = null;
        this.f3967a.clear();
        this.f3978l = false;
        this.f3968b.clear();
        this.m = false;
    }

    public <Data> A<Data, ?, Transcode> a(Class<Data> cls) {
        return this.f3969c.f().b(cls, this.f3973g, this.f3977k);
    }

    public <Z> h<Z> a(D<Z> d2) {
        return this.f3969c.f().a(d2);
    }

    public List<u<File, ?>> a(File file) {
        return this.f3969c.f().a(file);
    }

    public boolean a(c cVar) {
        List<u.a<?>> g2 = g();
        int size = g2.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (g2.get(i2).f4119a.equals(cVar)) {
                return true;
            }
        }
        return false;
    }

    public <X> c.b.a.c.a<X> a(X x) {
        return this.f3969c.f().c(x);
    }
}
