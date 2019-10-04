package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;

class TypeAdapters$31 implements r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f4151a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q f4152b;

    TypeAdapters$31(a aVar, q qVar) {
        this.f4151a = aVar;
        this.f4152b = qVar;
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        if (aVar.equals(this.f4151a)) {
            return this.f4152b;
        }
        return null;
    }
}
