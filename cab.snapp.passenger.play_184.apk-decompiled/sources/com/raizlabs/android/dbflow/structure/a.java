package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b.a.e;
import com.raizlabs.android.dbflow.structure.b.i;
import java.lang.ref.WeakReference;

public final class a<TModel> extends com.raizlabs.android.dbflow.sql.a<a<TModel>> implements e {
    private final TModel d;
    private transient WeakReference<C0103a<TModel>> e;
    private f<TModel> f;

    /* renamed from: com.raizlabs.android.dbflow.structure.a$a  reason: collision with other inner class name */
    public interface C0103a<T> {
        void onModelChanged(T t);
    }

    public final a<? extends e> async() {
        return this;
    }

    public a(TModel tmodel) {
        super(tmodel.getClass());
        this.d = tmodel;
    }

    public final a<TModel> withListener(C0103a<TModel> aVar) {
        this.e = new WeakReference<>(aVar);
        return this;
    }

    /* access modifiers changed from: package-private */
    public final f<TModel> a() {
        if (this.f == null) {
            this.f = FlowManager.getModelAdapter(this.d.getClass());
        }
        return this.f;
    }

    public final boolean save(i iVar) {
        return save();
    }

    public final boolean save() {
        a(new e.a(new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                a.this.a().save(tmodel, iVar);
            }
        }).add(this.d).build());
        return false;
    }

    public final boolean delete(i iVar) {
        return delete();
    }

    public final boolean delete() {
        a(new e.a(new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                a.this.a().delete(tmodel, iVar);
            }
        }).add(this.d).build());
        return false;
    }

    public final boolean update(i iVar) {
        return update();
    }

    public final boolean update() {
        a(new e.a(new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                a.this.a().update(tmodel, iVar);
            }
        }).add(this.d).build());
        return false;
    }

    public final long insert(i iVar) {
        return insert();
    }

    public final long insert() {
        a(new e.a(new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                a.this.a().insert(tmodel, iVar);
            }
        }).add(this.d).build());
        return -1;
    }

    public final void load(i iVar) {
        load();
    }

    public final void load() {
        a(new e.a(new e.c<TModel>() {
            public final void processModel(TModel tmodel, i iVar) {
                a.this.a().load(tmodel, iVar);
            }
        }).add(this.d).build());
    }

    public final boolean exists(i iVar) {
        return exists();
    }

    public final boolean exists() {
        return a().exists(this.d);
    }

    public final void onSuccess$100ded9() {
        WeakReference<C0103a<TModel>> weakReference = this.e;
        if (weakReference != null && weakReference.get() != null) {
            ((C0103a) this.e.get()).onModelChanged(this.d);
        }
    }
}
