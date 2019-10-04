package com.google.android.gms.internal;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

final class pr implements qq {

    /* renamed from: a  reason: collision with root package name */
    private static final pr f3449a = new pr();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Method> f3450b = new HashMap();

    private pr() {
    }

    public static pr zzcxl() {
        return f3449a;
    }

    public final boolean zzi(Class<?> cls) {
        return ps.class.isAssignableFrom(cls);
    }

    public final qp zzj(Class<?> cls) {
        if (!ps.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            Method method = this.f3450b.get(cls);
            if (method == null) {
                method = cls.getDeclaredMethod("buildMessageInfo", new Class[0]);
                method.setAccessible(true);
                this.f3450b.put(cls, method);
            }
            return (qp) method.invoke(null, new Object[0]);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
