package com.raizlabs.android.dbflow.structure.b.a;

import com.raizlabs.android.dbflow.sql.language.i;
import java.util.List;

public final class f<TResult> implements c {

    /* renamed from: a  reason: collision with root package name */
    final com.raizlabs.android.dbflow.sql.b.d<TResult> f5209a;

    /* renamed from: b  reason: collision with root package name */
    final b<TResult> f5210b;
    final c<TResult> c;
    final d<TResult> d;
    final boolean e;

    public static final class a<TResult> {

        /* renamed from: a  reason: collision with root package name */
        final com.raizlabs.android.dbflow.sql.b.d<TResult> f5217a;

        /* renamed from: b  reason: collision with root package name */
        b<TResult> f5218b;
        c<TResult> c;
        d<TResult> d;
        boolean e;

        public a(com.raizlabs.android.dbflow.sql.b.d<TResult> dVar) {
            this.f5217a = dVar;
        }

        public final a<TResult> queryResult(b<TResult> bVar) {
            this.f5218b = bVar;
            return this;
        }

        public final a<TResult> queryListResult(c<TResult> cVar) {
            this.c = cVar;
            return this;
        }

        public final a<TResult> querySingleResult(d<TResult> dVar) {
            this.d = dVar;
            return this;
        }

        public final a<TResult> runResultCallbacksOnSameThread(boolean z) {
            this.e = z;
            return this;
        }

        public final f<TResult> build() {
            return new f<>(this);
        }
    }

    public interface b<TResult> {
        void onQueryResult(f<TResult> fVar, i<TResult> iVar);
    }

    public interface c<TResult> {
        void onListQueryResult(f fVar, List<TResult> list);
    }

    public interface d<TResult> {
        void onSingleQueryResult(f fVar, TResult tresult);
    }

    f(a<TResult> aVar) {
        this.f5209a = aVar.f5217a;
        this.f5210b = aVar.f5218b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
    }

    public final void execute(com.raizlabs.android.dbflow.structure.b.i iVar) {
        final i<TResult> queryResults = this.f5209a.queryResults();
        b<TResult> bVar = this.f5210b;
        if (bVar != null) {
            if (this.e) {
                bVar.onQueryResult(this, queryResults);
            } else {
                g.a().post(new Runnable() {
                    public final void run() {
                        f.this.f5210b.onQueryResult(f.this, queryResults);
                    }
                });
            }
        }
        if (this.c != null) {
            final List<TResult> listClose = queryResults.toListClose();
            if (this.e) {
                this.c.onListQueryResult(this, listClose);
            } else {
                g.a().post(new Runnable() {
                    public final void run() {
                        f.this.c.onListQueryResult(f.this, listClose);
                    }
                });
            }
        }
        if (this.d != null) {
            final TResult modelClose = queryResults.toModelClose();
            if (this.e) {
                this.d.onSingleQueryResult(this, modelClose);
                return;
            }
            g.a().post(new Runnable() {
                public final void run() {
                    f.this.d.onSingleQueryResult(f.this, modelClose);
                }
            });
        }
    }
}
