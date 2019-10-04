package com.bumptech.glide.load.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.b.f;
import com.bumptech.glide.load.c.n;
import java.io.File;
import java.util.List;

final class c implements d.a<Object>, f {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.bumptech.glide.load.d> f2170a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f2171b;
    private final f.a c;
    private int d;
    private com.bumptech.glide.load.d e;
    private List<n<File, ?>> f;
    private int g;
    private volatile n.a<?> h;
    private File i;

    c(g<?> gVar, f.a aVar) {
        this(gVar.d(), gVar, aVar);
    }

    c(List<com.bumptech.glide.load.d> list, g<?> gVar, f.a aVar) {
        this.d = -1;
        this.f2170a = list;
        this.f2171b = gVar;
        this.c = aVar;
    }

    public final boolean startNext() {
        while (true) {
            boolean z = false;
            if (this.f == null || !a()) {
                this.d++;
                if (this.d >= this.f2170a.size()) {
                    return false;
                }
                com.bumptech.glide.load.d dVar = this.f2170a.get(this.d);
                this.i = this.f2171b.b().get(new d(dVar, this.f2171b.j));
                File file = this.i;
                if (file != null) {
                    this.e = dVar;
                    this.f = this.f2171b.a(file);
                    this.g = 0;
                }
            } else {
                this.h = null;
                while (!z && a()) {
                    List<n<File, ?>> list = this.f;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    this.h = list.get(i2).buildLoadData(this.i, this.f2171b.c, this.f2171b.d, this.f2171b.g);
                    if (this.h != null && this.f2171b.a((Class<?>) this.h.fetcher.getDataClass())) {
                        this.h.fetcher.loadData(this.f2171b.k, this);
                        z = true;
                    }
                }
                return z;
            }
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
        this.c.onDataFetcherReady(this.e, obj, this.h.fetcher, DataSource.DATA_DISK_CACHE, this.e);
    }

    public final void onLoadFailed(Exception exc) {
        this.c.onDataFetcherFailed(this.e, exc, this.h.fetcher, DataSource.DATA_DISK_CACHE);
    }
}
