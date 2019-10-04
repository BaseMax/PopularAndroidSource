package com.a.a.c;

import io.fabric.sdk.android.c;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

final class n implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    final AtomicBoolean f1813a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private final a f1814b;
    private final Thread.UncaughtExceptionHandler c;

    interface a {
        void onUncaughtException(Thread thread, Throwable th);
    }

    public n(a aVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f1814b = aVar;
        this.c = uncaughtExceptionHandler;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        this.f1813a.set(true);
        try {
            this.f1814b.onUncaughtException(thread, th);
        } catch (Exception e) {
            c.getLogger().e(j.TAG, "An error occurred in the uncaught exception handler", e);
        } catch (Throwable th2) {
            c.getLogger().d(j.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.c.uncaughtException(thread, th);
            this.f1813a.set(false);
            throw th2;
        }
        c.getLogger().d(j.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
        this.c.uncaughtException(thread, th);
        this.f1813a.set(false);
    }
}
