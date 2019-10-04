package com.b.a;

import android.content.Context;
import android.content.SharedPreferences;

final class q implements r {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f1973a;

    q(Context context, String str) {
        this.f1973a = context.getSharedPreferences(str, 0);
    }

    public final <T> boolean put(String str, T t) {
        l.checkNull("key", str);
        return a().putString(str, String.valueOf(t)).commit();
    }

    public final <T> T get(String str) {
        return this.f1973a.getString(str, null);
    }

    public final boolean delete(String str) {
        return a().remove(str).commit();
    }

    public final boolean contains(String str) {
        return this.f1973a.contains(str);
    }

    public final boolean deleteAll() {
        return a().clear().commit();
    }

    public final long count() {
        return (long) this.f1973a.getAll().size();
    }

    private SharedPreferences.Editor a() {
        return this.f1973a.edit();
    }
}
