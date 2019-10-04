package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.ik;
import com.yandex.metrica.impl.ob.im;
import com.yandex.metrica.impl.ob.z;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

public class an extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f5710a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f5711b;
    private final BlockingQueue<b> c = new LinkedBlockingQueue();
    private final Object d = new Object();
    private final Object e = new Object();
    private volatile b f;
    private as g;
    private volatile boolean h = true;

    class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final aq f5713b;

        /* synthetic */ a(an anVar, aq aqVar, byte b2) {
            this(aqVar);
        }

        private a(aq aqVar) {
            this.f5713b = aqVar;
        }

        public void run() {
            try {
                an.this.c(this.f5713b);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        final aq f5714a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5715b;

        /* synthetic */ b(aq aqVar, byte b2) {
            this(aqVar);
        }

        private b(aq aqVar) {
            this.f5714a = aqVar;
            this.f5715b = aqVar.a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f5715b.equals(((b) obj).f5715b);
        }

        public int hashCode() {
            return this.f5715b.hashCode();
        }
    }

    public an(z zVar, Executor executor) {
        this.f5710a = executor;
        this.f5711b = new ik();
        String.format(Locale.US, "[%s:%s]", new Object[]{"NetworkTaskQueue", zVar.toString()});
        this.g = new as();
    }

    public void a(aq aqVar) {
        synchronized (this.d) {
            boolean z = false;
            b bVar = new b(aqVar, (byte) 0);
            if (this.c.contains(bVar) || bVar.equals(this.f)) {
                z = true;
            }
            if (!z) {
                this.c.offer(bVar);
            }
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0033 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r5 = this;
        L_0x0000:
            boolean r0 = r5.h
            if (r0 == 0) goto L_0x004e
            r0 = 0
            java.lang.Object r1 = r5.e     // Catch:{ InterruptedException -> 0x0033 }
            monitor-enter(r1)     // Catch:{ InterruptedException -> 0x0033 }
            monitor-exit(r1)     // Catch:{ all -> 0x002e }
            java.util.concurrent.BlockingQueue<com.yandex.metrica.impl.an$b> r1 = r5.c     // Catch:{ InterruptedException -> 0x0033 }
            java.lang.Object r1 = r1.take()     // Catch:{ InterruptedException -> 0x0033 }
            com.yandex.metrica.impl.an$b r1 = (com.yandex.metrica.impl.an.b) r1     // Catch:{ InterruptedException -> 0x0033 }
            r5.f = r1     // Catch:{ InterruptedException -> 0x0033 }
            com.yandex.metrica.impl.an$b r1 = r5.f     // Catch:{ InterruptedException -> 0x0033 }
            com.yandex.metrica.impl.aq r1 = r1.f5714a     // Catch:{ InterruptedException -> 0x0033 }
            java.util.concurrent.Executor r2 = r5.b(r1)     // Catch:{ InterruptedException -> 0x0033 }
            com.yandex.metrica.impl.an$a r3 = new com.yandex.metrica.impl.an$a     // Catch:{ InterruptedException -> 0x0033 }
            r4 = 0
            r3.<init>(r5, r1, r4)     // Catch:{ InterruptedException -> 0x0033 }
            r2.execute(r3)     // Catch:{ InterruptedException -> 0x0033 }
            java.lang.Object r1 = r5.e
            monitor-enter(r1)
            r5.f = r0     // Catch:{ all -> 0x002b }
            monitor-exit(r1)     // Catch:{ all -> 0x002b }
            goto L_0x0000
        L_0x002b:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002b }
            throw r0
        L_0x002e:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002e }
            throw r2     // Catch:{ InterruptedException -> 0x0033 }
        L_0x0031:
            r1 = move-exception
            goto L_0x0044
        L_0x0033:
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0031 }
            r1.interrupt()     // Catch:{ all -> 0x0031 }
            java.lang.Object r1 = r5.e
            monitor-enter(r1)
            r5.f = r0     // Catch:{ all -> 0x0041 }
            monitor-exit(r1)     // Catch:{ all -> 0x0041 }
            goto L_0x0000
        L_0x0041:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0041 }
            throw r0
        L_0x0044:
            java.lang.Object r2 = r5.e
            monitor-enter(r2)
            r5.f = r0     // Catch:{ all -> 0x004b }
            monitor-exit(r2)     // Catch:{ all -> 0x004b }
            throw r1
        L_0x004b:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x004b }
            throw r0
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.an.run():void");
    }

    /* access modifiers changed from: package-private */
    public Executor b(aq aqVar) {
        if (aqVar.o()) {
            return this.f5710a;
        }
        return this.f5711b;
    }

    /* access modifiers changed from: package-private */
    public void c(aq aqVar) throws InterruptedException {
        boolean b2 = aqVar.b();
        im d2 = aqVar.d();
        if (b2 && !d2.b()) {
            b2 = false;
        }
        while (this.h && r0) {
            this.g.a(aqVar);
            boolean c2 = aqVar.c();
            aqVar.a(c2);
            boolean z = !c2 && aqVar.u();
            if (z) {
                Thread.sleep(aqVar.q());
            }
        }
        aqVar.g();
    }
}
