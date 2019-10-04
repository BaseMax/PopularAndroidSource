package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.util.concurrent.BlockingQueue;

final class jw extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3266a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<jv<?>> f3267b;
    private /* synthetic */ js c;

    public jw(js jsVar, String str, BlockingQueue<jv<?>> blockingQueue) {
        this.c = jsVar;
        ap.checkNotNull(str);
        ap.checkNotNull(blockingQueue);
        this.f3267b = blockingQueue;
        setName(str);
    }

    private final void a(InterruptedException interruptedException) {
        this.c.zzawy().zzazf().zzj(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0064, code lost:
        r0 = r5.c.i;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x006a, code lost:
        monitor-enter(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
        r5.c.j.release();
        r5.c.i.notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0083, code lost:
        if (r5 != r5.c.f3261b) goto L_0x008b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0085, code lost:
        com.google.android.gms.internal.jw unused = r5.c.f3261b = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0091, code lost:
        if (r5 != r5.c.c) goto L_0x0099;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0093, code lost:
        com.google.android.gms.internal.jw unused = r5.c.c = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0099, code lost:
        r5.c.zzawy().zzazd().log("Current scheduler thread is neither worker nor network");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00a8, code lost:
        monitor-exit(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00a9, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r5 = this;
            r0 = 0
        L_0x0001:
            if (r0 != 0) goto L_0x0013
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ InterruptedException -> 0x000e }
            java.util.concurrent.Semaphore r1 = r1.j     // Catch:{ InterruptedException -> 0x000e }
            r1.acquire()     // Catch:{ InterruptedException -> 0x000e }
            r0 = 1
            goto L_0x0001
        L_0x000e:
            r1 = move-exception
            r5.a(r1)
            goto L_0x0001
        L_0x0013:
            int r0 = android.os.Process.myTid()     // Catch:{ all -> 0x00b6 }
            int r0 = android.os.Process.getThreadPriority(r0)     // Catch:{ all -> 0x00b6 }
        L_0x001b:
            java.util.concurrent.BlockingQueue<com.google.android.gms.internal.jv<?>> r1 = r5.f3267b     // Catch:{ all -> 0x00b6 }
            java.lang.Object r1 = r1.poll()     // Catch:{ all -> 0x00b6 }
            com.google.android.gms.internal.jv r1 = (com.google.android.gms.internal.jv) r1     // Catch:{ all -> 0x00b6 }
            if (r1 == 0) goto L_0x0034
            boolean r2 = r1.f3264a     // Catch:{ all -> 0x00b6 }
            if (r2 == 0) goto L_0x002b
            r2 = r0
            goto L_0x002d
        L_0x002b:
            r2 = 10
        L_0x002d:
            android.os.Process.setThreadPriority(r2)     // Catch:{ all -> 0x00b6 }
            r1.run()     // Catch:{ all -> 0x00b6 }
            goto L_0x001b
        L_0x0034:
            java.lang.Object r1 = r5.f3266a     // Catch:{ all -> 0x00b6 }
            monitor-enter(r1)     // Catch:{ all -> 0x00b6 }
            java.util.concurrent.BlockingQueue<com.google.android.gms.internal.jv<?>> r2 = r5.f3267b     // Catch:{ all -> 0x00b3 }
            java.lang.Object r2 = r2.peek()     // Catch:{ all -> 0x00b3 }
            if (r2 != 0) goto L_0x0053
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00b3 }
            boolean r2 = r2.k     // Catch:{ all -> 0x00b3 }
            if (r2 != 0) goto L_0x0053
            java.lang.Object r2 = r5.f3266a     // Catch:{ InterruptedException -> 0x004f }
            r3 = 30000(0x7530, double:1.4822E-319)
            r2.wait(r3)     // Catch:{ InterruptedException -> 0x004f }
            goto L_0x0053
        L_0x004f:
            r2 = move-exception
            r5.a(r2)     // Catch:{ all -> 0x00b3 }
        L_0x0053:
            monitor-exit(r1)     // Catch:{ all -> 0x00b3 }
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00b6 }
            java.lang.Object r1 = r1.i     // Catch:{ all -> 0x00b6 }
            monitor-enter(r1)     // Catch:{ all -> 0x00b6 }
            java.util.concurrent.BlockingQueue<com.google.android.gms.internal.jv<?>> r2 = r5.f3267b     // Catch:{ all -> 0x00b0 }
            java.lang.Object r2 = r2.peek()     // Catch:{ all -> 0x00b0 }
            if (r2 != 0) goto L_0x00ad
            monitor-exit(r1)     // Catch:{ all -> 0x00b0 }
            com.google.android.gms.internal.js r0 = r5.c
            java.lang.Object r0 = r0.i
            monitor-enter(r0)
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            java.util.concurrent.Semaphore r1 = r1.j     // Catch:{ all -> 0x00aa }
            r1.release()     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            java.lang.Object r1 = r1.i     // Catch:{ all -> 0x00aa }
            r1.notifyAll()     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.jw r1 = r1.f3261b     // Catch:{ all -> 0x00aa }
            if (r5 != r1) goto L_0x008b
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.jw unused = r1.f3261b = null     // Catch:{ all -> 0x00aa }
            goto L_0x00a8
        L_0x008b:
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.jw r1 = r1.c     // Catch:{ all -> 0x00aa }
            if (r5 != r1) goto L_0x0099
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.jw unused = r1.c = null     // Catch:{ all -> 0x00aa }
            goto L_0x00a8
        L_0x0099:
            com.google.android.gms.internal.js r1 = r5.c     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.iz r1 = r1.zzawy()     // Catch:{ all -> 0x00aa }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x00aa }
            java.lang.String r2 = "Current scheduler thread is neither worker nor network"
            r1.log(r2)     // Catch:{ all -> 0x00aa }
        L_0x00a8:
            monitor-exit(r0)     // Catch:{ all -> 0x00aa }
            return
        L_0x00aa:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00aa }
            throw r1
        L_0x00ad:
            monitor-exit(r1)     // Catch:{ all -> 0x00b0 }
            goto L_0x001b
        L_0x00b0:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00b0 }
            throw r0     // Catch:{ all -> 0x00b6 }
        L_0x00b3:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00b3 }
            throw r0     // Catch:{ all -> 0x00b6 }
        L_0x00b6:
            r0 = move-exception
            com.google.android.gms.internal.js r1 = r5.c
            java.lang.Object r1 = r1.i
            monitor-enter(r1)
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            java.util.concurrent.Semaphore r2 = r2.j     // Catch:{ all -> 0x00fd }
            r2.release()     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            java.lang.Object r2 = r2.i     // Catch:{ all -> 0x00fd }
            r2.notifyAll()     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.jw r2 = r2.f3261b     // Catch:{ all -> 0x00fd }
            if (r5 == r2) goto L_0x00f6
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.jw r2 = r2.c     // Catch:{ all -> 0x00fd }
            if (r5 != r2) goto L_0x00e6
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.jw unused = r2.c = null     // Catch:{ all -> 0x00fd }
            goto L_0x00fb
        L_0x00e6:
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.iz r2 = r2.zzawy()     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.jb r2 = r2.zzazd()     // Catch:{ all -> 0x00fd }
            java.lang.String r3 = "Current scheduler thread is neither worker nor network"
            r2.log(r3)     // Catch:{ all -> 0x00fd }
            goto L_0x00fb
        L_0x00f6:
            com.google.android.gms.internal.js r2 = r5.c     // Catch:{ all -> 0x00fd }
            com.google.android.gms.internal.jw unused = r2.f3261b = null     // Catch:{ all -> 0x00fd }
        L_0x00fb:
            monitor-exit(r1)     // Catch:{ all -> 0x00fd }
            throw r0
        L_0x00fd:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00fd }
            goto L_0x0101
        L_0x0100:
            throw r0
        L_0x0101:
            goto L_0x0100
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jw.run():void");
    }

    public final void zzrk() {
        synchronized (this.f3266a) {
            this.f3266a.notifyAll();
        }
    }
}
