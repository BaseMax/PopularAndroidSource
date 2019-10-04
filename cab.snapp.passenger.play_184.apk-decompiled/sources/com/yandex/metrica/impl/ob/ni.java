package com.yandex.metrica.impl.ob;

import android.os.HandlerThread;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class ni implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f6453a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private final String f6454b;

    public ni(String str) {
        this.f6454b = str;
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, c(this.f6454b));
    }

    public HandlerThread a() {
        return new HandlerThread(c(this.f6454b));
    }

    public static Thread a(String str, Runnable runnable) {
        return new ni(str).newThread(runnable);
    }

    public static HandlerThread a(String str) {
        return new ni(str).a();
    }

    public static HandlerThread b(String str) {
        return a(String.format(Locale.US, "YMM-TH [%s]", new Object[]{str}));
    }

    public static String c(String str) {
        return str + "-" + f6453a.incrementAndGet();
    }

    public static int b() {
        return f6453a.incrementAndGet();
    }
}
