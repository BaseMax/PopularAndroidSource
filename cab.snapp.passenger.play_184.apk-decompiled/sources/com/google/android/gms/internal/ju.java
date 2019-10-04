package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.lang.Thread;

final class ju implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final String f3262a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ js f3263b;

    public ju(js jsVar, String str) {
        this.f3263b = jsVar;
        ap.checkNotNull(str);
        this.f3262a = str;
    }

    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f3263b.zzawy().zzazd().zzj(this.f3262a, th);
    }
}
