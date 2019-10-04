package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.fn;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class bq {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f2800a;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new fn("GAC_Transform"));
        f2800a = threadPoolExecutor;
    }

    public static ExecutorService zzaip() {
        return f2800a;
    }
}
