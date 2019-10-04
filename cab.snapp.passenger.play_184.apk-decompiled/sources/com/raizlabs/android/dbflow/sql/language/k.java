package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;

public final class k implements b, w {

    /* renamed from: a  reason: collision with root package name */
    private ad f5171a;

    public final boolean hasSeparator() {
        return false;
    }

    public final String operation() {
        return "";
    }

    public final void appendConditionToQuery(c cVar) {
        cVar.appendQualifier("EXISTS", "(" + this.f5171a.getQuery().trim() + ")");
    }

    public final String columnName() {
        throw new RuntimeException("Method not valid for ExistenceOperator");
    }

    public final String separator() {
        throw new RuntimeException("Method not valid for ExistenceOperator");
    }

    public final w separator(String str) {
        throw new RuntimeException("Method not valid for ExistenceOperator");
    }

    public final Object value() {
        return this.f5171a;
    }

    public final k where(ad adVar) {
        this.f5171a = adVar;
        return this;
    }

    public final String getQuery() {
        c cVar = new c();
        appendConditionToQuery(cVar);
        return cVar.getQuery();
    }
}
