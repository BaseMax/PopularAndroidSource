package com.raizlabs.android.dbflow.structure.a;

public final class d<TModel> extends c<TModel, b<Long, TModel>> {
    public static <TModel> d<TModel> newInstance(int i) {
        if (i <= 0) {
            i = 25;
        }
        return new d<>(i);
    }

    private d(int i) {
        super(new b(i));
    }

    public final void addModel(Object obj, TModel tmodel) {
        if (obj instanceof Number) {
            synchronized (((b) getCache())) {
                ((b) getCache()).put(Long.valueOf(((Number) obj).longValue()), tmodel);
            }
            return;
        }
        throw new IllegalArgumentException("A ModelLruCache must use an id that can cast toa Number to convert it into a long");
    }

    public final TModel removeModel(Object obj) {
        TModel remove;
        if (obj instanceof Number) {
            synchronized (((b) getCache())) {
                remove = ((b) getCache()).remove(Long.valueOf(((Number) obj).longValue()));
            }
            return remove;
        }
        throw new IllegalArgumentException("A ModelLruCache uses an id that can cast toa Number to convert it into a long");
    }

    public final void clear() {
        synchronized (((b) getCache())) {
            ((b) getCache()).evictAll();
        }
    }

    public final void setCacheSize(int i) {
        ((b) getCache()).resize(i);
    }

    public final TModel get(Object obj) {
        if (obj instanceof Number) {
            return ((b) getCache()).get(Long.valueOf(((Number) obj).longValue()));
        }
        throw new IllegalArgumentException("A ModelLruCache must use an id that can cast toa Number to convert it into a long");
    }
}
