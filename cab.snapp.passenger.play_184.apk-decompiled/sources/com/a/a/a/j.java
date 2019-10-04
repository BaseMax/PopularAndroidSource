package com.a.a.a;

import io.fabric.sdk.android.services.b.f;
import io.fabric.sdk.android.services.concurrency.a.c;
import io.fabric.sdk.android.services.concurrency.a.d;
import io.fabric.sdk.android.services.concurrency.a.g;
import java.io.File;
import java.util.List;

final class j implements f {

    /* renamed from: a  reason: collision with root package name */
    private final ad f1688a;

    /* renamed from: b  reason: collision with root package name */
    private final z f1689b;

    public static j build(ad adVar) {
        return new j(adVar, new z(new g(new x(new d(1000, 8), 0.1d), new c(5))));
    }

    private j(ad adVar, z zVar) {
        this.f1688a = adVar;
        this.f1689b = zVar;
    }

    public final boolean send(List<File> list) {
        long nanoTime = System.nanoTime();
        if (this.f1689b.canRetry(nanoTime)) {
            if (this.f1688a.send(list)) {
                this.f1689b.reset();
                return true;
            }
            this.f1689b.recordRetry(nanoTime);
        }
        return false;
    }
}
