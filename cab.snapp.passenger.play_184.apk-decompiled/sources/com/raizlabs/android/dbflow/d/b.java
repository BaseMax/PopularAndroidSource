package com.raizlabs.android.dbflow.d;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.d;
import com.raizlabs.android.dbflow.sql.language.w;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.f;

public final class b implements e {

    public static class a implements h {

        /* renamed from: a  reason: collision with root package name */
        g f5122a;

        /* renamed from: b  reason: collision with root package name */
        private final d f5123b = new d();
        private final g c = new g() {
            public final void onTableChanged(Class<?> cls, BaseModel.Action action) {
                if (a.this.f5122a != null) {
                    a.this.f5122a.onTableChanged(cls, action);
                }
            }
        };

        public a() {
            this.f5123b.addOnTableChangedListener(this.c);
        }

        public final <T> void register(Class<T> cls) {
            this.f5123b.registerForContentChanges(FlowManager.getContext(), (Class<?>) cls);
        }

        public final <T> void unregister(Class<T> cls) {
            this.f5123b.unregisterForContentChanges(FlowManager.getContext());
        }

        public final void unregisterAll() {
            this.f5123b.removeTableChangedListener(this.c);
            this.f5122a = null;
        }

        public final void setListener(g gVar) {
            this.f5122a = gVar;
        }

        public final boolean isSubscribed() {
            return !this.f5123b.isSubscribed();
        }
    }

    public final <T> void notifyModelChanged(T t, f<T> fVar, BaseModel.Action action) {
        if (d.shouldNotify()) {
            FlowManager.getContext().getContentResolver().notifyChange(d.getNotificationUri((Class<?>) fVar.getModelClass(), action, (Iterable<w>) fVar.getPrimaryConditionClause(t).getConditions()), null, true);
        }
    }

    public final <T> void notifyTableChanged(Class<T> cls, BaseModel.Action action) {
        if (d.shouldNotify()) {
            FlowManager.getContext().getContentResolver().notifyChange(d.getNotificationUri((Class<?>) cls, action, (w[]) null), null, true);
        }
    }

    public final h newRegister() {
        return new a();
    }
}
