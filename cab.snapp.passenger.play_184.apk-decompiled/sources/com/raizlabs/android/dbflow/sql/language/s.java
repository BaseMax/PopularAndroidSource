package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;

public final class s implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f5181a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5182b;
    private final String c;
    private final String d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final boolean h;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final String f5183a;

        /* renamed from: b  reason: collision with root package name */
        String f5184b;
        String c;
        boolean d = true;
        boolean e = true;
        boolean f = true;
        boolean g = true;
        String h;

        public a(String str) {
            this.f5183a = str;
        }

        public final a distinct() {
            return keyword("DISTINCT");
        }

        public final a keyword(String str) {
            this.h = str;
            return this;
        }

        public final a as(String str) {
            this.f5184b = str;
            return this;
        }

        public final a withTable(String str) {
            this.c = str;
            return this;
        }

        public final a shouldStripIdentifier(boolean z) {
            this.d = z;
            return this;
        }

        public final a shouldStripAliasName(boolean z) {
            this.e = z;
            return this;
        }

        public final a shouldAddIdentifierToName(boolean z) {
            this.f = z;
            return this;
        }

        public final a shouldAddIdentifierToAliasName(boolean z) {
            this.g = z;
            return this;
        }

        public final s build() {
            return new s(this, (byte) 0);
        }
    }

    /* synthetic */ s(a aVar, byte b2) {
        this(aVar);
    }

    public static s joinNames(String str, String... strArr) {
        String str2 = "";
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                str2 = str2 + " " + str + " ";
            }
            str2 = str2 + strArr[i];
        }
        return rawBuilder(str2).build();
    }

    public static a builder(String str) {
        return new a(str);
    }

    public static a rawBuilder(String str) {
        return new a(str).shouldStripIdentifier(false).shouldAddIdentifierToName(false);
    }

    public static s of(String str) {
        return builder(str).build();
    }

    public static s of(String str, String str2) {
        return builder(str).as(str2).build();
    }

    public static s ofTable(String str, String str2) {
        return builder(str2).withTable(str).build();
    }

    private s(a aVar) {
        if (aVar.d) {
            this.f5181a = c.stripQuotes(aVar.f5183a);
        } else {
            this.f5181a = aVar.f5183a;
        }
        this.d = aVar.h;
        if (aVar.e) {
            this.f5182b = c.stripQuotes(aVar.f5184b);
        } else {
            this.f5182b = aVar.f5184b;
        }
        if (com.raizlabs.android.dbflow.a.isNotNullOrEmpty(aVar.c)) {
            this.c = c.quoteIfNeeded(aVar.c);
        } else {
            this.c = null;
        }
        this.e = aVar.d;
        this.f = aVar.e;
        this.g = aVar.f;
        this.h = aVar.g;
    }

    public final String name() {
        return (!com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.f5181a) || !this.g) ? this.f5181a : c.quoteIfNeeded(this.f5181a);
    }

    public final String nameRaw() {
        return this.e ? this.f5181a : c.stripQuotes(this.f5181a);
    }

    public final String aliasName() {
        return (!com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.f5182b) || !this.h) ? this.f5182b : c.quoteIfNeeded(this.f5182b);
    }

    public final String aliasNameRaw() {
        return this.f ? this.f5182b : c.stripQuotes(this.f5182b);
    }

    public final String tableName() {
        return this.c;
    }

    public final String keyword() {
        return this.d;
    }

    public final boolean shouldStripIdentifier() {
        return this.e;
    }

    public final boolean shouldStripAliasName() {
        return this.f;
    }

    public final String fullName() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.c)) {
            str = tableName() + ".";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(name());
        return sb.toString();
    }

    public final String getQuery() {
        if (com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.f5182b)) {
            return aliasName();
        }
        return com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.f5181a) ? fullName() : "";
    }

    public final String getNameAsKey() {
        if (com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.f5182b)) {
            return aliasNameRaw();
        }
        return nameRaw();
    }

    public final String toString() {
        return getFullQuery();
    }

    public final String getFullQuery() {
        String fullName = fullName();
        if (com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.f5182b)) {
            fullName = fullName + " AS " + aliasName();
        }
        if (!com.raizlabs.android.dbflow.a.isNotNullOrEmpty(this.d)) {
            return fullName;
        }
        return this.d + " " + fullName;
    }

    public final a newBuilder() {
        return new a(this.f5181a).keyword(this.d).as(this.f5182b).shouldStripAliasName(this.f).shouldStripIdentifier(this.e).shouldAddIdentifierToName(this.g).shouldAddIdentifierToAliasName(this.h).withTable(this.c);
    }
}
