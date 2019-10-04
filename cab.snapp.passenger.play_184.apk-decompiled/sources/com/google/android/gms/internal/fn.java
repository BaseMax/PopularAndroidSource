package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class fn implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f3147a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3148b;
    private final AtomicInteger c;
    private final ThreadFactory d;

    public fn(String str) {
        this(str, (byte) 0);
    }

    private fn(String str, byte b2) {
        this.c = new AtomicInteger();
        this.d = Executors.defaultThreadFactory();
        this.f3147a = (String) ap.checkNotNull(str, "Name must not be null");
        this.f3148b = 0;
    }

    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.d.newThread(new fo(runnable, 0));
        String str = this.f3147a;
        int andIncrement = this.c.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
