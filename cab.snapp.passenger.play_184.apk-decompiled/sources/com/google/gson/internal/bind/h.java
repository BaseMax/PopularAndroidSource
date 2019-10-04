package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.q;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class h<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final e f4175a;

    /* renamed from: b  reason: collision with root package name */
    private final q<T> f4176b;
    private final Type c;

    h(e eVar, q<T> qVar, Type type) {
        this.f4175a = eVar;
        this.f4176b = qVar;
        this.c = type;
    }

    public final T read(JsonReader jsonReader) throws IOException {
        return this.f4176b.read(jsonReader);
    }

    public final void write(JsonWriter jsonWriter, T t) throws IOException {
        q<T> qVar = this.f4176b;
        Type type = this.c;
        if (t != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t.getClass();
        }
        if (type != this.c) {
            qVar = this.f4175a.getAdapter(a.get(type));
            if (qVar instanceof ReflectiveTypeAdapterFactory.a) {
                q<T> qVar2 = this.f4176b;
                if (!(qVar2 instanceof ReflectiveTypeAdapterFactory.a)) {
                    qVar = qVar2;
                }
            }
        }
        qVar.write(jsonWriter, t);
    }
}
