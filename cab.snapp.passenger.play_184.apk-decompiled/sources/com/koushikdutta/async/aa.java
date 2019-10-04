package com.koushikdutta.async;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;

public final class aa {

    /* renamed from: a  reason: collision with root package name */
    boolean f4447a;

    /* renamed from: b  reason: collision with root package name */
    Semaphore f4448b = new Semaphore(0);
    private Selector c;

    public final Selector getSelector() {
        return this.c;
    }

    public aa(Selector selector) {
        this.c = selector;
    }

    public final int selectNow() throws IOException {
        return this.c.selectNow();
    }

    public final void select() throws IOException {
        select(0);
    }

    public final void select(long j) throws IOException {
        try {
            this.f4448b.drainPermits();
            this.c.select(j);
        } finally {
            this.f4448b.release(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }
    }

    public final Set<SelectionKey> keys() {
        return this.c.keys();
    }

    public final Set<SelectionKey> selectedKeys() {
        return this.c.selectedKeys();
    }

    public final void close() throws IOException {
        this.c.close();
    }

    public final boolean isOpen() {
        return this.c.isOpen();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001a, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0036 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void wakeupOnce() {
        /*
            r6 = this;
            java.util.concurrent.Semaphore r0 = r6.f4448b
            boolean r0 = r0.tryAcquire()
            r1 = 1
            r0 = r0 ^ r1
            java.nio.channels.Selector r2 = r6.c
            r2.wakeup()
            if (r0 == 0) goto L_0x0010
            return
        L_0x0010:
            monitor-enter(r6)
            boolean r0 = r6.f4447a     // Catch:{ all -> 0x004e }
            if (r0 == 0) goto L_0x0017
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            return
        L_0x0017:
            r6.f4447a = r1     // Catch:{ all -> 0x004e }
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            r0 = 0
            r1 = 0
        L_0x001c:
            r2 = 100
            if (r1 >= r2) goto L_0x0046
            java.util.concurrent.Semaphore r2 = r6.f4448b     // Catch:{ InterruptedException -> 0x0036 }
            r3 = 10
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ InterruptedException -> 0x0036 }
            boolean r2 = r2.tryAcquire(r3, r5)     // Catch:{ InterruptedException -> 0x0036 }
            if (r2 == 0) goto L_0x0036
            monitor-enter(r6)
            r6.f4447a = r0     // Catch:{ all -> 0x0031 }
            monitor-exit(r6)     // Catch:{ all -> 0x0031 }
            return
        L_0x0031:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0031 }
            throw r0
        L_0x0034:
            r1 = move-exception
            goto L_0x003e
        L_0x0036:
            java.nio.channels.Selector r2 = r6.c     // Catch:{ all -> 0x0034 }
            r2.wakeup()     // Catch:{ all -> 0x0034 }
            int r1 = r1 + 1
            goto L_0x001c
        L_0x003e:
            monitor-enter(r6)
            r6.f4447a = r0     // Catch:{ all -> 0x0043 }
            monitor-exit(r6)     // Catch:{ all -> 0x0043 }
            throw r1
        L_0x0043:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0043 }
            throw r0
        L_0x0046:
            monitor-enter(r6)
            r6.f4447a = r0     // Catch:{ all -> 0x004b }
            monitor-exit(r6)     // Catch:{ all -> 0x004b }
            return
        L_0x004b:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x004b }
            throw r0
        L_0x004e:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x004e }
            goto L_0x0052
        L_0x0051:
            throw r0
        L_0x0052:
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.aa.wakeupOnce():void");
    }
}
