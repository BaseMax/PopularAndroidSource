package com.google.android.gms.analytics;

import android.util.Log;
import com.google.android.gms.analytics.r;
import java.lang.Thread;
import java.util.concurrent.FutureTask;

final class t extends FutureTask<T> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ r.a f2597a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    t(r.a aVar, Runnable runnable, Object obj) {
        super(runnable, obj);
        this.f2597a = aVar;
    }

    /* access modifiers changed from: protected */
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler b2 = r.this.g;
        if (b2 != null) {
            b2.uncaughtException(Thread.currentThread(), th);
        } else if (Log.isLoggable("GAv4", 6)) {
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 37);
            sb.append("MeasurementExecutor: job failed with ");
            sb.append(valueOf);
        }
        super.setException(th);
    }
}
