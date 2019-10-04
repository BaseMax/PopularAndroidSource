package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bd;
import java.lang.ref.WeakReference;

final class o implements bd {

    /* renamed from: a  reason: collision with root package name */
    final boolean f2867a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<m> f2868b;
    private final a<?> c;

    public o(m mVar, a<?> aVar, boolean z) {
        this.f2868b = new WeakReference<>(mVar);
        this.c = aVar;
        this.f2867a = z;
    }

    public final void zzf(ConnectionResult connectionResult) {
        m mVar = (m) this.f2868b.get();
        if (mVar != null) {
            ap.zza(Looper.myLooper() == mVar.f2864a.m.getLooper(), (Object) "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            mVar.f2865b.lock();
            try {
                if (mVar.a(0)) {
                    if (!connectionResult.isSuccess()) {
                        mVar.a(connectionResult, this.c, this.f2867a);
                    }
                    if (mVar.a()) {
                        mVar.b();
                    }
                    mVar.f2865b.unlock();
                }
            } finally {
                mVar.f2865b.unlock();
            }
        }
    }
}
