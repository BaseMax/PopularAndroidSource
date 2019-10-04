package com.raizlabs.android.dbflow.c;

import android.database.Cursor;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b.d;
import com.raizlabs.android.dbflow.sql.language.x;
import com.raizlabs.android.dbflow.structure.a.c;
import com.raizlabs.android.dbflow.structure.b.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class b<TModel> implements d<TModel>, Iterable<TModel> {
    public static final int DEFAULT_CACHE_SIZE = 50;
    public static final int MIN_CACHE_SIZE = 20;

    /* renamed from: a  reason: collision with root package name */
    com.raizlabs.android.dbflow.structure.b<TModel> f5095a;

    /* renamed from: b  reason: collision with root package name */
    private j f5096b;
    private Class<TModel> c;
    private c<TModel, ?> d;
    private boolean e;
    private d<TModel> f;
    private final Set<C0101b<TModel>> g;

    public static class a<TModel> {

        /* renamed from: a  reason: collision with root package name */
        final Class<TModel> f5097a;

        /* renamed from: b  reason: collision with root package name */
        j f5098b;
        d<TModel> c;
        boolean d = true;
        c<TModel, ?> e;

        public a(Class<TModel> cls) {
            this.f5097a = cls;
        }

        public a(d<TModel> dVar) {
            this.f5097a = dVar.getTable();
            modelQueriable(dVar);
        }

        public final a<TModel> cursor(Cursor cursor) {
            if (cursor != null) {
                this.f5098b = j.from(cursor);
            }
            return this;
        }

        public final a<TModel> modelQueriable(d<TModel> dVar) {
            this.c = dVar;
            return this;
        }

        public final a<TModel> cacheModels(boolean z) {
            this.d = z;
            return this;
        }

        public final a<TModel> modelCache(c<TModel, ?> cVar) {
            this.e = cVar;
            if (cVar != null) {
                cacheModels(true);
            }
            return this;
        }

        public final b<TModel> build() {
            return new b<>(this, (byte) 0);
        }
    }

    /* renamed from: com.raizlabs.android.dbflow.c.b$b  reason: collision with other inner class name */
    public interface C0101b<TModel> {
        void onCursorRefreshed(b<TModel> bVar);
    }

    /* synthetic */ b(a aVar, byte b2) {
        this(aVar);
    }

    private b(a<TModel> aVar) {
        this.g = new HashSet();
        this.c = aVar.f5097a;
        this.f = aVar.c;
        if (aVar.c == null) {
            this.f5096b = aVar.f5098b;
            if (this.f5096b == null) {
                this.f = x.select(new com.raizlabs.android.dbflow.sql.language.a.a[0]).from(this.c);
                this.f5096b = this.f.query();
            }
        } else {
            this.f5096b = aVar.c.query();
        }
        this.e = aVar.d;
        if (this.e) {
            this.d = aVar.e;
            if (this.d == null) {
                this.d = com.raizlabs.android.dbflow.structure.a.d.newInstance(0);
            }
        }
        this.f5095a = FlowManager.getInstanceAdapter(aVar.f5097a);
        a(this.e);
    }

    public final a<TModel> iterator() {
        return new a<>(this);
    }

    public final a<TModel> iterator(int i, long j) {
        return new a<>(this, i, j);
    }

    public final void addOnCursorRefreshListener(C0101b<TModel> bVar) {
        synchronized (this.g) {
            this.g.add(bVar);
        }
    }

    public final void removeOnCursorRefreshListener(C0101b<TModel> bVar) {
        synchronized (this.g) {
            this.g.remove(bVar);
        }
    }

    private void a(boolean z) {
        this.e = z;
        if (!z) {
            clearCache();
        }
    }

    public final void clearCache() {
        if (this.e) {
            this.d.clear();
        }
    }

    public final synchronized void refresh() {
        b();
        if (this.f5096b != null) {
            this.f5096b.close();
        }
        if (this.f != null) {
            this.f5096b = this.f.query();
            if (this.e) {
                this.d.clear();
                a(true);
            }
            synchronized (this.g) {
                for (C0101b<TModel> onCursorRefreshed : this.g) {
                    onCursorRefreshed.onCursorRefreshed(this);
                }
            }
        } else {
            throw new IllegalStateException("Cannot refresh this FlowCursorList. This list was instantiated from a Cursor. Once closed, we cannot reopen it. Construct a new instance and swap with this instance.");
        }
    }

    public final d<TModel> modelQueriable() {
        return this.f;
    }

    public final TModel getItem(long j) {
        a();
        b();
        if (this.e) {
            TModel tmodel = this.d.get(Long.valueOf(j));
            if (tmodel == null) {
                j jVar = this.f5096b;
                if (jVar != null && jVar.moveToPosition((int) j)) {
                    TModel convertToData = this.f5095a.getSingleModelLoader().convertToData(this.f5096b, null, false);
                    this.d.addModel(Long.valueOf(j), convertToData);
                    return convertToData;
                }
            }
            return tmodel;
        }
        j jVar2 = this.f5096b;
        if (jVar2 == null || !jVar2.moveToPosition((int) j)) {
            return null;
        }
        return this.f5095a.getSingleModelLoader().convertToData(this.f5096b, null, false);
    }

    public final List<TModel> getAll() {
        a();
        b();
        if (this.e) {
            ArrayList arrayList = new ArrayList();
            a it = iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return arrayList;
        } else if (this.f5096b == null) {
            return new ArrayList();
        } else {
            return FlowManager.getModelAdapter(this.c).getListModelLoader().convertToData(this.f5096b, (List) null);
        }
    }

    public final boolean isEmpty() {
        a();
        b();
        return getCount() == 0;
    }

    public final long getCount() {
        a();
        b();
        j jVar = this.f5096b;
        if (jVar != null) {
            return (long) jVar.getCount();
        }
        return 0;
    }

    public final c<TModel, ?> modelCache() {
        return this.d;
    }

    public final boolean cachingEnabled() {
        return this.e;
    }

    public final void close() {
        b();
        j jVar = this.f5096b;
        if (jVar != null) {
            jVar.close();
        }
        this.f5096b = null;
    }

    public final Cursor cursor() {
        a();
        b();
        return this.f5096b;
    }

    public final Class<TModel> table() {
        return this.c;
    }

    private void a() {
        j jVar = this.f5096b;
        if (jVar != null && jVar.isClosed()) {
            throw new IllegalStateException("Cursor has been closed for FlowCursorList");
        }
    }

    private void b() {
        if (this.f5096b == null) {
            FlowLog.log(FlowLog.Level.W, "Cursor was null for FlowCursorList");
        }
    }

    public final a<TModel> newBuilder() {
        return new a(this.c).modelQueriable(this.f).cursor(this.f5096b).cacheModels(this.e).modelCache(this.d);
    }
}
