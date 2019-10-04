package com.bumptech.glide.load.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.b.f;
import com.bumptech.glide.load.c.n;
import java.io.File;
import java.util.List;

final class w implements d.a<Object>, f {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f2243a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f2244b;
    private int c;
    private int d = -1;
    private com.bumptech.glide.load.d e;
    private List<n<File, ?>> f;
    private int g;
    private volatile n.a<?> h;
    private File i;
    private x j;

    w(g<?> gVar, f.a aVar) {
        this.f2244b = gVar;
        this.f2243a = aVar;
    }

    public final boolean startNext() {
        List<com.bumptech.glide.load.d> d2 = this.f2244b.d();
        boolean z = false;
        if (d2.isEmpty()) {
            return false;
        }
        g<?> gVar = this.f2244b;
        List<Class<?>> registeredResourceClasses = gVar.f2192a.getRegistry().getRegisteredResourceClasses(gVar.f2193b.getClass(), gVar.e, gVar.i);
        if (!registeredResourceClasses.isEmpty()) {
            while (true) {
                if (this.f == null || !a()) {
                    this.d++;
                    if (this.d >= registeredResourceClasses.size()) {
                        this.c++;
                        if (this.c >= d2.size()) {
                            return false;
                        }
                        this.d = 0;
                    }
                    com.bumptech.glide.load.d dVar = d2.get(this.c);
                    Class cls = registeredResourceClasses.get(this.d);
                    x xVar = new x(this.f2244b.f2192a.getArrayPool(), dVar, this.f2244b.j, this.f2244b.c, this.f2244b.d, this.f2244b.c(cls), cls, this.f2244b.g);
                    this.j = xVar;
                    this.i = this.f2244b.b().get(this.j);
                    File file = this.i;
                    if (file != null) {
                        this.e = dVar;
                        this.f = this.f2244b.a(file);
                        this.g = 0;
                    }
                } else {
                    this.h = null;
                    while (!z && a()) {
                        List<n<File, ?>> list = this.f;
                        int i2 = this.g;
                        this.g = i2 + 1;
                        this.h = list.get(i2).buildLoadData(this.i, this.f2244b.c, this.f2244b.d, this.f2244b.g);
                        if (this.h != null && this.f2244b.a((Class<?>) this.h.fetcher.getDataClass())) {
                            this.h.fetcher.loadData(this.f2244b.k, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
        } else if (File.class.equals(this.f2244b.i)) {
            return false;
        } else {
            throw new IllegalStateException("Failed to find any load path from " + this.f2244b.f2193b.getClass() + " to " + this.f2244b.i);
        }
    }

    private boolean a() {
        return this.g < this.f.size();
    }

    public final void cancel() {
        n.a<?> aVar = this.h;
        if (aVar != null) {
            aVar.fetcher.cancel();
        }
    }

    public final void onDataReady(Object obj) {
        this.f2243a.onDataFetcherReady(this.e, obj, this.h.fetcher, DataSource.RESOURCE_DISK_CACHE, this.j);
    }

    public final void onLoadFailed(Exception exc) {
        this.f2243a.onDataFetcherFailed(this.j, exc, this.h.fetcher, DataSource.RESOURCE_DISK_CACHE);
    }
}
