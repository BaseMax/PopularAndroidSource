package com.google.firebase.a;

import android.content.Context;
import com.google.firebase.b;
import com.google.firebase.d;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<c> f4042a = new AtomicReference<>();

    private c() {
    }

    public static c zzcjr() {
        return f4042a.get();
    }

    public static Set<String> zzcjs() {
        return Collections.emptySet();
    }

    public static c zzew(Context context) {
        f4042a.compareAndSet(null, new c());
        return f4042a.get();
    }

    public static void zzg(b bVar) {
    }

    public static d zzrq(String str) {
        return null;
    }
}
