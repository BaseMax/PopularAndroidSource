package com.google.gson.internal.bind;

import com.google.gson.JsonElement;
import com.google.gson.e;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.internal.k;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;

public final class TreeTypeAdapter<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final e f4144a;

    /* renamed from: b  reason: collision with root package name */
    private final o<T> f4145b;
    private final i<T> c;
    private final com.google.gson.b.a<T> d;
    private final r e;
    private final TreeTypeAdapter<T>.a f = new a(this, (byte) 0);
    private q<T> g;

    static final class SingleTypeFactory implements r {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.gson.b.a<?> f4146a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f4147b;
        private final Class<?> c;
        private final o<?> d;
        private final i<?> e;

        SingleTypeFactory(Object obj, com.google.gson.b.a<?> aVar, boolean z, Class<?> cls) {
            i<?> iVar = null;
            this.d = obj instanceof o ? (o) obj : null;
            this.e = obj instanceof i ? (i) obj : iVar;
            com.google.gson.internal.a.checkArgument((this.d == null && this.e == null) ? false : true);
            this.f4146a = aVar;
            this.f4147b = z;
            this.c = cls;
        }

        public final <T> q<T> create(e eVar, com.google.gson.b.a<T> aVar) {
            boolean z;
            com.google.gson.b.a<?> aVar2 = this.f4146a;
            if (aVar2 != null) {
                z = aVar2.equals(aVar) || (this.f4147b && this.f4146a.getType() == aVar.getRawType());
            } else {
                z = this.c.isAssignableFrom(aVar.getRawType());
            }
            if (!z) {
                return null;
            }
            TreeTypeAdapter treeTypeAdapter = new TreeTypeAdapter(this.d, this.e, eVar, aVar, this);
            return treeTypeAdapter;
        }
    }

    final class a implements h, n {
        private a() {
        }

        /* synthetic */ a(TreeTypeAdapter treeTypeAdapter, byte b2) {
            this();
        }

        public final JsonElement serialize(Object obj) {
            return TreeTypeAdapter.this.f4144a.toJsonTree(obj);
        }

        public final JsonElement serialize(Object obj, Type type) {
            return TreeTypeAdapter.this.f4144a.toJsonTree(obj, type);
        }

        public final <R> R deserialize(JsonElement jsonElement, Type type) throws l {
            return TreeTypeAdapter.this.f4144a.fromJson(jsonElement, type);
        }
    }

    public TreeTypeAdapter(o<T> oVar, i<T> iVar, e eVar, com.google.gson.b.a<T> aVar, r rVar) {
        this.f4145b = oVar;
        this.c = iVar;
        this.f4144a = eVar;
        this.d = aVar;
        this.e = rVar;
    }

    public final T read(JsonReader jsonReader) throws IOException {
        if (this.c == null) {
            return a().read(jsonReader);
        }
        JsonElement parse = k.parse(jsonReader);
        if (parse.isJsonNull()) {
            return null;
        }
        return this.c.deserialize(parse, this.d.getType(), this.f);
    }

    public final void write(JsonWriter jsonWriter, T t) throws IOException {
        o<T> oVar = this.f4145b;
        if (oVar == null) {
            a().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            k.write(oVar.serialize(t, this.d.getType(), this.f), jsonWriter);
        }
    }

    private q<T> a() {
        q<T> qVar = this.g;
        if (qVar != null) {
            return qVar;
        }
        q<T> delegateAdapter = this.f4144a.getDelegateAdapter(this.e, this.d);
        this.g = delegateAdapter;
        return delegateAdapter;
    }

    public static r newFactory(com.google.gson.b.a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, false, null);
    }

    public static r newFactoryWithMatchRawType(com.google.gson.b.a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, aVar.getType() == aVar.getRawType(), null);
    }

    public static r newTypeHierarchyFactory(Class<?> cls, Object obj) {
        return new SingleTypeFactory(obj, null, false, cls);
    }
}
