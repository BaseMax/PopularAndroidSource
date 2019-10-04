package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.a.c;
import java.util.ArrayList;
import java.util.List;

public final class f<TReturn> implements b {

    /* renamed from: a  reason: collision with root package name */
    boolean f5163a = false;

    /* renamed from: b  reason: collision with root package name */
    private a f5164b;
    private List<g<TReturn>> c = new ArrayList();
    private String d;
    private TReturn e;
    private boolean f = false;
    private boolean g = false;

    f() {
    }

    f(a aVar) {
        this.f5164b = aVar;
        if (aVar != null) {
            this.f5163a = true;
        }
    }

    public final g<TReturn> when(w wVar) {
        if (!this.f5163a) {
            g<TReturn> gVar = new g<>((f<TReturn>) this, wVar);
            this.c.add(gVar);
            return gVar;
        }
        throw new IllegalStateException("When using the efficient CASE method,you must pass in value only, not condition.");
    }

    public final g<TReturn> when(TReturn treturn) {
        if (this.f5163a) {
            g<TReturn> gVar = new g<>((f<TReturn>) this, treturn);
            this.c.add(gVar);
            return gVar;
        }
        throw new IllegalStateException("When not using the efficient CASE method, you must pass in the SQLOperator as a parameter");
    }

    public final g<TReturn> when(a aVar) {
        if (this.f5163a) {
            g<TReturn> gVar = new g<>((f<TReturn>) this, aVar);
            this.c.add(gVar);
            return gVar;
        }
        throw new IllegalStateException("When not using the efficient CASE method, you must pass in the SQLOperator as a parameter");
    }

    public final f<TReturn> _else(TReturn treturn) {
        this.e = treturn;
        this.f = true;
        return this;
    }

    public final c<f<TReturn>> end(String str) {
        this.g = true;
        if (str != null) {
            this.d = com.raizlabs.android.dbflow.sql.c.quoteIfNeeded(str);
        }
        return new c<>((Class<?>) null, s.rawBuilder(getQuery()).build());
    }

    public final c<f<TReturn>> end() {
        return end(null);
    }

    public final t endAsOperator() {
        return t.op(end().getNameAlias());
    }

    public final String getQuery() {
        com.raizlabs.android.dbflow.sql.c cVar = new com.raizlabs.android.dbflow.sql.c(" CASE");
        if (this.f5163a) {
            cVar.append(" " + c.convertValueToString(this.f5164b, false));
        }
        cVar.append(com.raizlabs.android.dbflow.sql.c.join((CharSequence) "", (Iterable) this.c));
        if (this.f) {
            cVar.append(" ELSE ").append(c.convertValueToString(this.e, false));
        }
        if (this.g) {
            StringBuilder sb = new StringBuilder(" END ");
            String str = this.d;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            cVar.append(sb.toString());
        }
        return cVar.getQuery();
    }
}
