package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.of;
import com.google.android.gms.internal.zzcxq;
import java.lang.ref.WeakReference;

final class t extends of {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<m> f2876a;

    t(m mVar) {
        this.f2876a = new WeakReference<>(mVar);
    }

    public final void zzb(zzcxq zzcxq) {
        m mVar = (m) this.f2876a.get();
        if (mVar != null) {
            mVar.f2864a.a((ai) new u(mVar, mVar, zzcxq));
        }
    }
}
