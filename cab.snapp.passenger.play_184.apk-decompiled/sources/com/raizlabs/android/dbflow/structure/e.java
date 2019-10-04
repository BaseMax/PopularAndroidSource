package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.structure.b.i;

public interface e {
    public static final long INVALID_ROW_ID = -1;

    a<? extends e> async();

    boolean delete();

    boolean delete(i iVar);

    long insert();

    long insert(i iVar);

    boolean save();

    boolean save(i iVar);

    boolean update();

    boolean update(i iVar);
}
