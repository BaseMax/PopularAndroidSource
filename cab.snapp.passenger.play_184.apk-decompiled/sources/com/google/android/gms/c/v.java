package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class v implements Executor {
    v() {
    }

    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
