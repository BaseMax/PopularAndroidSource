package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import org.eclipse.paho.a.a.w;

class TypeAdapters$34 implements r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Class f4157a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Class f4158b;
    final /* synthetic */ q c;

    TypeAdapters$34(Class cls, Class cls2, q qVar) {
        this.f4157a = cls;
        this.f4158b = cls2;
        this.c = qVar;
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (rawType == this.f4157a || rawType == this.f4158b) {
            return this.c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f4157a.getName() + w.SINGLE_LEVEL_WILDCARD + this.f4158b.getName() + ",adapter=" + this.c + "]";
    }
}
