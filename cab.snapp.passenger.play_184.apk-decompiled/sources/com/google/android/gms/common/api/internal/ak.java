package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.fn;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ak {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f2762a = Executors.newFixedThreadPool(2, new fn("GAC_Executor"));

    public static ExecutorService zzaip() {
        return f2762a;
    }
}
