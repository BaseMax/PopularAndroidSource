package io.reactivex.internal.e;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class k extends AtomicLong implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    final String f6835a;

    /* renamed from: b  reason: collision with root package name */
    final int f6836b;
    final boolean c;

    static final class a extends Thread implements j {
        a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public k(String str) {
        this(str, 5, false);
    }

    public k(String str, int i) {
        this(str, i, false);
    }

    public k(String str, int i, boolean z) {
        this.f6835a = str;
        this.f6836b = i;
        this.c = z;
    }

    public final Thread newThread(Runnable runnable) {
        String str = this.f6835a + '-' + incrementAndGet();
        Thread aVar = this.c ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f6836b);
        aVar.setDaemon(true);
        return aVar;
    }

    public final String toString() {
        return "RxThreadFactory[" + this.f6835a + "]";
    }
}
