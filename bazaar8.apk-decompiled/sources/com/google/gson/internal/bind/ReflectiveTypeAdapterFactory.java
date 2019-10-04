package com.google.gson.internal.bind;

import c.e.d.b.p;
import c.e.d.b.w;
import c.e.d.d;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.Excluder;
import com.google.gson.stream.JsonToken;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory implements y {

    /* renamed from: a  reason: collision with root package name */
    public final p f13560a;

    /* renamed from: b  reason: collision with root package name */
    public final d f13561b;

    /* renamed from: c  reason: collision with root package name */
    public final Excluder f13562c;

    /* renamed from: d  reason: collision with root package name */
    public final JsonAdapterAnnotationTypeAdapterFactory f13563d;

    /* renamed from: e  reason: collision with root package name */
    public final c.e.d.b.b.b f13564e = c.e.d.b.b.b.a();

    public static final class a<T> extends x<T> {

        /* renamed from: a  reason: collision with root package name */
        public final w<T> f13565a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, b> f13566b;

        public a(w<T> wVar, Map<String, b> map) {
            this.f13565a = wVar;
            this.f13566b = map;
        }

        public T a(c.e.d.d.b bVar) {
            if (bVar.K() == JsonToken.NULL) {
                bVar.H();
                return null;
            }
            T a2 = this.f13565a.a();
            try {
                bVar.t();
                while (bVar.z()) {
                    b bVar2 = this.f13566b.get(bVar.G());
                    if (bVar2 != null) {
                        if (bVar2.f13569c) {
                            bVar2.a(bVar, (Object) a2);
                        }
                    }
                    bVar.Q();
                }
                bVar.y();
                return a2;
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException((Throwable) e2);
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }

        public void a(c cVar, T t) {
            if (t == null) {
                cVar.C();
                return;
            }
            cVar.v();
            try {
                for (b next : this.f13566b.values()) {
                    if (next.a(t)) {
                        cVar.e(next.f13567a);
                        next.a(cVar, (Object) t);
                    }
                }
                cVar.x();
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f13567a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f13568b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f13569c;

        public b(String str, boolean z, boolean z2) {
            this.f13567a = str;
            this.f13568b = z;
            this.f13569c = z2;
        }

        public abstract void a(c.e.d.d.b bVar, Object obj);

        public abstract void a(c cVar, Object obj);

        public abstract boolean a(Object obj);
    }

    public ReflectiveTypeAdapterFactory(p pVar, d dVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f13560a = pVar;
        this.f13561b = dVar;
        this.f13562c = excluder;
        this.f13563d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public boolean a(Field field, boolean z) {
        return a(field, z, this.f13562c);
    }

    public static boolean a(Field field, boolean z, Excluder excluder) {
        return !excluder.a(field.getType(), z) && !excluder.a(field, z);
    }

    public final List<String> a(Field field) {
        c.e.d.a.c cVar = (c.e.d.a.c) field.getAnnotation(c.e.d.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f13561b.a(field));
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

    public <T> x<T> a(j jVar, c.e.d.c.a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        if (!Object.class.isAssignableFrom(a2)) {
            return null;
        }
        return new a(this.f13560a.a(aVar), a(jVar, (c.e.d.c.a<?>) aVar, (Class<?>) a2));
    }

    public final b a(j jVar, Field field, String str, c.e.d.c.a<?> aVar, boolean z, boolean z2) {
        j jVar2 = jVar;
        c.e.d.c.a<?> aVar2 = aVar;
        boolean a2 = c.e.d.b.y.a((Type) aVar.a());
        Field field2 = field;
        c.e.d.a.b bVar = (c.e.d.a.b) field.getAnnotation(c.e.d.a.b.class);
        x<?> a3 = bVar != null ? this.f13563d.a(this.f13560a, jVar, aVar2, bVar) : null;
        boolean z3 = a3 != null;
        if (a3 == null) {
            a3 = jVar.a(aVar2);
        }
        C1015i iVar = new C1015i(this, str, z, z2, field, z3, a3, jVar, aVar, a2);
        return iVar;
    }

    public final Map<String, b> a(j jVar, c.e.d.c.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b2 = aVar.b();
        c.e.d.c.a<?> aVar2 = aVar;
        Class<? super Object> cls2 = cls;
        while (cls2 != Object.class) {
            Field[] declaredFields = cls2.getDeclaredFields();
            int length = declaredFields.length;
            boolean z = false;
            int i2 = 0;
            while (i2 < length) {
                Field field = declaredFields[i2];
                boolean a2 = a(field, true);
                boolean a3 = a(field, z);
                if (a2 || a3) {
                    this.f13564e.a(field);
                    Type a4 = C$Gson$Types.a(aVar2.b(), (Class<?>) cls2, field.getGenericType());
                    List<String> a5 = a(field);
                    int size = a5.size();
                    b bVar = null;
                    int i3 = 0;
                    while (i3 < size) {
                        String str = a5.get(i3);
                        boolean z2 = i3 != 0 ? false : a2;
                        String str2 = str;
                        b bVar2 = bVar;
                        int i4 = i3;
                        int i5 = size;
                        List<String> list = a5;
                        Field field2 = field;
                        bVar = bVar2 == null ? (b) linkedHashMap.put(str2, a(jVar, field, str2, c.e.d.c.a.a(a4), z2, a3)) : bVar2;
                        i3 = i4 + 1;
                        a2 = z2;
                        a5 = list;
                        size = i5;
                        field = field2;
                    }
                    if (bVar != null) {
                        throw new IllegalArgumentException(b2 + " declares multiple JSON fields named " + r14.f13567a);
                    }
                }
                i2++;
                z = false;
            }
            aVar2 = c.e.d.c.a.a(C$Gson$Types.a(aVar2.b(), (Class<?>) cls2, cls2.getGenericSuperclass()));
            cls2 = aVar2.a();
        }
        return linkedHashMap;
    }
}
