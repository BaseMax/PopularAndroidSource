package c.e.a.a;

import java.util.HashSet;

/* compiled from: ExoPlayerLibraryInfo */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public static final HashSet<String> f7253a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    public static String f7254b = "goog.exo.core";

    public static synchronized String a() {
        String str;
        synchronized (C.class) {
            str = f7254b;
        }
        return str;
    }

    public static synchronized void a(String str) {
        synchronized (C.class) {
            if (f7253a.add(str)) {
                f7254b += ", " + str;
            }
        }
    }
}
