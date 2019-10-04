package j.a.c;

import j.C1142i;
import j.C1147n;
import j.E;
import j.L;
import j.P;
import j.a.b.c;
import j.a.b.f;
import j.z;
import java.util.List;

/* compiled from: RealInterceptorChain */
public final class h implements E.a {

    /* renamed from: a  reason: collision with root package name */
    public final List<E> f15359a;

    /* renamed from: b  reason: collision with root package name */
    public final f f15360b;

    /* renamed from: c  reason: collision with root package name */
    public final c f15361c;

    /* renamed from: d  reason: collision with root package name */
    public final c f15362d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15363e;

    /* renamed from: f  reason: collision with root package name */
    public final L f15364f;

    /* renamed from: g  reason: collision with root package name */
    public final C1142i f15365g;

    /* renamed from: h  reason: collision with root package name */
    public final z f15366h;

    /* renamed from: i  reason: collision with root package name */
    public final int f15367i;

    /* renamed from: j  reason: collision with root package name */
    public final int f15368j;

    /* renamed from: k  reason: collision with root package name */
    public final int f15369k;

    /* renamed from: l  reason: collision with root package name */
    public int f15370l;

    public h(List<E> list, f fVar, c cVar, c cVar2, int i2, L l2, C1142i iVar, z zVar, int i3, int i4, int i5) {
        this.f15359a = list;
        this.f15362d = cVar2;
        this.f15360b = fVar;
        this.f15361c = cVar;
        this.f15363e = i2;
        this.f15364f = l2;
        this.f15365g = iVar;
        this.f15366h = zVar;
        this.f15367i = i3;
        this.f15368j = i4;
        this.f15369k = i5;
    }

    public int a() {
        return this.f15368j;
    }

    public int b() {
        return this.f15369k;
    }

    public C1147n c() {
        return this.f15362d;
    }

    public int d() {
        return this.f15367i;
    }

    public L e() {
        return this.f15364f;
    }

    public C1142i f() {
        return this.f15365g;
    }

    public z g() {
        return this.f15366h;
    }

    public c h() {
        return this.f15361c;
    }

    public f i() {
        return this.f15360b;
    }

    public P a(L l2) {
        return a(l2, this.f15360b, this.f15361c, this.f15362d);
    }

    public P a(L l2, f fVar, c cVar, c cVar2) {
        if (this.f15363e < this.f15359a.size()) {
            this.f15370l++;
            if (this.f15361c != null && !this.f15362d.a(l2.g())) {
                throw new IllegalStateException("network interceptor " + this.f15359a.get(this.f15363e - 1) + " must retain the same host and port");
            } else if (this.f15361c == null || this.f15370l <= 1) {
                h hVar = new h(this.f15359a, fVar, cVar, cVar2, this.f15363e + 1, l2, this.f15365g, this.f15366h, this.f15367i, this.f15368j, this.f15369k);
                P a2 = this.f15359a.get(this.f15363e).a(hVar);
                if (cVar != null && this.f15363e + 1 < this.f15359a.size() && hVar.f15370l != 1) {
                    throw new IllegalStateException("network interceptor " + r5 + " must call proceed() exactly once");
                } else if (a2 == null) {
                    throw new NullPointerException("interceptor " + r5 + " returned null");
                } else if (a2.s() != null) {
                    return a2;
                } else {
                    throw new IllegalStateException("interceptor " + r5 + " returned a response with no body");
                }
            } else {
                throw new IllegalStateException("network interceptor " + this.f15359a.get(this.f15363e - 1) + " must call proceed() exactly once");
            }
        } else {
            throw new AssertionError();
        }
    }
}
