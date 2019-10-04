package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class u extends c implements b, Iterable<w> {
    private final List<w> g;
    private c h;
    private boolean i;
    private boolean j;
    private boolean k;

    public static u clause() {
        return new u();
    }

    public static u clause(w... wVarArr) {
        return new u().andAll(wVarArr);
    }

    public static u nonGroupingClause() {
        return new u().setUseParenthesis(false);
    }

    public static u nonGroupingClause(w... wVarArr) {
        return new u().setUseParenthesis(false).andAll(wVarArr);
    }

    private u(byte b2) {
        super(null);
        this.g = new ArrayList();
        this.k = true;
        this.e = "AND";
    }

    protected u() {
        this((byte) 0);
    }

    public final u setAllCommaSeparated(boolean z) {
        this.j = z;
        this.i = true;
        return this;
    }

    public final u setUseParenthesis(boolean z) {
        this.k = z;
        this.i = true;
        return this;
    }

    public final u or(w wVar) {
        return a("OR", wVar);
    }

    public final u and(w wVar) {
        return a("AND", wVar);
    }

    public final u andAll(w... wVarArr) {
        for (w and : wVarArr) {
            and(and);
        }
        return this;
    }

    public final u andAll(Collection<w> collection) {
        for (w and : collection) {
            and(and);
        }
        return this;
    }

    public final u orAll(w... wVarArr) {
        for (w or : wVarArr) {
            or(or);
        }
        return this;
    }

    public final u orAll(Collection<w> collection) {
        for (w or : collection) {
            or(or);
        }
        return this;
    }

    private u a(String str, w wVar) {
        if (wVar != null) {
            a(str);
            this.g.add(wVar);
            this.i = true;
        }
        return this;
    }

    public final void appendConditionToQuery(c cVar) {
        int size = this.g.size();
        if (this.k && size > 0) {
            cVar.append("(");
        }
        for (int i2 = 0; i2 < size; i2++) {
            w wVar = this.g.get(i2);
            wVar.appendConditionToQuery(cVar);
            if (!this.j && wVar.hasSeparator() && i2 < size - 1) {
                cVar.appendSpaceSeparated(wVar.separator());
            } else if (i2 < size - 1) {
                cVar.append(", ");
            }
        }
        if (this.k && size > 0) {
            cVar.append(")");
        }
    }

    private void a(String str) {
        if (this.g.size() > 0) {
            List<w> list = this.g;
            list.get(list.size() - 1).separator(str);
        }
    }

    public final String getQuery() {
        if (this.i) {
            this.h = b();
        }
        c cVar = this.h;
        return cVar == null ? "" : cVar.toString();
    }

    public final String toString() {
        return b().toString();
    }

    public final int size() {
        return this.g.size();
    }

    public final List<w> getConditions() {
        return this.g;
    }

    public final Iterator<w> iterator() {
        return this.g.iterator();
    }

    private c b() {
        c cVar = new c();
        appendConditionToQuery(cVar);
        return cVar;
    }
}
