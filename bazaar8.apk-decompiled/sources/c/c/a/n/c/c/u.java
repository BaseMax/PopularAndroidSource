package c.c.a.n.c.c;

import c.c.a.b.d.b;
import c.c.a.b.d.m;
import c.c.a.b.d.o;
import c.c.a.e.d.b.ba;
import c.c.a.e.d.i.j;

/* compiled from: PageViewModelEnv.kt */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final o f6343a;

    /* renamed from: b  reason: collision with root package name */
    public final b f6344b;

    /* renamed from: c  reason: collision with root package name */
    public final j f6345c;

    /* renamed from: d  reason: collision with root package name */
    public final ba f6346d;

    /* renamed from: e  reason: collision with root package name */
    public final m f6347e;

    public u(o oVar, b bVar, j jVar, ba baVar, m mVar) {
        h.f.b.j.b(oVar, "videoManager");
        h.f.b.j.b(bVar, "appManager");
        h.f.b.j.b(jVar, "downloadProgressRepository");
        h.f.b.j.b(baVar, "upgradableAppRepository");
        h.f.b.j.b(mVar, "paymentManager");
        this.f6343a = oVar;
        this.f6344b = bVar;
        this.f6345c = jVar;
        this.f6346d = baVar;
        this.f6347e = mVar;
    }

    public final b a() {
        return this.f6344b;
    }

    public final j b() {
        return this.f6345c;
    }

    public final m c() {
        return this.f6347e;
    }

    public final ba d() {
        return this.f6346d;
    }

    public final o e() {
        return this.f6343a;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6347e, (java.lang.Object) r3.f6347e) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof c.c.a.n.c.c.u
            if (r0 == 0) goto L_0x003b
            c.c.a.n.c.c.u r3 = (c.c.a.n.c.c.u) r3
            c.c.a.b.d.o r0 = r2.f6343a
            c.c.a.b.d.o r1 = r3.f6343a
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            c.c.a.b.d.b r0 = r2.f6344b
            c.c.a.b.d.b r1 = r3.f6344b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            c.c.a.e.d.i.j r0 = r2.f6345c
            c.c.a.e.d.i.j r1 = r3.f6345c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            c.c.a.e.d.b.ba r0 = r2.f6346d
            c.c.a.e.d.b.ba r1 = r3.f6346d
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            c.c.a.b.d.m r0 = r2.f6347e
            c.c.a.b.d.m r3 = r3.f6347e
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x003b
            goto L_0x003d
        L_0x003b:
            r3 = 0
            return r3
        L_0x003d:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.c.c.u.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        o oVar = this.f6343a;
        int i2 = 0;
        int hashCode = (oVar != null ? oVar.hashCode() : 0) * 31;
        b bVar = this.f6344b;
        int hashCode2 = (hashCode + (bVar != null ? bVar.hashCode() : 0)) * 31;
        j jVar = this.f6345c;
        int hashCode3 = (hashCode2 + (jVar != null ? jVar.hashCode() : 0)) * 31;
        ba baVar = this.f6346d;
        int hashCode4 = (hashCode3 + (baVar != null ? baVar.hashCode() : 0)) * 31;
        m mVar = this.f6347e;
        if (mVar != null) {
            i2 = mVar.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "PageViewModelEnv(videoManager=" + this.f6343a + ", appManager=" + this.f6344b + ", downloadProgressRepository=" + this.f6345c + ", upgradableAppRepository=" + this.f6346d + ", paymentManager=" + this.f6347e + ")";
    }
}
