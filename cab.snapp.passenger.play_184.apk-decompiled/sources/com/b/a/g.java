package com.b.a;

import android.content.Context;
import com.b.a.j;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    static j f1964a = new j.a();

    private g() {
    }

    public static h init(Context context) {
        l.checkNull("Context", context);
        f1964a = null;
        return new h(context);
    }

    static void a(h hVar) {
        f1964a = new d(hVar);
    }

    public static <T> boolean put(String str, T t) {
        return f1964a.put(str, t);
    }

    public static <T> T get(String str) {
        return f1964a.get(str);
    }

    public static <T> T get(String str, T t) {
        return f1964a.get(str, t);
    }

    public static long count() {
        return f1964a.count();
    }

    public static boolean deleteAll() {
        return f1964a.deleteAll();
    }

    public static boolean delete(String str) {
        return f1964a.delete(str);
    }

    public static boolean contains(String str) {
        return f1964a.contains(str);
    }

    public static boolean isBuilt() {
        return f1964a.isBuilt();
    }

    public static void destroy() {
        f1964a.destroy();
    }
}
