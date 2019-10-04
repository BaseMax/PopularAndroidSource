package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.d;
import java.util.ArrayList;
import java.util.List;

public final class h<TModel> implements b {

    /* renamed from: a  reason: collision with root package name */
    private ab<TModel> f5167a;

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f5168b = new ArrayList();

    h(ab<TModel> abVar, b bVar) {
        this.f5167a = abVar;
        this.f5168b.add(bVar);
    }

    public final h<TModel> and(b bVar) {
        this.f5168b.add(bVar);
        return this;
    }

    public final String getQuery() {
        c cVar = new c(this.f5167a.getQuery());
        cVar.append("\nBEGIN").append("\n").append(c.join((CharSequence) ";\n", (Iterable) this.f5168b)).append(";").append("\nEND");
        return cVar.getQuery();
    }

    public final void enable() {
        FlowManager.getDatabaseForTable(this.f5167a.f5153b).getWritableDatabase().execSQL(getQuery());
    }

    public final void disable() {
        d.dropTrigger(this.f5167a.f5153b, this.f5167a.f5152a.f5150a);
    }
}
