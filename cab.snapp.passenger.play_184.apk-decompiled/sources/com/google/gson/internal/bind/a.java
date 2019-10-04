package com.google.gson.internal.bind;

import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

public final class a<E> extends q<Object> {
    public static final r FACTORY = new ArrayTypeAdapter$1();

    /* renamed from: a  reason: collision with root package name */
    private final Class<E> f4163a;

    /* renamed from: b  reason: collision with root package name */
    private final q<E> f4164b;

    public a(e eVar, q<E> qVar, Class<E> cls) {
        this.f4164b = new h(eVar, qVar, cls);
        this.f4163a = cls;
    }

    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(this.f4164b.read(jsonReader));
        }
        jsonReader.endArray();
        int size = arrayList.size();
        Object newInstance = Array.newInstance(this.f4163a, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f4164b.write(jsonWriter, Array.get(obj, i));
        }
        jsonWriter.endArray();
    }
}
