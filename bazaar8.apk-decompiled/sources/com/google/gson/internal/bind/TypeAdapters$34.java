package com.google.gson.internal.bind;

import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;

class TypeAdapters$34 implements y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Class f13590a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Class f13591b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f13592c;

    public TypeAdapters$34(Class cls, Class cls2, x xVar) {
        this.f13590a = cls;
        this.f13591b = cls2;
        this.f13592c = xVar;
    }

    public <T> x<T> a(j jVar, a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        if (a2 == this.f13590a || a2 == this.f13591b) {
            return this.f13592c;
        }
        return null;
    }

    public String toString() {
        return "Factory[type=" + this.f13590a.getName() + "+" + this.f13591b.getName() + ",adapter=" + this.f13592c + "]";
    }
}
