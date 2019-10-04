package com.google.gson.internal.bind;

import com.google.gson.d;
import com.google.gson.e;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.internal.j;
import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory implements r {

    /* renamed from: a  reason: collision with root package name */
    private final c f4138a;

    /* renamed from: b  reason: collision with root package name */
    private final d f4139b;
    private final Excluder c;
    private final JsonAdapterAnnotationTypeAdapterFactory d;
    private final com.google.gson.internal.a.b e = com.google.gson.internal.a.b.getInstance();

    public static final class a<T> extends q<T> {

        /* renamed from: a  reason: collision with root package name */
        private final h<T> f4142a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, b> f4143b;

        a(h<T> hVar, Map<String, b> map) {
            this.f4142a = hVar;
            this.f4143b = map;
        }

        public final T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T construct = this.f4142a.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    b bVar = this.f4143b.get(jsonReader.nextName());
                    if (bVar != null) {
                        if (bVar.j) {
                            bVar.a(jsonReader, (Object) construct);
                        }
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return construct;
            } catch (IllegalStateException e) {
                throw new p((Throwable) e);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }

        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (b next : this.f4143b.values()) {
                    if (next.writeField(t)) {
                        jsonWriter.name(next.h);
                        next.a(jsonWriter, (Object) t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    static abstract class b {
        final String h;
        final boolean i;
        final boolean j;

        /* access modifiers changed from: package-private */
        public abstract void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        /* access modifiers changed from: package-private */
        public abstract void a(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        /* access modifiers changed from: package-private */
        public abstract boolean writeField(Object obj) throws IOException, IllegalAccessException;

        protected b(String str, boolean z, boolean z2) {
            this.h = str;
            this.i = z;
            this.j = z2;
        }
    }

    public ReflectiveTypeAdapterFactory(c cVar, d dVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f4138a = cVar;
        this.f4139b = dVar;
        this.c = excluder;
        this.d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public final boolean excludeField(Field field, boolean z) {
        Excluder excluder = this.c;
        return !excluder.excludeClass(field.getType(), z) && !excluder.excludeField(field, z);
    }

    private List<String> a(Field field) {
        com.google.gson.a.c cVar = (com.google.gson.a.c) field.getAnnotation(com.google.gson.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f4139b.translateName(field));
        }
        String value = cVar.value();
        String[] alternate = cVar.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        for (String add : alternate) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public final <T> q<T> create(e eVar, com.google.gson.b.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        return new a(this.f4138a.get(aVar), a(eVar, aVar, rawType));
    }

    private Map<String, b> a(e eVar, com.google.gson.b.a<?> aVar, Class<?> cls) {
        Class<? super Object> cls2;
        int i;
        Field[] fieldArr;
        int i2;
        ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory = this;
        e eVar2 = eVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = aVar.getType();
        com.google.gson.b.a<?> aVar2 = aVar;
        Class<? super Object> cls3 = cls;
        while (cls3 != Object.class) {
            Field[] declaredFields = cls3.getDeclaredFields();
            int length = declaredFields.length;
            boolean z = false;
            int i3 = 0;
            while (i3 < length) {
                Field field = declaredFields[i3];
                boolean excludeField = reflectiveTypeAdapterFactory.excludeField(field, true);
                boolean excludeField2 = reflectiveTypeAdapterFactory.excludeField(field, z);
                if (excludeField || excludeField2) {
                    reflectiveTypeAdapterFactory.e.makeAccessible(field);
                    Type resolve = com.google.gson.internal.b.resolve(aVar2.getType(), cls3, field.getGenericType());
                    List<String> a2 = reflectiveTypeAdapterFactory.a(field);
                    int size = a2.size();
                    b bVar = null;
                    int i4 = 0;
                    while (i4 < size) {
                        Class<? super Object> cls4 = cls3;
                        String str = a2.get(i4);
                        boolean z2 = i4 != 0 ? false : excludeField;
                        com.google.gson.b.a<?> aVar3 = com.google.gson.b.a.get(resolve);
                        boolean isPrimitive = j.isPrimitive(aVar3.getRawType());
                        com.google.gson.a.b bVar2 = (com.google.gson.a.b) field.getAnnotation(com.google.gson.a.b.class);
                        q<?> a3 = bVar2 != null ? JsonAdapterAnnotationTypeAdapterFactory.a(reflectiveTypeAdapterFactory.f4138a, eVar2, aVar3, bVar2) : null;
                        boolean z3 = a3 != null;
                        if (a3 == null) {
                            a3 = eVar2.getAdapter(aVar3);
                        }
                        q<?> qVar = a3;
                        b bVar3 = bVar;
                        int i5 = i4;
                        int i6 = size;
                        List<String> list = a2;
                        AnonymousClass1 r12 = r0;
                        final Field field2 = field;
                        Field field3 = field;
                        final boolean z4 = z3;
                        int i7 = i3;
                        final q<?> qVar2 = qVar;
                        final e eVar3 = eVar;
                        int i8 = length;
                        final com.google.gson.b.a<?> aVar4 = aVar3;
                        Field[] fieldArr2 = declaredFields;
                        final boolean z5 = isPrimitive;
                        AnonymousClass1 r0 = new b(str, z2, excludeField2) {
                            /* access modifiers changed from: package-private */
                            public final void a(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
                                q qVar;
                                Object obj2 = field2.get(obj);
                                if (z4) {
                                    qVar = qVar2;
                                } else {
                                    qVar = new h(eVar3, qVar2, aVar4.getType());
                                }
                                qVar.write(jsonWriter, obj2);
                            }

                            /* access modifiers changed from: package-private */
                            public final void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
                                Object read = qVar2.read(jsonReader);
                                if (read != null || !z5) {
                                    field2.set(obj, read);
                                }
                            }

                            public final boolean writeField(Object obj) throws IOException, IllegalAccessException {
                                if (this.i && field2.get(obj) != obj) {
                                    return true;
                                }
                                return false;
                            }
                        };
                        bVar = bVar3 == null ? (b) linkedHashMap.put(str, r12) : bVar3;
                        i4 = i5 + 1;
                        reflectiveTypeAdapterFactory = this;
                        eVar2 = eVar;
                        cls3 = cls4;
                        excludeField = z2;
                        length = i8;
                        declaredFields = fieldArr2;
                        size = i6;
                        a2 = list;
                        field = field3;
                        i3 = i7;
                    }
                    i = i3;
                    i2 = length;
                    fieldArr = declaredFields;
                    cls2 = cls3;
                    if (bVar != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + r11.h);
                    }
                } else {
                    i = i3;
                    i2 = length;
                    fieldArr = declaredFields;
                    cls2 = cls3;
                }
                i3 = i + 1;
                reflectiveTypeAdapterFactory = this;
                eVar2 = eVar;
                cls3 = cls2;
                length = i2;
                declaredFields = fieldArr;
                z = false;
            }
            Class<? super Object> cls5 = cls3;
            aVar2 = com.google.gson.b.a.get(com.google.gson.internal.b.resolve(aVar2.getType(), cls5, cls5.getGenericSuperclass()));
            cls3 = aVar2.getRawType();
            reflectiveTypeAdapterFactory = this;
            eVar2 = eVar;
        }
        return linkedHashMap;
    }
}
