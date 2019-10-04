package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.annotation.Collate;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.language.a.a;

public final class v implements b {
    public static final String ASCENDING = "ASC";
    public static final String DESCENDING = "DESC";

    /* renamed from: a  reason: collision with root package name */
    private s f5185a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5186b;
    private Collate c;
    private String d;

    public static v fromProperty(a aVar) {
        return new v(aVar.getNameAlias());
    }

    public static v fromNameAlias(s sVar) {
        return new v(sVar);
    }

    public static v fromString(String str) {
        return new v(str);
    }

    private v(s sVar) {
        this.f5185a = sVar;
    }

    v(s sVar, boolean z) {
        this(sVar);
        this.f5186b = z;
    }

    private v(String str) {
        this.d = str;
    }

    public final v ascending() {
        this.f5186b = true;
        return this;
    }

    public final v descending() {
        this.f5186b = false;
        return this;
    }

    public final v collate(Collate collate) {
        this.c = collate;
        return this;
    }

    public final String getQuery() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5185a);
        sb.append(" ");
        if (this.c != null) {
            sb.append("COLLATE ");
            sb.append(this.c);
            sb.append(" ");
        }
        sb.append(this.f5186b ? ASCENDING : DESCENDING);
        return sb.toString();
    }

    public final String toString() {
        return getQuery();
    }
}
