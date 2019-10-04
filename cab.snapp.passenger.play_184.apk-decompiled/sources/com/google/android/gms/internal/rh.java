package com.google.android.gms.internal;

final class rh {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f3492a = a();

    /* renamed from: b  reason: collision with root package name */
    private static final ru<?, ?> f3493b = a(false);
    private static final ru<?, ?> c = a(true);
    private static final ru<?, ?> d = new rw();

    private static ru<?, ?> a(boolean z) {
        try {
            Class<?> b2 = b();
            if (b2 == null) {
                return null;
            }
            return (ru) b2.getConstructor(new Class[]{Boolean.TYPE}).newInstance(new Object[]{Boolean.valueOf(z)});
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> b() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static ru<?, ?> zzcze() {
        return f3493b;
    }

    public static ru<?, ?> zzczf() {
        return c;
    }

    public static ru<?, ?> zzczg() {
        return d;
    }

    public static void zzm(Class<?> cls) {
        if (!ps.class.isAssignableFrom(cls)) {
            Class<?> cls2 = f3492a;
            if (cls2 != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
        }
    }
}
