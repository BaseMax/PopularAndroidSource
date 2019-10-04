package com.a.a.b;

import android.app.Activity;
import io.fabric.sdk.android.a;
import java.util.concurrent.ExecutorService;

final class b extends a {
    final ExecutorService c;
    private final a.b d = new a.b() {
        public final void onActivityStarted(Activity activity) {
            b bVar = b.this;
            bVar.f1702b.set(true);
            if (bVar.f1701a.get()) {
                b.this.c.submit(new Runnable() {
                    public final void run() {
                        b.this.a();
                    }
                });
            }
        }
    };

    public final boolean isActivityLifecycleTriggered() {
        return true;
    }

    public b(a aVar, ExecutorService executorService) {
        this.c = executorService;
        aVar.registerCallbacks(this.d);
    }
}
