package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import org.eclipse.paho.a.a.w;

class TypeAdapters$33 implements r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Class f4155a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Class f4156b;
    final /* synthetic */ q c;

    TypeAdapters$33(Class cls, Class cls2, q qVar) {
        this.f4155a = cls;
        this.f4156b = cls2;
        this.c = qVar;
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (rawType == this.f4155a || rawType == this.f4156b) {
            return this.c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f4156b.getName() + w.SINGLE_LEVEL_WILDCARD + this.f4155a.getName() + ",adapter=" + this.c + "]";
    }
}
