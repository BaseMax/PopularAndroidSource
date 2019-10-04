package com.bumptech.glide.g.a;

import android.util.Log;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final d<Object> f2063a = new d<Object>() {
        public final void reset(Object obj) {
        }
    };

    /* renamed from: com.bumptech.glide.g.a.a$a  reason: collision with other inner class name */
    public interface C0038a<T> {
        T create();
    }

    static final class b<T> implements Pools.Pool<T> {

        /* renamed from: a  reason: collision with root package name */
        private final C0038a<T> f2064a;

        /* renamed from: b  reason: collision with root package name */
        private final d<T> f2065b;
        private final Pools.Pool<T> c;

        b(Pools.Pool<T> pool, C0038a<T> aVar, d<T> dVar) {
            this.c = pool;
            this.f2064a = aVar;
            this.f2065b = dVar;
        }

        public final T acquire() {
            T acquire = this.c.acquire();
            if (acquire == null) {
                acquire = this.f2064a.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    new StringBuilder("Created new ").append(acquire.getClass());
                }
            }
            if (acquire instanceof c) {
                ((c) acquire).getVerifier().setRecycled(false);
            }
            return acquire;
        }

        public final boolean release(T t) {
            if (t instanceof c) {
                ((c) t).getVerifier().setRecycled(true);
            }
            this.f2065b.reset(t);
            return this.c.release(t);
        }
    }

    public interface c {
        c getVerifier();
    }

    public interface d<T> {
        void reset(T t);
    }

    private a() {
    }

    public static <T extends c> Pools.Pool<T> simple(int i, C0038a<T> aVar) {
        return a(new Pools.SimplePool(i), aVar);
    }

    public static <T extends c> Pools.Pool<T> threadSafe(int i, C0038a<T> aVar) {
        return a(new Pools.SynchronizedPool(i), aVar);
    }

    public static <T> Pools.Pool<List<T>> threadSafeList() {
        return threadSafeList(20);
    }

    public static <T> Pools.Pool<List<T>> threadSafeList(int i) {
        return a(new Pools.SynchronizedPool(i), new C0038a<List<T>>() {
            public final List<T> create() {
                return new ArrayList();
            }
        }, new d<List<T>>() {
            public final void reset(List<T> list) {
                list.clear();
            }
        });
    }

    private static <T> Pools.Pool<T> a(Pools.Pool<T> pool, C0038a<T> aVar, d<T> dVar) {
        return new b(pool, aVar, dVar);
    }

    private static <T extends c> Pools.Pool<T> a(Pools.Pool<T> pool, C0038a<T> aVar) {
        return a(pool, aVar, f2063a);
    }
}
