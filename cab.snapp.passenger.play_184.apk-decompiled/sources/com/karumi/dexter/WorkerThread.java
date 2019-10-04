package com.karumi.dexter;

import android.os.Handler;
import android.os.Looper;

final class WorkerThread implements Thread {
    private final Handler handler;
    private boolean wasLooperNull = false;

    WorkerThread() {
        if (Looper.myLooper() == null) {
            this.wasLooperNull = true;
            Looper.prepare();
        }
        this.handler = new Handler();
    }

    public final void execute(Runnable runnable) {
        this.handler.post(runnable);
    }

    public final void loop() {
        if (this.wasLooperNull) {
            Looper.loop();
        }
    }
}
