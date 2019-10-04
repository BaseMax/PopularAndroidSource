package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.b;
import com.google.gson.internal.bind.d;
import com.google.gson.internal.bind.f;
import com.google.gson.internal.bind.g;
import com.google.gson.internal.bind.i;
import com.google.gson.internal.c;
import com.google.gson.internal.j;
import com.google.gson.internal.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class e {
    private static final com.google.gson.b.a<?> r = com.google.gson.b.a.get(Object.class);

    /* renamed from: a  reason: collision with root package name */
    final List<r> f4108a;

    /* renamed from: b  reason: collision with root package name */
    final Excluder f4109b;
    final d c;
    final Map<Type, g<?>> d;
    final boolean e;
    final boolean f;
    final boolean g;
    final boolean h;
    final boolean i;
    final boolean j;
    final boolean k;
    final String l;
    final int m;
    final int n;
    final LongSerializationPolicy o;
    final List<r> p;
    final List<r> q;
    private final ThreadLocal<Map<com.google.gson.b.a<?>, a<?>>> s;
    private final Map<com.google.gson.b.a<?>, q<?>> t;
    private final c u;
    private final JsonAdapterAnnotationTypeAdapterFactory v;

    static class a<T> extends q<T> {

        /* renamed from: a  reason: collision with root package name */
        private q<T> f4114a;

        a() {
        }

        public final void setDelegate(q<T> qVar) {
            if (this.f4114a == null) {
                this.f4114a = qVar;
                return;
            }
            throw new AssertionError();
        }

        public final T read(JsonReader jsonReader) throws IOException {
            q<T> qVar = this.f4114a;
            if (qVar != null) {
                return qVar.read(jsonReader);
            }
            throw new IllegalStateException();
        }

        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            q<T> qVar = this.f4114a;
            if (qVar != null) {
                qVar.write(jsonWriter, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public e() {
        this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    e(Excluder excluder, d dVar, Map<Type, g<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, LongSerializationPolicy longSerializationPolicy, String str, int i2, int i3, List<r> list, List<r> list2, List<r> list3) {
        final q qVar;
        q qVar2;
        q qVar3;
        boolean z8 = z7;
        LongSerializationPolicy longSerializationPolicy2 = longSerializationPolicy;
        this.s = new ThreadLocal<>();
        this.t = new ConcurrentHashMap();
        this.f4109b = excluder;
        this.c = dVar;
        this.d = map;
        this.u = new c(map);
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = z4;
        this.i = z5;
        this.j = z6;
        this.k = z8;
        this.o = longSerializationPolicy2;
        this.l = str;
        this.m = i2;
        this.n = i3;
        this.p = list;
        this.q = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.JSON_ELEMENT_FACTORY);
        arrayList.add(com.google.gson.internal.bind.e.FACTORY);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(i.STRING_FACTORY);
        arrayList.add(i.INTEGER_FACTORY);
        arrayList.add(i.BOOLEAN_FACTORY);
        arrayList.add(i.BYTE_FACTORY);
        arrayList.add(i.SHORT_FACTORY);
        if (longSerializationPolicy2 == LongSerializationPolicy.DEFAULT) {
            qVar = i.LONG;
        } else {
            qVar = new q<Number>() {
                public final Number read(JsonReader jsonReader) throws IOException {
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Long.valueOf(jsonReader.nextLong());
                    }
                    jsonReader.nextNull();
                    return null;
                }

                public final void write(JsonWriter jsonWriter, Number number) throws IOException {
                    if (number == null) {
                        jsonWriter.nullValue();
                    } else {
                        jsonWriter.value(number.toString());
                    }
                }
            };
        }
        arrayList.add(i.newFactory(Long.TYPE, Long.class, qVar));
        Class cls = Double.TYPE;
        Class<Double> cls2 = Double.class;
        if (z8) {
            qVar2 = i.DOUBLE;
        } else {
            qVar2 = new q<Number>() {
                public final Double read(JsonReader jsonReader) throws IOException {
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Double.valueOf(jsonReader.nextDouble());
                    }
                    jsonReader.nextNull();
                    return null;
                }

                public final void write(JsonWriter jsonWriter, Number number) throws IOException {
                    if (number == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    e.a(number.doubleValue());
                    jsonWriter.value(number);
                }
            };
        }
        arrayList.add(i.newFactory(cls, cls2, qVar2));
        Class cls3 = Float.TYPE;
        Class<Float> cls4 = Float.class;
        if (z8) {
            qVar3 = i.FLOAT;
        } else {
            qVar3 = new q<Number>() {
                public final Float read(JsonReader jsonReader) throws IOException {
                    if (jsonReader.peek() != JsonToken.NULL) {
                        return Float.valueOf((float) jsonReader.nextDouble());
                    }
                    jsonReader.nextNull();
                    return null;
                }

                public final void write(JsonWriter jsonWriter, Number number) throws IOException {
                    if (number == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    e.a((double) number.floatValue());
                    jsonWriter.value(number);
                }
            };
        }
        arrayList.add(i.newFactory(cls3, cls4, qVar3));
        arrayList.add(i.NUMBER_FACTORY);
        arrayList.add(i.ATOMIC_INTEGER_FACTORY);
        arrayList.add(i.ATOMIC_BOOLEAN_FACTORY);
        arrayList.add(i.newFactory(AtomicLong.class, new q<AtomicLong>() {
            public final void write(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
                qVar.write(jsonWriter, Long.valueOf(atomicLong.get()));
            }

            public final AtomicLong read(JsonReader jsonReader) throws IOException {
                return new AtomicLong(((Number) qVar.read(jsonReader)).longValue());
            }
        }.nullSafe()));
        arrayList.add(i.newFactory(AtomicLongArray.class, new q<AtomicLongArray>() {
            public final void write(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
                jsonWriter.beginArray();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    qVar.write(jsonWriter, Long.valueOf(atomicLongArray.get(i)));
                }
                jsonWriter.endArray();
            }

            public final AtomicLongArray read(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(Long.valueOf(((Number) qVar.read(jsonReader)).longValue()));
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }
        }.nullSafe()));
        arrayList.add(i.ATOMIC_INTEGER_ARRAY_FACTORY);
        arrayList.add(i.CHARACTER_FACTORY);
        arrayList.add(i.STRING_BUILDER_FACTORY);
        arrayList.add(i.STRING_BUFFER_FACTORY);
        arrayList.add(i.newFactory(BigDecimal.class, i.BIG_DECIMAL));
        arrayList.add(i.newFactory(BigInteger.class, i.BIG_INTEGER));
        arrayList.add(i.URL_FACTORY);
        arrayList.add(i.URI_FACTORY);
        arrayList.add(i.UUID_FACTORY);
        arrayList.add(i.CURRENCY_FACTORY);
        arrayList.add(i.LOCALE_FACTORY);
        arrayList.add(i.INET_ADDRESS_FACTORY);
        arrayList.add(i.BIT_SET_FACTORY);
        arrayList.add(b.FACTORY);
        arrayList.add(i.CALENDAR_FACTORY);
        arrayList.add(g.FACTORY);
        arrayList.add(f.FACTORY);
        arrayList.add(i.TIMESTAMP_FACTORY);
        arrayList.add(com.google.gson.internal.bind.a.FACTORY);
        arrayList.add(i.CLASS_FACTORY);
        arrayList.add(new CollectionTypeAdapterFactory(this.u));
        arrayList.add(new MapTypeAdapterFactory(this.u, z2));
        this.v = new JsonAdapterAnnotationTypeAdapterFactory(this.u);
        arrayList.add(this.v);
        arrayList.add(i.ENUM_FACTORY);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.u, dVar, excluder, this.v));
        this.f4108a = Collections.unmodifiableList(arrayList);
    }

    public final f newBuilder() {
        return new f(this);
    }

    public final Excluder excluder() {
        return this.f4109b;
    }

    public final d fieldNamingStrategy() {
        return this.c;
    }

    public final boolean serializeNulls() {
        return this.e;
    }

    public final boolean htmlSafe() {
        return this.h;
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final <T> q<T> getAdapter(com.google.gson.b.a<T> aVar) {
        q<T> qVar = this.t.get(aVar == null ? r : aVar);
        if (qVar != null) {
            return qVar;
        }
        Map map = this.s.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap();
            this.s.set(map);
            z = true;
        }
        a aVar2 = (a) map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a aVar3 = new a();
            map.put(aVar, aVar3);
            for (r create : this.f4108a) {
                q<T> create2 = create.create(this, aVar);
                if (create2 != null) {
                    aVar3.setDelegate(create2);
                    this.t.put(aVar, create2);
                    return create2;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.5) cannot handle ".concat(String.valueOf(aVar)));
        } finally {
            map.remove(aVar);
            if (z) {
                this.s.remove();
            }
        }
    }

    public final <T> q<T> getDelegateAdapter(r rVar, com.google.gson.b.a<T> aVar) {
        if (!this.f4108a.contains(rVar)) {
            rVar = this.v;
        }
        boolean z = false;
        for (r next : this.f4108a) {
            if (z) {
                q<T> create = next.create(this, aVar);
                if (create != null) {
                    return create;
                }
            } else if (next == rVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> q<T> getAdapter(Class<T> cls) {
        return getAdapter(com.google.gson.b.a.get(cls));
    }

    public final JsonElement toJsonTree(Object obj) {
        if (obj == null) {
            return k.INSTANCE;
        }
        return toJsonTree(obj, obj.getClass());
    }

    public final JsonElement toJsonTree(Object obj, Type type) {
        d dVar = new d();
        toJson(obj, type, (JsonWriter) dVar);
        return dVar.get();
    }

    public final String toJson(Object obj) {
        if (obj == null) {
            return toJson((JsonElement) k.INSTANCE);
        }
        return toJson(obj, (Type) obj.getClass());
    }

    public final String toJson(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        toJson(obj, type, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public final void toJson(Object obj, Appendable appendable) throws j {
        if (obj != null) {
            toJson(obj, (Type) obj.getClass(), appendable);
        } else {
            toJson((JsonElement) k.INSTANCE, appendable);
        }
    }

    public final void toJson(Object obj, Type type, Appendable appendable) throws j {
        try {
            toJson(obj, type, newJsonWriter(k.writerForAppendable(appendable)));
        } catch (IOException e2) {
            throw new j((Throwable) e2);
        }
    }

    public final void toJson(Object obj, Type type, JsonWriter jsonWriter) throws j {
        q<?> adapter = getAdapter(com.google.gson.b.a.get(type));
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.h);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.e);
        try {
            adapter.write(jsonWriter, obj);
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        } catch (IOException e2) {
            throw new j((Throwable) e2);
        } catch (AssertionError e3) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
        } catch (Throwable th) {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public final String toJson(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        toJson(jsonElement, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public final void toJson(JsonElement jsonElement, Appendable appendable) throws j {
        try {
            toJson(jsonElement, newJsonWriter(k.writerForAppendable(appendable)));
        } catch (IOException e2) {
            throw new j((Throwable) e2);
        }
    }

    public final JsonWriter newJsonWriter(Writer writer) throws IOException {
        if (this.g) {
            writer.write(")]}'\n");
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.i) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setSerializeNulls(this.e);
        return jsonWriter;
    }

    public final JsonReader newJsonReader(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.setLenient(this.j);
        return jsonReader;
    }

    public final void toJson(JsonElement jsonElement, JsonWriter jsonWriter) throws j {
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.h);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.e);
        try {
            k.write(jsonElement, jsonWriter);
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        } catch (IOException e2) {
            throw new j((Throwable) e2);
        } catch (AssertionError e3) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
        } catch (Throwable th) {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public final <T> T fromJson(String str, Class<T> cls) throws p {
        return j.wrap(cls).cast(fromJson(str, (Type) cls));
    }

    public final <T> T fromJson(String str, Type type) throws p {
        if (str == null) {
            return null;
        }
        return fromJson((Reader) new StringReader(str), type);
    }

    public final <T> T fromJson(Reader reader, Class<T> cls) throws p, j {
        JsonReader newJsonReader = newJsonReader(reader);
        T fromJson = fromJson(newJsonReader, (Type) cls);
        a(fromJson, newJsonReader);
        return j.wrap(cls).cast(fromJson);
    }

    public final <T> T fromJson(Reader reader, Type type) throws j, p {
        JsonReader newJsonReader = newJsonReader(reader);
        T fromJson = fromJson(newJsonReader, type);
        a(fromJson, newJsonReader);
        return fromJson;
    }

    private static void a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new j("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e2) {
                throw new p((Throwable) e2);
            } catch (IOException e3) {
                throw new j((Throwable) e3);
            }
        }
    }

    public final <T> T fromJson(JsonReader jsonReader, Type type) throws j, p {
        boolean isLenient = jsonReader.isLenient();
        jsonReader.setLenient(true);
        try {
            jsonReader.peek();
            T read = getAdapter(com.google.gson.b.a.get(type)).read(jsonReader);
            jsonReader.setLenient(isLenient);
            return read;
        } catch (EOFException e2) {
            if (1 != 0) {
                jsonReader.setLenient(isLenient);
                return null;
            }
            throw new p((Throwable) e2);
        } catch (IllegalStateException e3) {
            throw new p((Throwable) e3);
        } catch (IOException e4) {
            throw new p((Throwable) e4);
        } catch (AssertionError e5) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e5.getMessage(), e5);
        } catch (Throwable th) {
            jsonReader.setLenient(isLenient);
            throw th;
        }
    }

    public final <T> T fromJson(JsonElement jsonElement, Class<T> cls) throws p {
        return j.wrap(cls).cast(fromJson(jsonElement, (Type) cls));
    }

    public final <T> T fromJson(JsonElement jsonElement, Type type) throws p {
        if (jsonElement == null) {
            return null;
        }
        return fromJson((JsonReader) new com.google.gson.internal.bind.c(jsonElement), type);
    }

    public final String toString() {
        return "{serializeNulls:" + this.e + ",factories:" + this.f4108a + ",instanceCreators:" + this.u + "}";
    }
}
