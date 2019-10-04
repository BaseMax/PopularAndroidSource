package com.google.gson.internal.bind;

import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;

class TypeAdapters$33 implements y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Class f13587a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Class f13588b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f13589c;

    public TypeAdapters$33(Class cls, Class cls2, x xVar) {
        this.f13587a = cls;
        this.f13588b = cls2;
        this.f13589c = xVar;
    }

    public <T> x<T> a(j jVar, a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        if (a2 == this.f13587a || a2 == this.f13588b) {
            return this.f13589c;
        }
        return null;
    }

    public String toString() {
        return "Factory[type=" + this.f13588b.getName() + "+" + this.f13587a.getName() + ",adapter=" + this.f13589c + "]";
    }
}
