package com.bumptech.glide.load.c;

import com.bumptech.glide.Priority;
import com.bumptech.glide.f.c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;

public final class v<Model> implements n<Model, Model> {

    /* renamed from: a  reason: collision with root package name */
    private static final v<?> f2314a = new v<>();

    public static class a<Model> implements o<Model, Model> {

        /* renamed from: a  reason: collision with root package name */
        private static final a<?> f2315a = new a<>();

        public final void teardown() {
        }

        public static <T> a<T> getInstance() {
            return f2315a;
        }

        public final n<Model, Model> build(r rVar) {
            return v.getInstance();
        }
    }

    static class b<Model> implements d<Model> {

        /* renamed from: a  reason: collision with root package name */
        private final Model f2316a;

        public final void cancel() {
        }

        public final void cleanup() {
        }

        b(Model model) {
            this.f2316a = model;
        }

        public final void loadData(Priority priority, d.a<? super Model> aVar) {
            aVar.onDataReady(this.f2316a);
        }

        public final Class<Model> getDataClass() {
            return this.f2316a.getClass();
        }

        public final DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public final boolean handles(Model model) {
        return true;
    }

    public static <T> v<T> getInstance() {
        return f2314a;
    }

    public final n.a<Model> buildLoadData(Model model, int i, int i2, g gVar) {
        return new n.a<>(new c(model), new b(model));
    }
}
