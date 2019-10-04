package com.google.gson.internal.bind;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.e;
import com.google.gson.internal.b;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.internal.k;
import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

public final class MapTypeAdapterFactory implements r {

    /* renamed from: a  reason: collision with root package name */
    final boolean f4134a;

    /* renamed from: b  reason: collision with root package name */
    private final c f4135b;

    final class a<K, V> extends q<Map<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private final q<K> f4137b;
        private final q<V> c;
        private final h<? extends Map<K, V>> d;

        public a(e eVar, Type type, q<K> qVar, Type type2, q<V> qVar2, h<? extends Map<K, V>> hVar) {
            this.f4137b = new h(eVar, qVar, type);
            this.c = new h(eVar, qVar2, type2);
            this.d = hVar;
        }

        public final Map<K, V> read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> map = (Map) this.d.construct();
            if (peek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K read = this.f4137b.read(jsonReader);
                    if (map.put(read, this.c.read(jsonReader)) == null) {
                        jsonReader.endArray();
                    } else {
                        throw new p("duplicate key: ".concat(String.valueOf(read)));
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    com.google.gson.internal.e.INSTANCE.promoteNameToValue(jsonReader);
                    K read2 = this.f4137b.read(jsonReader);
                    if (map.put(read2, this.c.read(jsonReader)) != null) {
                        throw new p("duplicate key: ".concat(String.valueOf(read2)));
                    }
                }
                jsonReader.endObject();
            }
            return map;
        }

        public final void write(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
            String str;
            if (map == null) {
                jsonWriter.nullValue();
            } else if (!MapTypeAdapterFactory.this.f4134a) {
                jsonWriter.beginObject();
                for (Map.Entry next : map.entrySet()) {
                    jsonWriter.name(String.valueOf(next.getKey()));
                    this.c.write(jsonWriter, next.getValue());
                }
                jsonWriter.endObject();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i = 0;
                boolean z = false;
                for (Map.Entry next2 : map.entrySet()) {
                    JsonElement jsonTree = this.f4137b.toJsonTree(next2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(next2.getValue());
                    z |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
                }
                if (z) {
                    jsonWriter.beginArray();
                    int size = arrayList.size();
                    while (i < size) {
                        jsonWriter.beginArray();
                        k.write((JsonElement) arrayList.get(i), jsonWriter);
                        this.c.write(jsonWriter, arrayList2.get(i));
                        jsonWriter.endArray();
                        i++;
                    }
                    jsonWriter.endArray();
                    return;
                }
                jsonWriter.beginObject();
                int size2 = arrayList.size();
                while (i < size2) {
                    JsonElement jsonElement = (JsonElement) arrayList.get(i);
                    if (jsonElement.isJsonPrimitive()) {
                        JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                        if (asJsonPrimitive.isNumber()) {
                            str = String.valueOf(asJsonPrimitive.getAsNumber());
                        } else if (asJsonPrimitive.isBoolean()) {
                            str = Boolean.toString(asJsonPrimitive.getAsBoolean());
                        } else if (asJsonPrimitive.isString()) {
                            str = asJsonPrimitive.getAsString();
                        } else {
                            throw new AssertionError();
                        }
                    } else if (jsonElement.isJsonNull()) {
                        str = "null";
                    } else {
                        throw new AssertionError();
                    }
                    jsonWriter.name(str);
                    this.c.write(jsonWriter, arrayList2.get(i));
                    i++;
                }
                jsonWriter.endObject();
            }
        }
    }

    public MapTypeAdapterFactory(c cVar, boolean z) {
        this.f4135b = cVar;
        this.f4134a = z;
    }

    public final <T> q<T> create(e eVar, com.google.gson.b.a<T> aVar) {
        q<Boolean> qVar;
        Type type = aVar.getType();
        if (!Map.class.isAssignableFrom(aVar.getRawType())) {
            return null;
        }
        Type[] mapKeyAndValueTypes = b.getMapKeyAndValueTypes(type, b.getRawType(type));
        Type type2 = mapKeyAndValueTypes[0];
        if (type2 == Boolean.TYPE || type2 == Boolean.class) {
            qVar = i.BOOLEAN_AS_STRING;
        } else {
            qVar = eVar.getAdapter(com.google.gson.b.a.get(type2));
        }
        q<?> adapter = eVar.getAdapter(com.google.gson.b.a.get(mapKeyAndValueTypes[1]));
        h<T> hVar = this.f4135b.get(aVar);
        e eVar2 = eVar;
        a aVar2 = new a(eVar2, mapKeyAndValueTypes[0], qVar, mapKeyAndValueTypes[1], adapter, hVar);
        return aVar2;
    }
}
