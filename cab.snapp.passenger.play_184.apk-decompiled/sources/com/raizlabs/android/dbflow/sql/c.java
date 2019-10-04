package com.raizlabs.android.dbflow.sql;

import com.raizlabs.android.dbflow.sql.c;
import java.util.List;
import java.util.regex.Pattern;

public final class c<QueryClass extends c> implements b {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f5140b = Pattern.compile("`.*`");

    /* renamed from: a  reason: collision with root package name */
    protected StringBuilder f5141a = new StringBuilder();

    public c() {
    }

    public c(Object obj) {
        append(obj);
    }

    public final QueryClass appendSpace() {
        return append(" ");
    }

    public final QueryClass appendSpaceSeparated(Object obj) {
        return appendSpace().append(obj).appendSpace();
    }

    public final QueryClass appendParenthesisEnclosed(Object obj) {
        return append("(").append(obj).append(")");
    }

    public final QueryClass append(Object obj) {
        this.f5141a.append(obj);
        return this;
    }

    public final QueryClass appendOptional(Object obj) {
        if (obj != null) {
            append(obj);
        }
        return this;
    }

    public final QueryClass appendType(String str) {
        return appendSQLiteType(SQLiteType.get(str));
    }

    public final QueryClass appendSQLiteType(SQLiteType sQLiteType) {
        return append(sQLiteType.name());
    }

    public final QueryClass appendArray(Object... objArr) {
        return append(join((CharSequence) ", ", objArr));
    }

    public final QueryClass appendList(List<?> list) {
        return append(join((CharSequence) ", ", (Iterable) list));
    }

    public final QueryClass appendQualifier(String str, String str2) {
        if (str2 != null && str2.length() > 0) {
            if (str != null) {
                append(str);
            }
            appendSpaceSeparated(str2);
        }
        return this;
    }

    public final QueryClass appendNotEmpty(String str) {
        if (str != null && !str.isEmpty()) {
            append(str);
        }
        return this;
    }

    public final QueryClass appendQuoted(String str) {
        if (str.equals("*")) {
            return append(str);
        }
        append(quote(str));
        return this;
    }

    public final QueryClass appendQuotedIfNeeded(String str) {
        if (str.equals("*")) {
            return append(str);
        }
        append(quoteIfNeeded(str));
        return this;
    }

    public final QueryClass appendQuotedList(List<?> list) {
        return appendQuoted(join((CharSequence) "`, `", (Iterable) list));
    }

    public final QueryClass appendQuotedArray(Object... objArr) {
        return appendQuoted(join((CharSequence) "`, `", objArr));
    }

    public final String toString() {
        return getQuery();
    }

    public final String getQuery() {
        return this.f5141a.toString();
    }

    public static String quote(String str) {
        return "`" + str.replace(".", "`.`") + '`';
    }

    public static String quoteIfNeeded(String str) {
        return (str == null || isQuoted(str)) ? str : quote(str);
    }

    public static boolean isQuoted(String str) {
        return f5140b.matcher(str).find();
    }

    public static String stripQuotes(String str) {
        return (str == null || !isQuoted(str)) ? str : str.replace("`", "");
    }

    public static String join(CharSequence charSequence, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : objArr) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    public static String join(CharSequence charSequence, Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object next : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(next);
        }
        return sb.toString();
    }
}
