package com.google.gson.internal.bind;

import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;

class TypeAdapters$35 implements y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Class f13593a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ x f13594b;

    public TypeAdapters$35(Class cls, x xVar) {
        this.f13593a = cls;
        this.f13594b = xVar;
    }

    public <T2> x<T2> a(j jVar, a<T2> aVar) {
        Class<? super T2> a2 = aVar.a();
        if (!this.f13593a.isAssignableFrom(a2)) {
            return null;
        }
        return new J(this, a2);
    }

    public String toString() {
        return "Factory[typeHierarchy=" + this.f13593a.getName() + ",adapter=" + this.f13594b + "]";
    }
}
