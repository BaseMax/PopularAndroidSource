package com.raizlabs.android.dbflow.structure.a;

public abstract class c<TModel, CacheClass> {

    /* renamed from: a  reason: collision with root package name */
    private CacheClass f5199a;

    public abstract void addModel(Object obj, TModel tmodel);

    public abstract void clear();

    public abstract TModel get(Object obj);

    public abstract TModel removeModel(Object obj);

    public abstract void setCacheSize(int i);

    public c(CacheClass cacheclass) {
        this.f5199a = cacheclass;
    }

    public CacheClass getCache() {
        return this.f5199a;
    }
}
