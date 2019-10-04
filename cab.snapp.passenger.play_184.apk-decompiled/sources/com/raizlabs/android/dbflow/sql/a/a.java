package com.raizlabs.android.dbflow.sql.a;

import com.raizlabs.android.dbflow.structure.b.i;

public interface a {
    void migrate(i iVar);

    void onPostMigrate();

    void onPreMigrate();
}
