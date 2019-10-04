package com.bumptech.glide.load.b;

import com.bumptech.glide.load.d;
import java.util.HashMap;
import java.util.Map;

final class s {

    /* renamed from: a  reason: collision with root package name */
    private final Map<d, l<?>> f2237a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<d, l<?>> f2238b = new HashMap();

    s() {
    }

    /* access modifiers changed from: package-private */
    public final Map<d, l<?>> a(boolean z) {
        return z ? this.f2238b : this.f2237a;
    }

    /* access modifiers changed from: package-private */
    public final void a(d dVar, l<?> lVar) {
        Map<d, l<?>> a2 = a(lVar.f2221b);
        if (lVar.equals(a2.get(dVar))) {
            a2.remove(dVar);
        }
    }
}
