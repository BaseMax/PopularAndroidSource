package com.google.android.gms.internal;

import java.lang.Thread;

final class aa implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ z f3044a;

    aa(z zVar) {
        this.f3044a = zVar;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        bp zzxh = this.f3044a.zzxh();
        if (zzxh != null) {
            zzxh.zze("Job execution failed", th);
        }
    }
}
