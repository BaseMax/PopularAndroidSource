package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.a;

public final class ab<TModel> implements b {
    public static final String DELETE = "DELETE";
    public static final String INSERT = "INSERT";
    public static final String UPDATE = "UPDATE";

    /* renamed from: a  reason: collision with root package name */
    final aa f5152a;

    /* renamed from: b  reason: collision with root package name */
    Class<TModel> f5153b;
    boolean c = false;
    private a[] d;
    private final String e;
    private w f;

    ab(aa aaVar, String str, Class<TModel> cls, a... aVarArr) {
        this.f5152a = aaVar;
        this.e = str;
        this.f5153b = cls;
        if (aVarArr != null && aVarArr.length > 0 && aVarArr[0] != null) {
            if (str.equals(UPDATE)) {
                this.d = aVarArr;
                return;
            }
            throw new IllegalArgumentException("An Trigger OF can only be used with an UPDATE method");
        }
    }

    public final ab<TModel> forEachRow() {
        this.c = true;
        return this;
    }

    public final ab<TModel> when(w wVar) {
        this.f = wVar;
        return this;
    }

    public final h<TModel> begin(b bVar) {
        return new h<>(this, bVar);
    }

    public final String getQuery() {
        c append = new c(this.f5152a.getQuery()).append(this.e);
        a[] aVarArr = this.d;
        if (aVarArr != null && aVarArr.length > 0) {
            append.appendSpaceSeparated("OF").appendArray((Object[]) this.d);
        }
        append.appendSpaceSeparated("ON").append(FlowManager.getTableName(this.f5153b));
        if (this.c) {
            append.appendSpaceSeparated("FOR EACH ROW");
        }
        if (this.f != null) {
            append.append(" WHEN ");
            this.f.appendConditionToQuery(append);
            append.appendSpace();
        }
        append.appendSpace();
        return append.getQuery();
    }
}
