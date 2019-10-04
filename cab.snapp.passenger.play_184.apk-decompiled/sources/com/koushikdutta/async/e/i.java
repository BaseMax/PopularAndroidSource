package com.koushikdutta.async.e;

import java.util.Hashtable;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable<String, Object> f4525a = new Hashtable<>();

    public final void put(String str, Object obj) {
        this.f4525a.put(str, obj);
    }

    public final void remove(String str) {
        this.f4525a.remove(str);
    }

    public final <T> T get(String str, T t) {
        T t2 = get(str);
        return t2 == null ? t : t2;
    }

    public final <T> T get(String str) {
        return this.f4525a.get(str);
    }
}
