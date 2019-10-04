package com.google.gson.internal;

import com.google.gson.a.d;
import com.google.gson.b;
import com.google.gson.b.a;
import com.google.gson.c;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Excluder implements r, Cloneable {
    public static final Excluder DEFAULT = new Excluder();

    /* renamed from: a  reason: collision with root package name */
    private double f4117a = -1.0d;

    /* renamed from: b  reason: collision with root package name */
    private int f4118b = 136;
    private boolean c = true;
    private boolean d;
    private List<b> e = Collections.emptyList();
    private List<b> f = Collections.emptyList();

    /* access modifiers changed from: private */
    /* renamed from: a */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final Excluder withVersion(double d2) {
        Excluder a2 = clone();
        a2.f4117a = d2;
        return a2;
    }

    public final Excluder withModifiers(int... iArr) {
        Excluder a2 = clone();
        a2.f4118b = 0;
        for (int i : iArr) {
            a2.f4118b = i | a2.f4118b;
        }
        return a2;
    }

    public final Excluder disableInnerClassSerialization() {
        Excluder a2 = clone();
        a2.c = false;
        return a2;
    }

    public final Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder a2 = clone();
        a2.d = true;
        return a2;
    }

    public final Excluder withExclusionStrategy(b bVar, boolean z, boolean z2) {
        Excluder a2 = clone();
        if (z) {
            a2.e = new ArrayList(this.e);
            a2.e.add(bVar);
        }
        if (z2) {
            a2.f = new ArrayList(this.f);
            a2.f.add(bVar);
        }
        return a2;
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        boolean a2 = a((Class<?>) rawType);
        final boolean z = a2 || a((Class<?>) rawType, true);
        final boolean z2 = a2 || a((Class<?>) rawType, false);
        if (!z && !z2) {
            return null;
        }
        final e eVar2 = eVar;
        final a<T> aVar2 = aVar;
        AnonymousClass1 r5 = new q<T>() {
            private q<T> f;

            public final T read(JsonReader jsonReader) throws IOException {
                if (!z2) {
                    return a().read(jsonReader);
                }
                jsonReader.skipValue();
                return null;
            }

            public final void write(JsonWriter jsonWriter, T t) throws IOException {
                if (z) {
                    jsonWriter.nullValue();
                } else {
                    a().write(jsonWriter, t);
                }
            }

            private q<T> a() {
                q<T> qVar = this.f;
                if (qVar != null) {
                    return qVar;
                }
                q<T> delegateAdapter = eVar2.getDelegateAdapter(Excluder.this, aVar2);
                this.f = delegateAdapter;
                return delegateAdapter;
            }
        };
        return r5;
    }

    public final boolean excludeField(Field field, boolean z) {
        if ((this.f4118b & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f4117a != -1.0d && !a((d) field.getAnnotation(d.class), (com.google.gson.a.e) field.getAnnotation(com.google.gson.a.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.d) {
            com.google.gson.a.a aVar = (com.google.gson.a.a) field.getAnnotation(com.google.gson.a.a.class);
            if (aVar == null || (!z ? !aVar.deserialize() : !aVar.serialize())) {
                return true;
            }
        }
        if ((!this.c && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<b> list = z ? this.e : this.f;
        if (!list.isEmpty()) {
            c cVar = new c(field);
            for (b shouldSkipField : list) {
                if (shouldSkipField.shouldSkipField(cVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean a(Class<?> cls) {
        if (this.f4117a != -1.0d && !a((d) cls.getAnnotation(d.class), (com.google.gson.a.e) cls.getAnnotation(com.google.gson.a.e.class))) {
            return true;
        }
        if ((this.c || !c(cls)) && !b(cls)) {
            return false;
        }
        return true;
    }

    public final boolean excludeClass(Class<?> cls, boolean z) {
        return a(cls) || a(cls, z);
    }

    private boolean a(Class<?> cls, boolean z) {
        for (b shouldSkipClass : z ? this.e : this.f) {
            if (shouldSkipClass.shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private static boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private static boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean a(d dVar, com.google.gson.a.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(d dVar) {
        return dVar == null || dVar.value() <= this.f4117a;
    }

    private boolean a(com.google.gson.a.e eVar) {
        return eVar == null || eVar.value() > this.f4117a;
    }
}
