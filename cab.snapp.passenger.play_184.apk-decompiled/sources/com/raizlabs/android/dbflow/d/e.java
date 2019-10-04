package com.raizlabs.android.dbflow.d;

import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.f;

public interface e {
    h newRegister();

    <T> void notifyModelChanged(T t, f<T> fVar, BaseModel.Action action);

    <T> void notifyTableChanged(Class<T> cls, BaseModel.Action action);
}
