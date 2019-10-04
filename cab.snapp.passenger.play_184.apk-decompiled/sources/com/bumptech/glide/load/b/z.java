package com.bumptech.glide.load.b;

import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.b.f;
import com.bumptech.glide.load.c.n;
import java.util.Collections;
import java.util.List;

final class z implements d.a<Object>, f, f.a {

    /* renamed from: a  reason: collision with root package name */
    private final g<?> f2249a;

    /* renamed from: b  reason: collision with root package name */
    private final f.a f2250b;
    private int c;
    private c d;
    private Object e;
    private volatile n.a<?> f;
    private d g;

    z(g<?> gVar, f.a aVar) {
        this.f2249a = gVar;
        this.f2250b = aVar;
    }

    /* JADX INFO: finally extract failed */
    public final boolean startNext() {
        Object obj = this.e;
        if (obj != null) {
            this.e = null;
            long logTime = com.bumptech.glide.g.f.getLogTime();
            try {
                a sourceEncoder = this.f2249a.f2192a.getRegistry().getSourceEncoder(obj);
                e eVar = new e(sourceEncoder, obj, this.f2249a.g);
                this.g = new d(this.f.sourceKey, this.f2249a.j);
                this.f2249a.b().put(this.g, eVar);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    StringBuilder sb = new StringBuilder("Finished encoding source to cache, key: ");
                    sb.append(this.g);
                    sb.append(", data: ");
                    sb.append(obj);
                    sb.append(", encoder: ");
                    sb.append(sourceEncoder);
                    sb.append(", duration: ");
                    sb.append(com.bumptech.glide.g.f.getElapsedMillis(logTime));
                }
                this.f.fetcher.cleanup();
                this.d = new c(Collections.singletonList(this.f.sourceKey), this.f2249a, this);
            } catch (Throwable th) {
                this.f.fetcher.cleanup();
                throw th;
            }
        }
        c cVar = this.d;
        if (cVar != null && cVar.startNext()) {
            return true;
        }
        this.d = null;
        this.f = null;
        boolean z = false;
        while (!z) {
            if (!(this.c < this.f2249a.c().size())) {
                break;
            }
            List<n.a<?>> c2 = this.f2249a.c();
            int i = this.c;
            this.c = i + 1;
            this.f = c2.get(i);
            if (this.f != null && (this.f2249a.l.isDataCacheable(this.f.fetcher.getDataSource()) || this.f2249a.a((Class<?>) this.f.fetcher.getDataClass()))) {
                this.f.fetcher.loadData(this.f2249a.k, this);
                z = true;
            }
        }
        return z;
    }

    public final void cancel() {
        n.a<?> aVar = this.f;
        if (aVar != null) {
            aVar.fetcher.cancel();
        }
    }

    public final void onDataReady(Object obj) {
        j jVar = this.f2249a.l;
        if (obj == null || !jVar.isDataCacheable(this.f.fetcher.getDataSource())) {
            this.f2250b.onDataFetcherReady(this.f.sourceKey, obj, this.f.fetcher, this.f.fetcher.getDataSource(), this.g);
            return;
        }
        this.e = obj;
        this.f2250b.reschedule();
    }

    public final void onLoadFailed(Exception exc) {
        this.f2250b.onDataFetcherFailed(this.g, exc, this.f.fetcher, this.f.fetcher.getDataSource());
    }

    public final void reschedule() {
        throw new UnsupportedOperationException();
    }

    public final void onDataFetcherReady(com.bumptech.glide.load.d dVar, Object obj, d<?> dVar2, DataSource dataSource, com.bumptech.glide.load.d dVar3) {
        this.f2250b.onDataFetcherReady(dVar, obj, dVar2, this.f.fetcher.getDataSource(), dVar);
    }

    public final void onDataFetcherFailed(com.bumptech.glide.load.d dVar, Exception exc, d<?> dVar2, DataSource dataSource) {
        this.f2250b.onDataFetcherFailed(dVar, exc, dVar2, this.f.fetcher.getDataSource());
    }
}
