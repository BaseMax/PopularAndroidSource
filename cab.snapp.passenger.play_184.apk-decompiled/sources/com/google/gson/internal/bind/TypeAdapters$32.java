package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;

class TypeAdapters$32 implements r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Class f4153a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q f4154b;

    TypeAdapters$32(Class cls, q qVar) {
        this.f4153a = cls;
        this.f4154b = qVar;
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        if (aVar.getRawType() == this.f4153a) {
            return this.f4154b;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f4153a.getName() + ",adapter=" + this.f4154b + "]";
    }
}
