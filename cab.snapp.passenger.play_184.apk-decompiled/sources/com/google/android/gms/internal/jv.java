package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class jv<V> extends FutureTask<V> implements Comparable<jv> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f3264a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3265b = js.l.getAndIncrement();
    private final String c;
    private /* synthetic */ js d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    jv(js jsVar, Runnable runnable, String str) {
        super(runnable, null);
        this.d = jsVar;
        ap.checkNotNull(str);
        this.c = str;
        this.f3264a = false;
        if (this.f3265b == Long.MAX_VALUE) {
            jsVar.zzawy().zzazd().log("Tasks index overflow");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    jv(js jsVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        this.d = jsVar;
        ap.checkNotNull(str);
        this.c = str;
        this.f3264a = z;
        if (this.f3265b == Long.MAX_VALUE) {
            jsVar.zzawy().zzazd().log("Tasks index overflow");
        }
    }

    public final /* synthetic */ int compareTo(Object obj) {
        jv jvVar = (jv) obj;
        boolean z = this.f3264a;
        if (z != jvVar.f3264a) {
            return z ? -1 : 1;
        }
        long j = this.f3265b;
        long j2 = jvVar.f3265b;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.d.zzawy().zzaze().zzj("Two tasks share the same index. index", Long.valueOf(this.f3265b));
        return 0;
    }

    /* access modifiers changed from: protected */
    public final void setException(Throwable th) {
        this.d.zzawy().zzazd().zzj(this.c, th);
        if (th instanceof jt) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
