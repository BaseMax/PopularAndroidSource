package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.a;

public final class aa implements b {
    public static final String AFTER = "AFTER";
    public static final String BEFORE = "BEFORE";
    public static final String INSTEAD_OF = "INSTEAD OF";

    /* renamed from: a  reason: collision with root package name */
    final String f5150a;

    /* renamed from: b  reason: collision with root package name */
    String f5151b;
    boolean c;

    public static aa create(String str) {
        return new aa(str);
    }

    private aa(String str) {
        this.f5150a = str;
    }

    public final aa temporary() {
        this.c = true;
        return this;
    }

    public final aa after() {
        this.f5151b = AFTER;
        return this;
    }

    public final aa before() {
        this.f5151b = BEFORE;
        return this;
    }

    public final aa insteadOf() {
        this.f5151b = INSTEAD_OF;
        return this;
    }

    public final <TModel> ab<TModel> deleteOn(Class<TModel> cls) {
        return new ab<>(this, "DELETE", cls, new a[0]);
    }

    public final <TModel> ab<TModel> insertOn(Class<TModel> cls) {
        return new ab<>(this, ab.INSERT, cls, new a[0]);
    }

    public final <TModel> ab<TModel> updateOn(Class<TModel> cls, a... aVarArr) {
        return new ab<>(this, ab.UPDATE, cls, aVarArr);
    }

    public final String getName() {
        return this.f5150a;
    }

    public final String getQuery() {
        c cVar = new c("CREATE ");
        if (this.c) {
            cVar.append("TEMP ");
        }
        c appendSpace = cVar.append("TRIGGER IF NOT EXISTS ").appendQuotedIfNeeded(this.f5150a).appendSpace();
        appendSpace.appendOptional(this.f5151b + " ");
        return cVar.getQuery();
    }
}
