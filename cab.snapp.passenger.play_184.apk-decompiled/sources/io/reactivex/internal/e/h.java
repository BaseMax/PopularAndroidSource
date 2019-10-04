package io.reactivex.internal.e;

import io.reactivex.ah;
import java.util.concurrent.ThreadFactory;

public final class h extends ah {
    private static final k c = new k("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f6832b;

    public h() {
        this(c);
    }

    public h(ThreadFactory threadFactory) {
        this.f6832b = threadFactory;
    }

    public final ah.c createWorker() {
        return new i(this.f6832b);
    }
}
