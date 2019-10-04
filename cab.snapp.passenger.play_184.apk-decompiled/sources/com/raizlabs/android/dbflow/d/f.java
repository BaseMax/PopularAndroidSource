package com.raizlabs.android.dbflow.d;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.BaseModel;

public final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private static f f5132a;

    public static f get() {
        if (f5132a == null) {
            f5132a = new f();
        }
        return f5132a;
    }

    public final h newRegister() {
        throw new RuntimeException("Cannot create a register from the distributor class");
    }

    public final <TModel> void notifyModelChanged(TModel tmodel, com.raizlabs.android.dbflow.structure.f<TModel> fVar, BaseModel.Action action) {
        FlowManager.getModelNotifierForTable(fVar.getModelClass()).notifyModelChanged(tmodel, fVar, action);
    }

    public final <TModel> void notifyTableChanged(Class<TModel> cls, BaseModel.Action action) {
        FlowManager.getModelNotifierForTable(cls).notifyTableChanged(cls, action);
    }
}
