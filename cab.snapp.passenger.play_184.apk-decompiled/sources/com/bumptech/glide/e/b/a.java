package com.bumptech.glide.e.b;

import com.bumptech.glide.e.b.b;
import com.bumptech.glide.load.DataSource;

public final class a<R> implements b<R> {

    /* renamed from: a  reason: collision with root package name */
    static final a<?> f2034a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private static final c<?> f2035b = new C0036a();

    /* renamed from: com.bumptech.glide.e.b.a$a  reason: collision with other inner class name */
    public static class C0036a<R> implements c<R> {
        public final b<R> build(DataSource dataSource, boolean z) {
            return a.f2034a;
        }
    }

    public final boolean transition(Object obj, b.a aVar) {
        return false;
    }

    public static <R> c<R> getFactory() {
        return f2035b;
    }

    public static <R> b<R> get() {
        return f2034a;
    }
}
