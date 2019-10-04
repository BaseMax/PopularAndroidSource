package com.google.gson.typeadapters;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.internal.k;
import com.google.gson.l;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

public final class RuntimeTypeAdapterFactory<T> implements r {
    /* access modifiers changed from: private */
    public final Class<?> baseType;
    private final Map<String, Class<?>> labelToSubtype = new LinkedHashMap();
    /* access modifiers changed from: private */
    public final boolean maintainType;
    /* access modifiers changed from: private */
    public final Map<Class<?>, String> subtypeToLabel = new LinkedHashMap();
    /* access modifiers changed from: private */
    public final String typeFieldName;

    private RuntimeTypeAdapterFactory(Class<?> cls, String str, boolean z) {
        if (str == null || cls == null) {
            throw new NullPointerException();
        }
        this.baseType = cls;
        this.typeFieldName = str;
        this.maintainType = z;
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str, boolean z) {
        return new RuntimeTypeAdapterFactory<>(cls, str, z);
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str) {
        return new RuntimeTypeAdapterFactory<>(cls, str, false);
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls) {
        return new RuntimeTypeAdapterFactory<>(cls, "type", false);
    }

    public final RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls, String str) {
        if (cls == null || str == null) {
            throw new NullPointerException();
        } else if (this.subtypeToLabel.containsKey(cls) || this.labelToSubtype.containsKey(str)) {
            throw new IllegalArgumentException("types and labels must be unique");
        } else {
            this.labelToSubtype.put(str, cls);
            this.subtypeToLabel.put(cls, str);
            return this;
        }
    }

    public final RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls) {
        return registerSubtype(cls, cls.getSimpleName());
    }

    public final <R> q<R> create(e eVar, a<R> aVar) {
        if (aVar.getRawType() != this.baseType) {
            return null;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry next : this.labelToSubtype.entrySet()) {
            q delegateAdapter = eVar.getDelegateAdapter(this, a.get((Class) next.getValue()));
            linkedHashMap.put(next.getKey(), delegateAdapter);
            linkedHashMap2.put(next.getValue(), delegateAdapter);
        }
        return new q<R>() {
            public final R read(JsonReader jsonReader) throws IOException {
                JsonElement jsonElement;
                JsonElement parse = k.parse(jsonReader);
                if (RuntimeTypeAdapterFactory.this.maintainType) {
                    jsonElement = parse.getAsJsonObject().get(RuntimeTypeAdapterFactory.this.typeFieldName);
                } else {
                    jsonElement = parse.getAsJsonObject().remove(RuntimeTypeAdapterFactory.this.typeFieldName);
                }
                if (jsonElement != null) {
                    String asString = jsonElement.getAsString();
                    q qVar = (q) linkedHashMap.get(asString);
                    if (qVar != null) {
                        return qVar.fromJsonTree(parse);
                    }
                    throw new l("cannot deserialize " + RuntimeTypeAdapterFactory.this.baseType + " subtype named " + asString + "; did you forget to register a subtype?");
                }
                throw new l("cannot deserialize " + RuntimeTypeAdapterFactory.this.baseType + " because it does not define a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
            }

            public final void write(JsonWriter jsonWriter, R r) throws IOException {
                Class<?> cls = r.getClass();
                q qVar = (q) linkedHashMap2.get(cls);
                if (qVar != null) {
                    JsonObject asJsonObject = qVar.toJsonTree(r).getAsJsonObject();
                    if (RuntimeTypeAdapterFactory.this.maintainType) {
                        k.write(asJsonObject, jsonWriter);
                        return;
                    }
                    JsonObject jsonObject = new JsonObject();
                    if (!asJsonObject.has(RuntimeTypeAdapterFactory.this.typeFieldName)) {
                        jsonObject.add(RuntimeTypeAdapterFactory.this.typeFieldName, new JsonPrimitive((String) RuntimeTypeAdapterFactory.this.subtypeToLabel.get(cls)));
                        for (Map.Entry next : asJsonObject.entrySet()) {
                            jsonObject.add((String) next.getKey(), (JsonElement) next.getValue());
                        }
                        k.write(jsonObject, jsonWriter);
                        return;
                    }
                    throw new l("cannot serialize " + cls.getName() + " because it already defines a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
                }
                throw new l("cannot serialize " + cls.getName() + "; did you forget to register a subtype?");
            }
        }.nullSafe();
    }
}
