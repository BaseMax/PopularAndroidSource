package com.bumptech.glide.load.b;

import android.os.Process;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.p;
import com.bumptech.glide.load.d;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

final class a {

    /* renamed from: a  reason: collision with root package name */
    final Executor f2118a;

    /* renamed from: b  reason: collision with root package name */
    final Map<d, b> f2119b;
    final ReferenceQueue<p<?>> c;
    p.a d;
    volatile boolean e;
    volatile C0039a f;
    private final boolean g;

    /* renamed from: com.bumptech.glide.load.b.a$a  reason: collision with other inner class name */
    interface C0039a {
        void onResourceDequeued();
    }

    static final class b extends WeakReference<p<?>> {

        /* renamed from: a  reason: collision with root package name */
        final d f2123a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f2124b;
        v<?> c;

        b(d dVar, p<?> pVar, ReferenceQueue<? super p<?>> referenceQueue, boolean z) {
            super(pVar, referenceQueue);
            this.f2123a = (d) j.checkNotNull(dVar);
            this.c = (!pVar.f2231a || !z) ? null : (v) j.checkNotNull(pVar.f2232b);
            this.f2124b = pVar.f2231a;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.c = null;
            clear();
        }
    }

    a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactory() {
            public final Thread newThread(final Runnable runnable) {
                return new Thread(new Runnable() {
                    public final void run() {
                        Process.setThreadPriority(10);
                        runnable.run();
                    }
                }, "glide-active-resources");
            }
        }));
    }

    private a(boolean z, Executor executor) {
        this.f2119b = new HashMap();
        this.c = new ReferenceQueue<>();
        this.g = z;
        this.f2118a = executor;
        executor.execute(new Runnable() {
            public final void run() {
                a aVar = a.this;
                while (!aVar.e) {
                    try {
                        aVar.a((b) aVar.c.remove());
                        C0039a aVar2 = aVar.f;
                        if (aVar2 != null) {
                            aVar2.onResourceDequeued();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(d dVar, p<?> pVar) {
        b put = this.f2119b.put(dVar, new b(dVar, pVar, this.c, this.g));
        if (put != null) {
            put.a();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(d dVar) {
        b remove = this.f2119b.remove(dVar);
        if (remove != null) {
            remove.a();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001a, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized com.bumptech.glide.load.b.p<?> b(com.bumptech.glide.load.d r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.Map<com.bumptech.glide.load.d, com.bumptech.glide.load.b.a$b> r0 = r1.f2119b     // Catch:{ all -> 0x001b }
            java.lang.Object r2 = r0.get(r2)     // Catch:{ all -> 0x001b }
            com.bumptech.glide.load.b.a$b r2 = (com.bumptech.glide.load.b.a.b) r2     // Catch:{ all -> 0x001b }
            if (r2 != 0) goto L_0x000e
            r2 = 0
            monitor-exit(r1)
            return r2
        L_0x000e:
            java.lang.Object r0 = r2.get()     // Catch:{ all -> 0x001b }
            com.bumptech.glide.load.b.p r0 = (com.bumptech.glide.load.b.p) r0     // Catch:{ all -> 0x001b }
            if (r0 != 0) goto L_0x0019
            r1.a((com.bumptech.glide.load.b.a.b) r2)     // Catch:{ all -> 0x001b }
        L_0x0019:
            monitor-exit(r1)
            return r0
        L_0x001b:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.b(com.bumptech.glide.load.d):com.bumptech.glide.load.b.p");
    }

    /* access modifiers changed from: package-private */
    public final void a(b bVar) {
        synchronized (this.d) {
            synchronized (this) {
                this.f2119b.remove(bVar.f2123a);
                if (bVar.f2124b) {
                    if (bVar.c != null) {
                        p pVar = new p(bVar.c, true, false);
                        pVar.a(bVar.f2123a, this.d);
                        this.d.onResourceReleased(bVar.f2123a, pVar);
                    }
                }
            }
        }
    }
}
