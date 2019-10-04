package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b.i;

public class BaseModel implements e {

    /* renamed from: a  reason: collision with root package name */
    private transient f f5191a;

    public enum Action {
        SAVE,
        INSERT,
        UPDATE,
        DELETE,
        CHANGE
    }

    public void load() {
        getModelAdapter().load(this);
    }

    public void load(i iVar) {
        getModelAdapter().load(this, iVar);
    }

    public boolean save() {
        return getModelAdapter().save(this);
    }

    public boolean save(i iVar) {
        return getModelAdapter().save(this, iVar);
    }

    public boolean delete() {
        return getModelAdapter().delete(this);
    }

    public boolean delete(i iVar) {
        return getModelAdapter().delete(this, iVar);
    }

    public boolean update() {
        return getModelAdapter().update(this);
    }

    public boolean update(i iVar) {
        return getModelAdapter().update(this, iVar);
    }

    public long insert() {
        return getModelAdapter().insert(this);
    }

    public long insert(i iVar) {
        return getModelAdapter().insert(this, iVar);
    }

    public boolean exists() {
        return getModelAdapter().exists(this);
    }

    public boolean exists(i iVar) {
        return getModelAdapter().exists(this, iVar);
    }

    public a<? extends e> async() {
        return new a<>(this);
    }

    public f getModelAdapter() {
        if (this.f5191a == null) {
            this.f5191a = FlowManager.getModelAdapter(getClass());
        }
        return this.f5191a;
    }
}
