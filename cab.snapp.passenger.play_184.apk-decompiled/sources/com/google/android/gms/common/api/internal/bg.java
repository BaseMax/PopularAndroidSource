package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.ap;

public final class bg<L> {

    /* renamed from: a  reason: collision with root package name */
    volatile L f2791a;

    /* renamed from: b  reason: collision with root package name */
    private final bh f2792b;
    private final bi<L> c;

    bg(Looper looper, L l, String str) {
        this.f2792b = new bh(this, looper);
        this.f2791a = ap.checkNotNull(l, "Listener must not be null");
        this.c = new bi<>(l, ap.zzgm(str));
    }

    public final void clear() {
        this.f2791a = null;
    }

    public final void zza(bj<? super L> bjVar) {
        ap.checkNotNull(bjVar, "Notifier must not be null");
        this.f2792b.sendMessage(this.f2792b.obtainMessage(1, bjVar));
    }

    public final boolean zzaek() {
        return this.f2791a != null;
    }

    public final bi<L> zzajo() {
        return this.c;
    }
}
