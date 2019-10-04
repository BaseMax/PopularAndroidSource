package com.webengage.sdk.android.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class j {

    /* renamed from: a  reason: collision with root package name */
    public static j f5601a = new j();

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f5602b = Executors.newSingleThreadExecutor();

    private j() {
    }

    public static j a() {
        return f5601a;
    }

    public void a(Runnable runnable) {
        this.f5602b.execute(runnable);
    }
}
