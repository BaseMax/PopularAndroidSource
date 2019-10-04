package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.a;

public final class g<TReturn> implements b {

    /* renamed from: a  reason: collision with root package name */
    private final f<TReturn> f5165a;

    /* renamed from: b  reason: collision with root package name */
    private TReturn f5166b;
    private w c;
    private TReturn d;
    private a e;
    private a f;
    private boolean g;

    g(f<TReturn> fVar, w wVar) {
        this.f5165a = fVar;
        this.c = wVar;
    }

    g(f<TReturn> fVar, TReturn treturn) {
        this.f5165a = fVar;
        this.f5166b = treturn;
    }

    g(f<TReturn> fVar, a aVar) {
        this.f5165a = fVar;
        this.e = aVar;
    }

    public final f<TReturn> then(TReturn treturn) {
        this.d = treturn;
        return this.f5165a;
    }

    public final f<TReturn> then(a aVar) {
        this.f = aVar;
        this.g = true;
        return this.f5165a;
    }

    public final String getQuery() {
        c cVar = new c(" WHEN ");
        if (this.f5165a.f5163a) {
            TReturn treturn = this.e;
            if (treturn == null) {
                treturn = this.f5166b;
            }
            cVar.append(c.convertValueToString(treturn, false));
        } else {
            this.c.appendConditionToQuery(cVar);
        }
        cVar.append(" THEN ").append(c.convertValueToString(this.g ? this.f : this.d, false));
        return cVar.getQuery();
    }

    public final String toString() {
        return getQuery();
    }
}
