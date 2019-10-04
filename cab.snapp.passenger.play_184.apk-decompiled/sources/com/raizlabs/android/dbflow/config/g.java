package com.raizlabs.android.dbflow.config;

import com.raizlabs.android.dbflow.sql.b.f;
import com.raizlabs.android.dbflow.sql.c.b;

public final class g<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<TModel> f5116a;

    /* renamed from: b  reason: collision with root package name */
    private final b<TModel> f5117b;
    private final f<TModel> c;
    private final com.raizlabs.android.dbflow.sql.b.b<TModel> d;

    public static final class a<TModel> {

        /* renamed from: a  reason: collision with root package name */
        final Class<TModel> f5118a;

        /* renamed from: b  reason: collision with root package name */
        b<TModel> f5119b;
        f<TModel> c;
        com.raizlabs.android.dbflow.sql.b.b<TModel> d;

        public a(Class<TModel> cls) {
            this.f5118a = cls;
        }

        public final a<TModel> modelAdapterModelSaver(b<TModel> bVar) {
            this.f5119b = bVar;
            return this;
        }

        public final a<TModel> singleModelLoader(f<TModel> fVar) {
            this.c = fVar;
            return this;
        }

        public final a<TModel> listModelLoader(com.raizlabs.android.dbflow.sql.b.b<TModel> bVar) {
            this.d = bVar;
            return this;
        }

        public final g build() {
            return new g(this);
        }
    }

    public static <TModel> a<TModel> builder(Class<TModel> cls) {
        return new a<>(cls);
    }

    g(a<TModel> aVar) {
        this.f5116a = aVar.f5118a;
        this.f5117b = aVar.f5119b;
        this.c = aVar.c;
        this.d = aVar.d;
    }

    public final Class<?> tableClass() {
        return this.f5116a;
    }

    public final b<TModel> modelSaver() {
        return this.f5117b;
    }

    public final com.raizlabs.android.dbflow.sql.b.b<TModel> listModelLoader() {
        return this.d;
    }

    public final f<TModel> singleModelLoader() {
        return this.c;
    }
}
