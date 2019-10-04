package com.google.android.gms.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

final class qz {

    /* renamed from: a  reason: collision with root package name */
    private static final qz f3482a = new qz();

    /* renamed from: b  reason: collision with root package name */
    private final rg f3483b;
    private final ConcurrentMap<Class<?>, rf<?>> c = new ConcurrentHashMap();

    private qz() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        rg rgVar = null;
        for (int i = 0; i <= 0; i++) {
            rgVar = a(strArr[0]);
            if (rgVar != null) {
                break;
            }
        }
        this.f3483b = rgVar == null ? new qh() : rgVar;
    }

    private static rg a(String str) {
        try {
            return (rg) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static qz zzcyz() {
        return f3482a;
    }

    public final <T> rf<T> zzl(Class<T> cls) {
        pu.a(cls, "messageType");
        rf<T> rfVar = (rf) this.c.get(cls);
        if (rfVar != null) {
            return rfVar;
        }
        rf<T> zzk = this.f3483b.zzk(cls);
        pu.a(cls, "messageType");
        pu.a(zzk, "schema");
        rf<T> putIfAbsent = this.c.putIfAbsent(cls, zzk);
        return putIfAbsent != null ? putIfAbsent : zzk;
    }
}
