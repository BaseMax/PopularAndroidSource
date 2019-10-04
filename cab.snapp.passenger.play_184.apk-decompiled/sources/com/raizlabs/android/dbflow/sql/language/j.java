package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;

public final class j implements b {
    public static <TModel> void table(Class<TModel> cls, w... wVarArr) {
        new j().from(cls).where(wVarArr).executeUpdateDelete();
    }

    public static void tables(Class<?>... clsArr) {
        for (Class<?> table : clsArr) {
            table(table, new w[0]);
        }
    }

    public final <TModel> l<TModel> from(Class<TModel> cls) {
        return new l<>(this, cls);
    }

    public final String getQuery() {
        return new c().append("DELETE").appendSpace().getQuery();
    }
}
