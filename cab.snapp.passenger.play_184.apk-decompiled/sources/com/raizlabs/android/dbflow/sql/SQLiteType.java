package com.raizlabs.android.dbflow.sql;

import com.raizlabs.android.dbflow.b.a;
import java.util.HashMap;
import java.util.Map;

public enum SQLiteType {
    INTEGER,
    REAL,
    TEXT,
    BLOB;
    

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, SQLiteType> f5133a = null;

    static {
        f5133a = new HashMap<String, SQLiteType>() {
            {
                put(Byte.TYPE.getName(), SQLiteType.INTEGER);
                put(Short.TYPE.getName(), SQLiteType.INTEGER);
                put(Integer.TYPE.getName(), SQLiteType.INTEGER);
                put(Long.TYPE.getName(), SQLiteType.INTEGER);
                put(Float.TYPE.getName(), SQLiteType.REAL);
                put(Double.TYPE.getName(), SQLiteType.REAL);
                put(Boolean.TYPE.getName(), SQLiteType.INTEGER);
                put(Character.TYPE.getName(), SQLiteType.TEXT);
                put(byte[].class.getName(), SQLiteType.BLOB);
                put(Byte.class.getName(), SQLiteType.INTEGER);
                put(Short.class.getName(), SQLiteType.INTEGER);
                put(Integer.class.getName(), SQLiteType.INTEGER);
                put(Long.class.getName(), SQLiteType.INTEGER);
                put(Float.class.getName(), SQLiteType.REAL);
                put(Double.class.getName(), SQLiteType.REAL);
                put(Boolean.class.getName(), SQLiteType.INTEGER);
                put(Character.class.getName(), SQLiteType.TEXT);
                put(CharSequence.class.getName(), SQLiteType.TEXT);
                put(String.class.getName(), SQLiteType.TEXT);
                put(Byte[].class.getName(), SQLiteType.BLOB);
                put(a.class.getName(), SQLiteType.BLOB);
            }
        };
    }

    public static SQLiteType get(String str) {
        return f5133a.get(str);
    }

    public static boolean containsClass(String str) {
        return f5133a.containsKey(str);
    }
}
