package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class fm implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3146a;

    public fm(Looper looper) {
        this.f3146a = new Handler(looper);
    }

    public final void execute(Runnable runnable) {
        this.f3146a.post(runnable);
    }
}
