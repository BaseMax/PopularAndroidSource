package com.raizlabs.android.dbflow.sql.language;

import android.database.DatabaseUtils;
import com.raizlabs.android.dbflow.a.h;
import com.raizlabs.android.dbflow.b.a;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.d;

public abstract class c implements w {

    /* renamed from: a  reason: collision with root package name */
    protected String f5160a = "";

    /* renamed from: b  reason: collision with root package name */
    protected Object f5161b;
    protected s c;
    protected String d;
    protected String e;
    protected boolean f;

    public static String convertValueToString(Object obj, boolean z) {
        return convertValueToString(obj, z, true);
    }

    public static String convertValueToString(Object obj, boolean z, boolean z2) {
        String str;
        byte[] bArr;
        if (obj == null) {
            return "NULL";
        }
        if (z2) {
            h typeConverterForClass = FlowManager.getTypeConverterForClass(obj.getClass());
            if (typeConverterForClass != null) {
                obj = typeConverterForClass.getDBValue(obj);
            }
        }
        if (obj instanceof Number) {
            str = String.valueOf(obj);
        } else if (obj instanceof Enum) {
            str = DatabaseUtils.sqlEscapeString(((Enum) obj).name());
        } else if (z && (obj instanceof b)) {
            str = String.format("(%1s)", new Object[]{((b) obj).getQuery().trim()});
        } else if (obj instanceof s) {
            str = ((s) obj).getQuery();
        } else if (obj instanceof w) {
            com.raizlabs.android.dbflow.sql.c cVar = new com.raizlabs.android.dbflow.sql.c();
            ((w) obj).appendConditionToQuery(cVar);
            str = cVar.toString();
        } else if (obj instanceof b) {
            str = ((b) obj).getQuery();
        } else {
            boolean z3 = obj instanceof a;
            if (z3 || (obj instanceof byte[])) {
                if (z3) {
                    bArr = ((a) obj).getBlob();
                } else {
                    bArr = (byte[]) obj;
                }
                str = "X" + DatabaseUtils.sqlEscapeString(d.byteArrayToHexString(bArr));
            } else {
                str = String.valueOf(obj);
                if (!str.equals("?")) {
                    str = DatabaseUtils.sqlEscapeString(str);
                }
            }
        }
        return str;
    }

    public static String joinArguments(CharSequence charSequence, Iterable iterable, c cVar) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object next : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(cVar.convertObjectToString(next, false));
        }
        return sb.toString();
    }

    public static String joinArguments(CharSequence charSequence, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : objArr) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(convertValueToString(obj, false, true));
        }
        return sb.toString();
    }

    public static String joinArguments(CharSequence charSequence, Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object next : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(convertValueToString(next, false, true));
        }
        return sb.toString();
    }

    c(s sVar) {
        this.c = sVar;
    }

    public Object value() {
        return this.f5161b;
    }

    public String columnName() {
        return this.c.getQuery();
    }

    public w separator(String str) {
        this.e = str;
        return this;
    }

    public String separator() {
        return this.e;
    }

    public boolean hasSeparator() {
        String str = this.e;
        return str != null && str.length() > 0;
    }

    public String operation() {
        return this.f5160a;
    }

    public String postArgument() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public final s a() {
        return this.c;
    }

    public String convertObjectToString(Object obj, boolean z) {
        return convertValueToString(obj, z);
    }
}
