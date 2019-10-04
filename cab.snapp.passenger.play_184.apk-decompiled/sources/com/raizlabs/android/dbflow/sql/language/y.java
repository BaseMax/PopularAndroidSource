package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.a.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class y implements b {
    public static final int ALL = 1;
    public static final int DISTINCT = 0;
    public static final int NONE = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f5187a = -1;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f5188b = new ArrayList();

    public y(a... aVarArr) {
        Collections.addAll(this.f5188b, aVarArr);
        if (this.f5188b.isEmpty()) {
            this.f5188b.add(c.ALL_PROPERTY);
        }
    }

    public final <TModel> l<TModel> from(Class<TModel> cls) {
        return new l<>(this, cls);
    }

    public final String toString() {
        return getQuery();
    }

    public final String getQuery() {
        com.raizlabs.android.dbflow.sql.c cVar = new com.raizlabs.android.dbflow.sql.c("SELECT ");
        int i = this.f5187a;
        if (i != -1) {
            if (i == 0) {
                cVar.append("DISTINCT");
            } else if (i == 1) {
                cVar.append("ALL");
            }
            cVar.appendSpace();
        }
        cVar.append(com.raizlabs.android.dbflow.sql.c.join((CharSequence) ",", (Iterable) this.f5188b));
        cVar.appendSpace();
        return cVar.getQuery();
    }

    public final y distinct() {
        this.f5187a = 0;
        return this;
    }
}
