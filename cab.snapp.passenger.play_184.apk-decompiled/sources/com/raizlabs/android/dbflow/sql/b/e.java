package com.raizlabs.android.dbflow.sql.b;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;

public interface e extends b {
    g compileStatement();

    g compileStatement(i iVar);

    @Deprecated
    long count();

    @Deprecated
    long count(i iVar);

    void execute();

    void execute(i iVar);

    long executeInsert();

    long executeInsert(i iVar);

    long executeUpdateDelete();

    long executeUpdateDelete(i iVar);

    BaseModel.Action getPrimaryAction();

    boolean hasData();

    boolean hasData(i iVar);

    long longValue();

    long longValue(i iVar);

    j query();

    j query(i iVar);
}
