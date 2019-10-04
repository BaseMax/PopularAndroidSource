package i.a.c;

import h.f.b.j;

/* compiled from: SystemProps.kt */
public final /* synthetic */ class x {

    /* renamed from: a  reason: collision with root package name */
    public static final int f14783a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f14783a;
    }

    public static final String a(String str) {
        j.b(str, "propertyName");
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
