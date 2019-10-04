package com.webengage.sdk.android.actions.database;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class r {
    private static AtomicBoolean c = new AtomicBoolean(true);
    private static AtomicBoolean d = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    private AtomicBoolean f5374a = new AtomicBoolean(true);

    /* renamed from: b  reason: collision with root package name */
    private AtomicInteger f5375b = new AtomicInteger(0);

    public static void b(boolean z) {
        c.set(z);
    }

    public static void c(boolean z) {
        d.set(z);
    }

    static boolean e() {
        return c.get();
    }

    public static boolean f() {
        return d.get();
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f5374a.set(z);
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return this.f5374a.get();
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.f5375b.incrementAndGet();
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return this.f5375b.get();
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.f5375b.set(0);
    }
}
