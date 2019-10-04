package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.ap;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

public final class bk {

    /* renamed from: a  reason: collision with root package name */
    private final Set<bg<?>> f2796a = Collections.newSetFromMap(new WeakHashMap());

    public static <L> bg<L> zzb(L l, Looper looper, String str) {
        ap.checkNotNull(l, "Listener must not be null");
        ap.checkNotNull(looper, "Looper must not be null");
        ap.checkNotNull(str, "Listener type must not be null");
        return new bg<>(looper, l, str);
    }

    public static <L> bi<L> zzb(L l, String str) {
        ap.checkNotNull(l, "Listener must not be null");
        ap.checkNotNull(str, "Listener type must not be null");
        ap.zzh(str, "Listener type must not be empty");
        return new bi<>(l, str);
    }

    public final void release() {
        for (bg<?> clear : this.f2796a) {
            clear.clear();
        }
        this.f2796a.clear();
    }

    public final <L> bg<L> zza(L l, Looper looper, String str) {
        bg<L> zzb = zzb(l, looper, str);
        this.f2796a.add(zzb);
        return zzb;
    }
}
