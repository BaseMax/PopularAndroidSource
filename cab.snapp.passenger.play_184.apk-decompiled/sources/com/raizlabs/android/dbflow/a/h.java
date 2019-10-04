package com.raizlabs.android.dbflow.a;

public abstract class h<DataClass, ModelClass> {
    public abstract DataClass getDBValue(ModelClass modelclass);

    public abstract ModelClass getModelValue(DataClass dataclass);
}
