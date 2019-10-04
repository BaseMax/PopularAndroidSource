package com.bumptech.glide.load.c;

import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class q<Model, Data> implements n<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final List<n<Model, Data>> f2298a;

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f2299b;

    static class a<Data> implements d<Data>, d.a<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final List<d<Data>> f2300a;

        /* renamed from: b  reason: collision with root package name */
        private final Pools.Pool<List<Throwable>> f2301b;
        private int c = 0;
        private Priority d;
        private d.a<? super Data> e;
        private List<Throwable> f;
        private boolean g;

        a(List<d<Data>> list, Pools.Pool<List<Throwable>> pool) {
            this.f2301b = pool;
            j.checkNotEmpty(list);
            this.f2300a = list;
        }

        public final void loadData(Priority priority, d.a<? super Data> aVar) {
            this.d = priority;
            this.e = aVar;
            this.f = this.f2301b.acquire();
            this.f2300a.get(this.c).loadData(priority, this);
            if (this.g) {
                cancel();
            }
        }

        public final void cleanup() {
            List<Throwable> list = this.f;
            if (list != null) {
                this.f2301b.release(list);
            }
            this.f = null;
            for (d<Data> cleanup : this.f2300a) {
                cleanup.cleanup();
            }
        }

        public final void cancel() {
            this.g = true;
            for (d<Data> cancel : this.f2300a) {
                cancel.cancel();
            }
        }

        public final Class<Data> getDataClass() {
            return this.f2300a.get(0).getDataClass();
        }

        public final DataSource getDataSource() {
            return this.f2300a.get(0).getDataSource();
        }

        public final void onDataReady(Data data) {
            if (data != null) {
                this.e.onDataReady(data);
            } else {
                a();
            }
        }

        public final void onLoadFailed(Exception exc) {
            ((List) j.checkNotNull(this.f)).add(exc);
            a();
        }

        private void a() {
            if (!this.g) {
                if (this.c < this.f2300a.size() - 1) {
                    this.c++;
                    loadData(this.d, this.e);
                    return;
                }
                j.checkNotNull(this.f);
                this.e.onLoadFailed(new com.bumptech.glide.load.b.q("Fetch failed", (List<Throwable>) new ArrayList(this.f)));
            }
        }
    }

    q(List<n<Model, Data>> list, Pools.Pool<List<Throwable>> pool) {
        this.f2298a = list;
        this.f2299b = pool;
    }

    public final n.a<Data> buildLoadData(Model model, int i, int i2, g gVar) {
        int size = this.f2298a.size();
        ArrayList arrayList = new ArrayList(size);
        com.bumptech.glide.load.d dVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = this.f2298a.get(i3);
            if (nVar.handles(model)) {
                n.a buildLoadData = nVar.buildLoadData(model, i, i2, gVar);
                if (buildLoadData != null) {
                    dVar = buildLoadData.sourceKey;
                    arrayList.add(buildLoadData.fetcher);
                }
            }
        }
        if (arrayList.isEmpty() || dVar == null) {
            return null;
        }
        return new n.a<>(dVar, new a(arrayList, this.f2299b));
    }

    public final boolean handles(Model model) {
        for (n<Model, Data> handles : this.f2298a) {
            if (handles.handles(model)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f2298a.toArray()) + '}';
    }
}
