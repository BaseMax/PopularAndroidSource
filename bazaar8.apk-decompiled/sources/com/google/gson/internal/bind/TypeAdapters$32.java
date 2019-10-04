package com.google.gson.internal.bind;

import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;

class TypeAdapters$32 implements y {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Class f13585a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ x f13586b;

    public TypeAdapters$32(Class cls, x xVar) {
        this.f13585a = cls;
        this.f13586b = xVar;
    }

    public <T> x<T> a(j jVar, a<T> aVar) {
        if (aVar.a() == this.f13585a) {
            return this.f13586b;
        }
        return null;
    }

    public String toString() {
        return "Factory[type=" + this.f13585a.getName() + ",adapter=" + this.f13586b + "]";
    }
}
