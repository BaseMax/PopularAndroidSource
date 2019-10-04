package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.a;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.i;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private Excluder f4115a = Excluder.DEFAULT;

    /* renamed from: b  reason: collision with root package name */
    private LongSerializationPolicy f4116b = LongSerializationPolicy.DEFAULT;
    private d c = FieldNamingPolicy.IDENTITY;
    private final Map<Type, g<?>> d = new HashMap();
    private final List<r> e = new ArrayList();
    private final List<r> f = new ArrayList();
    private boolean g = false;
    private String h;
    private int i = 2;
    private int j = 2;
    private boolean k = false;
    private boolean l = false;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;

    public f() {
    }

    f(e eVar) {
        this.f4115a = eVar.f4109b;
        this.c = eVar.c;
        this.d.putAll(eVar.d);
        this.g = eVar.e;
        this.k = eVar.f;
        this.o = eVar.g;
        this.m = eVar.h;
        this.n = eVar.i;
        this.p = eVar.j;
        this.l = eVar.k;
        this.f4116b = eVar.o;
        this.h = eVar.l;
        this.i = eVar.m;
        this.j = eVar.n;
        this.e.addAll(eVar.p);
        this.f.addAll(eVar.q);
    }

    public final f setVersion(double d2) {
        this.f4115a = this.f4115a.withVersion(d2);
        return this;
    }

    public final f excludeFieldsWithModifiers(int... iArr) {
        this.f4115a = this.f4115a.withModifiers(iArr);
        return this;
    }

    public final f generateNonExecutableJson() {
        this.o = true;
        return this;
    }

    public final f excludeFieldsWithoutExposeAnnotation() {
        this.f4115a = this.f4115a.excludeFieldsWithoutExposeAnnotation();
        return this;
    }

    public final f serializeNulls() {
        this.g = true;
        return this;
    }

    public final f enableComplexMapKeySerialization() {
        this.k = true;
        return this;
    }

    public final f disableInnerClassSerialization() {
        this.f4115a = this.f4115a.disableInnerClassSerialization();
        return this;
    }

    public final f setLongSerializationPolicy(LongSerializationPolicy longSerializationPolicy) {
        this.f4116b = longSerializationPolicy;
        return this;
    }

    public final f setFieldNamingPolicy(FieldNamingPolicy fieldNamingPolicy) {
        this.c = fieldNamingPolicy;
        return this;
    }

    public final f setFieldNamingStrategy(d dVar) {
        this.c = dVar;
        return this;
    }

    public final f setExclusionStrategies(b... bVarArr) {
        for (b withExclusionStrategy : bVarArr) {
            this.f4115a = this.f4115a.withExclusionStrategy(withExclusionStrategy, true, true);
        }
        return this;
    }

    public final f addSerializationExclusionStrategy(b bVar) {
        this.f4115a = this.f4115a.withExclusionStrategy(bVar, true, false);
        return this;
    }

    public final f addDeserializationExclusionStrategy(b bVar) {
        this.f4115a = this.f4115a.withExclusionStrategy(bVar, false, true);
        return this;
    }

    public final f setPrettyPrinting() {
        this.n = true;
        return this;
    }

    public final f setLenient() {
        this.p = true;
        return this;
    }

    public final f disableHtmlEscaping() {
        this.m = false;
        return this;
    }

    public final f setDateFormat(String str) {
        this.h = str;
        return this;
    }

    public final f setDateFormat(int i2) {
        this.i = i2;
        this.h = null;
        return this;
    }

    public final f setDateFormat(int i2, int i3) {
        this.i = i2;
        this.j = i3;
        this.h = null;
        return this;
    }

    public final f registerTypeAdapter(Type type, Object obj) {
        boolean z = obj instanceof o;
        a.checkArgument(z || (obj instanceof i) || (obj instanceof g) || (obj instanceof q));
        if (obj instanceof g) {
            this.d.put(type, (g) obj);
        }
        if (z || (obj instanceof i)) {
            this.e.add(TreeTypeAdapter.newFactoryWithMatchRawType(com.google.gson.b.a.get(type), obj));
        }
        if (obj instanceof q) {
            this.e.add(i.newFactory(com.google.gson.b.a.get(type), (q) obj));
        }
        return this;
    }

    public final f registerTypeAdapterFactory(r rVar) {
        this.e.add(rVar);
        return this;
    }

    public final f registerTypeHierarchyAdapter(Class<?> cls, Object obj) {
        boolean z = obj instanceof o;
        a.checkArgument(z || (obj instanceof i) || (obj instanceof q));
        if ((obj instanceof i) || z) {
            this.f.add(TreeTypeAdapter.newTypeHierarchyFactory(cls, obj));
        }
        if (obj instanceof q) {
            this.e.add(i.newTypeHierarchyFactory(cls, (q) obj));
        }
        return this;
    }

    public final f serializeSpecialFloatingPointValues() {
        this.l = true;
        return this;
    }

    public final e create() {
        a aVar;
        a aVar2;
        a aVar3;
        ArrayList arrayList = new ArrayList(this.e.size() + this.f.size() + 3);
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        String str = this.h;
        int i2 = this.i;
        int i3 = this.j;
        if (str == null || "".equals(str.trim())) {
            if (!(i2 == 2 || i3 == 2)) {
                aVar3 = new a(Date.class, i2, i3);
                a aVar4 = new a(Timestamp.class, i2, i3);
                a aVar5 = new a(java.sql.Date.class, i2, i3);
                aVar2 = aVar4;
                aVar = aVar5;
            }
            e eVar = new e(this.f4115a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.f4116b, this.h, this.i, this.j, this.e, this.f, arrayList);
            return eVar;
        }
        a aVar6 = new a((Class<? extends Date>) Date.class, str);
        aVar2 = new a((Class<? extends Date>) Timestamp.class, str);
        aVar = new a((Class<? extends Date>) java.sql.Date.class, str);
        aVar3 = aVar6;
        arrayList.add(i.newFactory(Date.class, aVar3));
        arrayList.add(i.newFactory(Timestamp.class, aVar2));
        arrayList.add(i.newFactory(java.sql.Date.class, aVar));
        e eVar2 = new e(this.f4115a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.f4116b, this.h, this.i, this.j, this.e, this.f, arrayList);
        return eVar2;
    }
}
