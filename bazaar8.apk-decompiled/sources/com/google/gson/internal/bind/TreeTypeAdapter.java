package com.google.gson.internal.bind;

import c.e.d.b.z;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.n;
import c.e.d.o;
import c.e.d.p;
import c.e.d.u;
import c.e.d.v;
import c.e.d.x;
import c.e.d.y;

public final class TreeTypeAdapter<T> extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    public final v<T> f13570a;

    /* renamed from: b  reason: collision with root package name */
    public final o<T> f13571b;

    /* renamed from: c  reason: collision with root package name */
    public final j f13572c;

    /* renamed from: d  reason: collision with root package name */
    public final c.e.d.c.a<T> f13573d;

    /* renamed from: e  reason: collision with root package name */
    public final y f13574e;

    /* renamed from: f  reason: collision with root package name */
    public final TreeTypeAdapter<T>.defpackage.a f13575f = new a();

    /* renamed from: g  reason: collision with root package name */
    public x<T> f13576g;

    private static final class SingleTypeFactory implements y {

        /* renamed from: a  reason: collision with root package name */
        public final c.e.d.c.a<?> f13577a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f13578b;

        /* renamed from: c  reason: collision with root package name */
        public final Class<?> f13579c;

        /* renamed from: d  reason: collision with root package name */
        public final v<?> f13580d;

        /* renamed from: e  reason: collision with root package name */
        public final o<?> f13581e;

        public <T> x<T> a(j jVar, c.e.d.c.a<T> aVar) {
            boolean z;
            c.e.d.c.a<?> aVar2 = this.f13577a;
            if (aVar2 != null) {
                z = aVar2.equals(aVar) || (this.f13578b && this.f13577a.b() == aVar.a());
            } else {
                z = this.f13579c.isAssignableFrom(aVar.a());
            }
            if (!z) {
                return null;
            }
            TreeTypeAdapter treeTypeAdapter = new TreeTypeAdapter(this.f13580d, this.f13581e, jVar, aVar, this);
            return treeTypeAdapter;
        }
    }

    private final class a implements u, n {
        public a() {
        }
    }

    public TreeTypeAdapter(v<T> vVar, o<T> oVar, j jVar, c.e.d.c.a<T> aVar, y yVar) {
        this.f13570a = vVar;
        this.f13571b = oVar;
        this.f13572c = jVar;
        this.f13573d = aVar;
        this.f13574e = yVar;
    }

    public T a(b bVar) {
        if (this.f13571b == null) {
            return b().a(bVar);
        }
        p a2 = z.a(bVar);
        if (a2.g()) {
            return null;
        }
        return this.f13571b.a(a2, this.f13573d.b(), this.f13575f);
    }

    public final x<T> b() {
        x<T> xVar = this.f13576g;
        if (xVar != null) {
            return xVar;
        }
        x<T> a2 = this.f13572c.a(this.f13574e, this.f13573d);
        this.f13576g = a2;
        return a2;
    }

    public void a(c cVar, T t) {
        v<T> vVar = this.f13570a;
        if (vVar == null) {
            b().a(cVar, t);
        } else if (t == null) {
            cVar.C();
        } else {
            z.a(vVar.a(t, this.f13573d.b(), this.f13575f), cVar);
        }
    }
}
