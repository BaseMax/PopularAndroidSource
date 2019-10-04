package com.raizlabs.android.dbflow.structure.b.a;

import com.raizlabs.android.dbflow.structure.b.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class e<TModel> implements c {

    /* renamed from: a  reason: collision with root package name */
    final b<TModel> f5203a;

    /* renamed from: b  reason: collision with root package name */
    final List<TModel> f5204b;
    final c<TModel> c;
    final boolean d;

    public static final class a<TModel> {

        /* renamed from: a  reason: collision with root package name */
        final c<TModel> f5207a;

        /* renamed from: b  reason: collision with root package name */
        b<TModel> f5208b;
        List<TModel> c = new ArrayList();
        boolean d;

        public a(c<TModel> cVar) {
            this.f5207a = cVar;
        }

        public a(Collection<TModel> collection, c<TModel> cVar) {
            this.f5207a = cVar;
            this.c = new ArrayList(collection);
        }

        public final a<TModel> add(TModel tmodel) {
            this.c.add(tmodel);
            return this;
        }

        @SafeVarargs
        public final a<TModel> addAll(TModel... tmodelArr) {
            this.c.addAll(Arrays.asList(tmodelArr));
            return this;
        }

        public final a<TModel> addAll(Collection<? extends TModel> collection) {
            if (collection != null) {
                this.c.addAll(collection);
            }
            return this;
        }

        public final a<TModel> processListener(b<TModel> bVar) {
            this.f5208b = bVar;
            return this;
        }

        public final a<TModel> runProcessListenerOnSameThread(boolean z) {
            this.d = z;
            return this;
        }

        public final e<TModel> build() {
            return new e<>(this);
        }
    }

    public interface b<TModel> {
        void onModelProcessed(long j, long j2, TModel tmodel);
    }

    public interface c<TModel> {
        void processModel(TModel tmodel, i iVar);
    }

    e(a<TModel> aVar) {
        this.f5203a = aVar.f5208b;
        this.f5204b = aVar.c;
        this.c = aVar.f5207a;
        this.d = aVar.d;
    }

    public final void execute(i iVar) {
        List<TModel> list = this.f5204b;
        if (list != null) {
            final int size = list.size();
            for (final int i = 0; i < size; i++) {
                final TModel tmodel = this.f5204b.get(i);
                this.c.processModel(tmodel, iVar);
                b<TModel> bVar = this.f5203a;
                if (bVar != null) {
                    if (this.d) {
                        bVar.onModelProcessed((long) i, (long) size, tmodel);
                    } else {
                        g.a().post(new Runnable() {
                            public final void run() {
                                e.this.f5203a.onModelProcessed((long) i, (long) size, tmodel);
                            }
                        });
                    }
                }
            }
        }
    }
}
