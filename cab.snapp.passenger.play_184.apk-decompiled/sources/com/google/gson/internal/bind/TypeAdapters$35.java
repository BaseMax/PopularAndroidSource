package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class TypeAdapters$35 implements r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Class f4159a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q f4160b;

    TypeAdapters$35(Class cls, q qVar) {
        this.f4159a = cls;
        this.f4160b = qVar;
    }

    public final <T2> q<T2> create(e eVar, a<T2> aVar) {
        final Class<? super T2> rawType = aVar.getRawType();
        if (!this.f4159a.isAssignableFrom(rawType)) {
            return null;
        }
        return new q<T1>() {
            public final void write(JsonWriter jsonWriter, T1 t1) throws IOException {
                TypeAdapters$35.this.f4160b.write(jsonWriter, t1);
            }

            public final T1 read(JsonReader jsonReader) throws IOException {
                T1 read = TypeAdapters$35.this.f4160b.read(jsonReader);
                if (read == null || rawType.isInstance(read)) {
                    return read;
                }
                throw new p("Expected a " + rawType.getName() + " but was " + read.getClass().getName());
            }
        };
    }

    public final String toString() {
        return "Factory[typeHierarchy=" + this.f4159a.getName() + ",adapter=" + this.f4160b + "]";
    }
}
