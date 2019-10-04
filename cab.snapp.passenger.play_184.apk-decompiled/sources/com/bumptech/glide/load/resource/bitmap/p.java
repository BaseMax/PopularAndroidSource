package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.File;

final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final File f2357a = new File("/proc/self/fd");
    private static volatile p d;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f2358b;
    private volatile boolean c = true;

    static p a() {
        if (d == null) {
            synchronized (p.class) {
                if (d == null) {
                    d = new p();
                }
            }
        }
        return d;
    }

    private p() {
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean b() {
        int i = this.f2358b + 1;
        this.f2358b = i;
        if (i >= 50) {
            boolean z = false;
            this.f2358b = 0;
            int length = f2357a.list().length;
            if (length < 700) {
                z = true;
            }
            this.c = z;
            if (!this.c && Log.isLoggable("Downsampler", 5)) {
                StringBuilder sb = new StringBuilder("Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors ");
                sb.append(length);
                sb.append(", limit 700");
            }
        }
        return this.c;
    }
}
