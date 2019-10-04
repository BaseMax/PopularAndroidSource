package com.raizlabs.android.dbflow.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.raizlabs.android.dbflow.c.b;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.d.d;
import com.raizlabs.android.dbflow.sql.language.x;
import com.raizlabs.android.dbflow.structure.b.a.e;
import com.raizlabs.android.dbflow.structure.b.a.f;
import com.raizlabs.android.dbflow.structure.b.a.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.f;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

public final class c<TModel> extends d implements d<TModel>, List<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f5099a = new Handler(Looper.myLooper());

    /* renamed from: b  reason: collision with root package name */
    private final b<TModel> f5100b;
    /* access modifiers changed from: private */
    public final g.c c;
    /* access modifiers changed from: private */
    public final g.b d;
    private boolean e;
    /* access modifiers changed from: private */
    public boolean f;
    /* access modifiers changed from: private */
    public boolean g;
    private final e.c<TModel> h;
    private final e.c<TModel> i;
    private final e.c<TModel> j;
    private final g.b k;
    private final g.c l;
    private final Runnable m;

    public static class a<TModel> {

        /* renamed from: a  reason: collision with root package name */
        final Class<TModel> f5107a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5108b;
        boolean c;
        Cursor d;
        boolean e;
        com.raizlabs.android.dbflow.sql.b.d<TModel> f;
        com.raizlabs.android.dbflow.structure.a.c<TModel, ?> g;
        g.c h;
        g.b i;

        /* synthetic */ a(b bVar, byte b2) {
            this(bVar);
        }

        private a(b<TModel> bVar) {
            this.e = true;
            this.f5107a = bVar.table();
            this.d = bVar.cursor();
            this.e = bVar.cachingEnabled();
            this.f = bVar.modelQueriable();
            this.g = bVar.modelCache();
        }

        public a(Class<TModel> cls) {
            this.e = true;
            this.f5107a = cls;
        }

        public a(com.raizlabs.android.dbflow.sql.b.d<TModel> dVar) {
            this(dVar.getTable());
            modelQueriable(dVar);
        }

        public final a<TModel> cursor(Cursor cursor) {
            this.d = cursor;
            return this;
        }

        public final a<TModel> modelQueriable(com.raizlabs.android.dbflow.sql.b.d<TModel> dVar) {
            this.f = dVar;
            return this;
        }

        public final a<TModel> transact(boolean z) {
            this.f5108b = z;
            return this;
        }

        public final a<TModel> modelCache(com.raizlabs.android.dbflow.structure.a.c<TModel, ?> cVar) {
            this.g = cVar;
            return this;
        }

        public final a<TModel> changeInTransaction(boolean z) {
            this.c = z;
            return this;
        }

        public final a<TModel> cacheModels(boolean z) {
            this.e = z;
            return this;
        }

        public final a<TModel> success(g.c cVar) {
            this.h = cVar;
            return this;
        }

        public final a<TModel> error(g.b bVar) {
            this.i = bVar;
            return this;
        }

        public final c<TModel> build() {
            return new c<>(this, (byte) 0);
        }
    }

    /* synthetic */ c(a aVar, byte b2) {
        this(aVar);
    }

    private c(a<TModel> aVar) {
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                c.this.a().save(tmodel);
            }
        };
        this.i = new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                c.this.a().update(tmodel);
            }
        };
        this.j = new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                c.this.a().delete(tmodel);
            }
        };
        this.k = new g.b() {
            public final void onError(g gVar, Throwable th) {
                if (c.this.d != null) {
                    c.this.d.onError(gVar, th);
                }
            }
        };
        this.l = new g.c() {
            public final void onSuccess(g gVar) {
                if (!c.this.isInTransaction) {
                    c.this.refreshAsync();
                } else {
                    boolean unused = c.this.f = true;
                }
                if (c.this.c != null) {
                    c.this.c.onSuccess(gVar);
                }
            }
        };
        this.m = new Runnable() {
            public final void run() {
                synchronized (this) {
                    boolean unused = c.this.g = false;
                }
                c.this.refresh();
            }
        };
        this.e = aVar.f5108b;
        this.f = aVar.c;
        this.c = aVar.h;
        this.d = aVar.i;
        this.f5100b = new b.a(aVar.f5107a).cursor(aVar.d).cacheModels(aVar.e).modelQueriable(aVar.f).modelCache(aVar.g).build();
    }

    public final void registerForContentChanges(Context context) {
        super.registerForContentChanges(context, (Class<?>) this.f5100b.table());
    }

    public final void addOnCursorRefreshListener(b.C0101b<TModel> bVar) {
        this.f5100b.addOnCursorRefreshListener(bVar);
    }

    public final void removeOnCursorRefreshListener(b.C0101b<TModel> bVar) {
        this.f5100b.removeOnCursorRefreshListener(bVar);
    }

    public final void registerForContentChanges(Context context, Class<?> cls) {
        throw new RuntimeException("This method is not to be used in the FlowQueryList. We should only ever receive notifications for one class here. Call registerForContentChanges(Context) instead");
    }

    public final void onChange(boolean z) {
        super.onChange(z);
        if (!this.isInTransaction) {
            refreshAsync();
        } else {
            this.f = true;
        }
    }

    public final void onChange(boolean z, Uri uri) {
        super.onChange(z, uri);
        if (!this.isInTransaction) {
            refreshAsync();
        } else {
            this.f = true;
        }
    }

    public final List<TModel> getCopy() {
        return this.f5100b.getAll();
    }

    public final b<TModel> cursorList() {
        return this.f5100b;
    }

    public final g.b error() {
        return this.d;
    }

    public final g.c success() {
        return this.c;
    }

    public final boolean changeInTransaction() {
        return this.f;
    }

    public final boolean transact() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final f<TModel> a() {
        return (f) this.f5100b.f5095a;
    }

    public final a<TModel> newBuilder() {
        return new a(this.f5100b, (byte) 0).success(this.c).error(this.d).changeInTransaction(this.f).transact(this.e);
    }

    public final void refresh() {
        this.f5100b.refresh();
    }

    public final void refreshAsync() {
        synchronized (this) {
            if (!this.g) {
                this.g = true;
                f5099a.post(this.m);
            }
        }
    }

    public final void endTransactionAndNotify() {
        if (this.f) {
            this.f = false;
            refresh();
        }
        super.endTransactionAndNotify();
    }

    public final void add(int i2, TModel tmodel) {
        add(tmodel);
    }

    public final boolean add(TModel tmodel) {
        if (tmodel == null) {
            return false;
        }
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(this.h).add(tmodel).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return true;
    }

    public final boolean addAll(int i2, Collection<? extends TModel> collection) {
        return addAll(collection);
    }

    public final boolean addAll(Collection<? extends TModel> collection) {
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(this.h).addAll(collection).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return true;
    }

    public final void clear() {
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new f.a(x.delete().from(this.f5100b.table())).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
    }

    public final boolean contains(Object obj) {
        if (obj == null || !this.f5100b.table().isAssignableFrom(obj.getClass())) {
            return false;
        }
        return this.f5100b.f5095a.exists(obj);
    }

    public final boolean containsAll(Collection<?> collection) {
        boolean z = !collection.isEmpty();
        if (!z) {
            return z;
        }
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return z;
    }

    public final long getCount() {
        return this.f5100b.getCount();
    }

    public final TModel getItem(long j2) {
        return this.f5100b.getItem(j2);
    }

    public final Cursor cursor() {
        return this.f5100b.cursor();
    }

    public final TModel get(int i2) {
        return this.f5100b.getItem((long) i2);
    }

    public final int indexOf(Object obj) {
        throw new UnsupportedOperationException("We cannot determine which index in the table this item exists at efficiently");
    }

    public final boolean isEmpty() {
        return this.f5100b.isEmpty();
    }

    public final a<TModel> iterator() {
        return new a<>(this);
    }

    public final a<TModel> iterator(int i2, long j2) {
        return new a<>(this, i2, j2);
    }

    public final int lastIndexOf(Object obj) {
        throw new UnsupportedOperationException("We cannot determine which index in the table this item exists at efficiently");
    }

    public final ListIterator<TModel> listIterator() {
        return new a(this);
    }

    public final ListIterator<TModel> listIterator(int i2) {
        return new a(this, i2);
    }

    public final TModel remove(int i2) {
        TModel item = this.f5100b.getItem((long) i2);
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(this.j).add(item).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return item;
    }

    public final boolean remove(Object obj) {
        if (!this.f5100b.table().isAssignableFrom(obj.getClass())) {
            return false;
        }
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(this.j).add(obj).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return true;
    }

    public final boolean removeAll(Collection<?> collection) {
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(this.j).addAll(collection).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return true;
    }

    public final boolean retainAll(Collection<?> collection) {
        List<TModel> all = this.f5100b.getAll();
        all.removeAll(collection);
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(all, this.j).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return true;
    }

    public final TModel set(int i2, TModel tmodel) {
        return set(tmodel);
    }

    public final TModel set(TModel tmodel) {
        g build = FlowManager.getDatabaseForTable(this.f5100b.table()).beginTransactionAsync(new e.a(this.i).add(tmodel).build()).error(this.k).success(this.l).build();
        if (this.e) {
            build.execute();
        } else {
            build.executeSync();
        }
        return tmodel;
    }

    public final int size() {
        return (int) this.f5100b.getCount();
    }

    public final List<TModel> subList(int i2, int i3) {
        return this.f5100b.getAll().subList(i2, i3);
    }

    public final Object[] toArray() {
        return this.f5100b.getAll().toArray();
    }

    public final <T> T[] toArray(T[] tArr) {
        return this.f5100b.getAll().toArray(tArr);
    }

    public final void close() {
        this.f5100b.close();
    }
}
