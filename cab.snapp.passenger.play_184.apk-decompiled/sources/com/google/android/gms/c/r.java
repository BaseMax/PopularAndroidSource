package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class r<TResult> implements t<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final Object f2708a = new Object();

    /* renamed from: b  reason: collision with root package name */
    d<? super TResult> f2709b;
    private final Executor c;

    public r(Executor executor, d<? super TResult> dVar) {
        this.c = executor;
        this.f2709b = dVar;
    }

    public final void cancel() {
        synchronized (this.f2708a) {
            this.f2709b = null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0010, code lost:
        r2.c.execute(new com.google.android.gms.c.s(r2, r3));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onComplete(com.google.android.gms.c.f<TResult> r3) {
        /*
            r2 = this;
            boolean r0 = r3.isSuccessful()
            if (r0 == 0) goto L_0x001e
            java.lang.Object r0 = r2.f2708a
            monitor-enter(r0)
            com.google.android.gms.c.d<? super TResult> r1 = r2.f2709b     // Catch:{ all -> 0x001b }
            if (r1 != 0) goto L_0x000f
            monitor-exit(r0)     // Catch:{ all -> 0x001b }
            return
        L_0x000f:
            monitor-exit(r0)     // Catch:{ all -> 0x001b }
            java.util.concurrent.Executor r0 = r2.c
            com.google.android.gms.c.s r1 = new com.google.android.gms.c.s
            r1.<init>(r2, r3)
            r0.execute(r1)
            goto L_0x001e
        L_0x001b:
            r3 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x001b }
            throw r3
        L_0x001e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.r.onComplete(com.google.android.gms.c.f):void");
    }
}
