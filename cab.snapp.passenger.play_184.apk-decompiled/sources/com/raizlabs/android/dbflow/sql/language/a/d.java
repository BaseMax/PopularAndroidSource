package com.raizlabs.android.dbflow.sql.language.a;

import com.raizlabs.android.dbflow.sql.language.s;
import com.raizlabs.android.dbflow.sql.language.t;

public final class d {
    public static c<Character> from(char c) {
        return new c<>((Class<?>) null, s.rawBuilder("'" + c + "'").build());
    }

    public static c<Integer> from(int i) {
        return new c<>((Class<?>) null, s.rawBuilder(String.valueOf(i)).build());
    }

    public static c<Double> from(double d) {
        return new c<>((Class<?>) null, s.rawBuilder(String.valueOf(d)).build());
    }

    public static c<Long> from(long j) {
        return new c<>((Class<?>) null, s.rawBuilder(String.valueOf(j)).build());
    }

    public static c<Float> from(float f) {
        return new c<>((Class<?>) null, s.rawBuilder(String.valueOf(f)).build());
    }

    public static c<Short> from(short s) {
        return new c<>((Class<?>) null, s.rawBuilder(String.valueOf(s)).build());
    }

    public static c<Byte> from(byte b2) {
        return new c<>((Class<?>) null, s.rawBuilder(String.valueOf(b2)).build());
    }

    public static <T> c<T> from(T t) {
        return new c<>((Class<?>) null, s.rawBuilder(t.convertValueToString(t)).build());
    }

    public static <TModel> c<TModel> from(com.raizlabs.android.dbflow.sql.b.d<TModel> dVar) {
        Class<TModel> table = dVar.getTable();
        return from(table, "(" + String.valueOf(dVar.getQuery()).trim() + ")");
    }

    public static <T> c<T> from(Class<T> cls, String str) {
        return new c<>((Class<?>) null, s.rawBuilder(str).build());
    }
}
