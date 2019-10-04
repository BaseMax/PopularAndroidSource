package com.google.gson.internal.bind;

import com.google.gson.e;
import com.google.gson.internal.b;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;

public final class CollectionTypeAdapterFactory implements r {

    /* renamed from: a  reason: collision with root package name */
    private final c f4130a;

    static final class a<E> extends q<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final q<E> f4131a;

        /* renamed from: b  reason: collision with root package name */
        private final h<? extends Collection<E>> f4132b;

        public a(e eVar, Type type, q<E> qVar, h<? extends Collection<E>> hVar) {
            this.f4131a = new h(eVar, qVar, type);
            this.f4132b = hVar;
        }

        public final Collection<E> read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> collection = (Collection) this.f4132b.construct();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collection.add(this.f4131a.read(jsonReader));
            }
            jsonReader.endArray();
            return collection;
        }

        public final void write(JsonWriter jsonWriter, Collection<E> collection) throws IOException {
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (E write : collection) {
                this.f4131a.write(jsonWriter, write);
            }
            jsonWriter.endArray();
        }
    }

    public CollectionTypeAdapterFactory(c cVar) {
        this.f4130a = cVar;
    }

    public final <T> q<T> create(e eVar, com.google.gson.b.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type collectionElementType = b.getCollectionElementType(type, rawType);
        return new a(eVar, collectionElementType, eVar.getAdapter(com.google.gson.b.a.get(collectionElementType)), this.f4130a.get(aVar));
    }
}
