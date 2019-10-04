package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

final class af extends ax {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<z> f2757a;

    af(z zVar) {
        this.f2757a = new WeakReference<>(zVar);
    }

    public final void zzahg() {
        z zVar = (z) this.f2757a.get();
        if (zVar != null) {
            z.a(zVar);
        }
    }
}
