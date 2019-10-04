package com.bumptech.glide.load.b;

import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.e.i;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.e;
import com.bumptech.glide.g.f;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.h;
import com.bumptech.glide.load.b.p;
import java.util.concurrent.ExecutorService;

public final class k implements h.a, m, p.a {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2208a = Log.isLoggable("Engine", 2);

    /* renamed from: b  reason: collision with root package name */
    private final s f2209b;
    private final o c;
    private final h d;
    private final b e;
    private final y f;
    private final c g;
    private final a h;
    private final a i;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        final h.d f2210a;

        /* renamed from: b  reason: collision with root package name */
        final Pools.Pool<h<?>> f2211b = com.bumptech.glide.g.a.a.threadSafe(150, new a.C0038a<h<?>>() {
            public final h<?> create() {
                return new h<>(a.this.f2210a, a.this.f2211b);
            }
        });
        int c;

        a(h.d dVar) {
            this.f2210a = dVar;
        }
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.load.b.c.a f2213a;

        /* renamed from: b  reason: collision with root package name */
        final com.bumptech.glide.load.b.c.a f2214b;
        final com.bumptech.glide.load.b.c.a c;
        final com.bumptech.glide.load.b.c.a d;
        final m e;
        final Pools.Pool<l<?>> f = com.bumptech.glide.g.a.a.threadSafe(150, new a.C0038a<l<?>>() {
            public final l<?> create() {
                l lVar = new l(b.this.f2213a, b.this.f2214b, b.this.c, b.this.d, b.this.e, b.this.f);
                return lVar;
            }
        });

        b(com.bumptech.glide.load.b.c.a aVar, com.bumptech.glide.load.b.c.a aVar2, com.bumptech.glide.load.b.c.a aVar3, com.bumptech.glide.load.b.c.a aVar4, m mVar) {
            this.f2213a = aVar;
            this.f2214b = aVar2;
            this.c = aVar3;
            this.d = aVar4;
            this.e = mVar;
        }
    }

    static class c implements h.d {

        /* renamed from: a  reason: collision with root package name */
        private final a.C0040a f2216a;

        /* renamed from: b  reason: collision with root package name */
        private volatile com.bumptech.glide.load.b.b.a f2217b;

        c(a.C0040a aVar) {
            this.f2216a = aVar;
        }

        /* access modifiers changed from: package-private */
        public final synchronized void a() {
            if (this.f2217b != null) {
                this.f2217b.clear();
            }
        }

        public final com.bumptech.glide.load.b.b.a getDiskCache() {
            if (this.f2217b == null) {
                synchronized (this) {
                    if (this.f2217b == null) {
                        this.f2217b = this.f2216a.build();
                    }
                    if (this.f2217b == null) {
                        this.f2217b = new com.bumptech.glide.load.b.b.b();
                    }
                }
            }
            return this.f2217b;
        }
    }

    public class d {

        /* renamed from: b  reason: collision with root package name */
        private final l<?> f2219b;
        private final i c;

        d(i iVar, l<?> lVar) {
            this.c = iVar;
            this.f2219b = lVar;
        }

        public final void cancel() {
            synchronized (k.this) {
                this.f2219b.c(this.c);
            }
        }
    }

    public k(com.bumptech.glide.load.b.b.h hVar, a.C0040a aVar, com.bumptech.glide.load.b.c.a aVar2, com.bumptech.glide.load.b.c.a aVar3, com.bumptech.glide.load.b.c.a aVar4, com.bumptech.glide.load.b.c.a aVar5, boolean z) {
        this(hVar, aVar, aVar2, aVar3, aVar4, aVar5, z, (byte) 0);
    }

    private k(com.bumptech.glide.load.b.b.h hVar, a.C0040a aVar, com.bumptech.glide.load.b.c.a aVar2, com.bumptech.glide.load.b.c.a aVar3, com.bumptech.glide.load.b.c.a aVar4, com.bumptech.glide.load.b.c.a aVar5, boolean z, byte b2) {
        this.d = hVar;
        this.g = new c(aVar);
        a aVar6 = new a(z);
        this.i = aVar6;
        synchronized (this) {
            synchronized (aVar6) {
                aVar6.d = this;
            }
        }
        this.c = new o();
        this.f2209b = new s();
        b bVar = new b(aVar2, aVar3, aVar4, aVar5, this);
        this.e = bVar;
        this.h = new a(this.g);
        this.f = new y();
        hVar.setResourceRemovedListener(this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0061, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0099, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized <R> com.bumptech.glide.load.b.k.d load(com.bumptech.glide.e r18, java.lang.Object r19, com.bumptech.glide.load.d r20, int r21, int r22, java.lang.Class<?> r23, java.lang.Class<R> r24, com.bumptech.glide.Priority r25, com.bumptech.glide.load.b.j r26, java.util.Map<java.lang.Class<?>, com.bumptech.glide.load.j<?>> r27, boolean r28, boolean r29, com.bumptech.glide.load.g r30, boolean r31, boolean r32, boolean r33, boolean r34, com.bumptech.glide.e.i r35, java.util.concurrent.Executor r36) {
        /*
            r17 = this;
            r1 = r17
            r0 = r18
            r11 = r19
            r12 = r20
            r13 = r21
            r14 = r22
            r15 = r25
            r10 = r26
            r9 = r30
            r8 = r34
            r7 = r35
            r6 = r36
            monitor-enter(r17)
            boolean r2 = f2208a     // Catch:{ all -> 0x0174 }
            if (r2 == 0) goto L_0x0022
            long r2 = com.bumptech.glide.g.f.getLogTime()     // Catch:{ all -> 0x0174 }
            goto L_0x0024
        L_0x0022:
            r2 = 0
        L_0x0024:
            r4 = r2
            com.bumptech.glide.load.b.n r3 = new com.bumptech.glide.load.b.n     // Catch:{ all -> 0x0174 }
            r2 = r3
            r15 = r3
            r3 = r19
            r13 = r4
            r4 = r20
            r5 = r21
            r12 = r6
            r6 = r22
            r11 = r7
            r7 = r27
            r0 = r8
            r8 = r23
            r9 = r24
            r10 = r30
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch:{ all -> 0x0174 }
            r2 = 0
            if (r31 != 0) goto L_0x0045
            r3 = r2
            goto L_0x0050
        L_0x0045:
            com.bumptech.glide.load.b.a r3 = r1.i     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.p r3 = r3.b(r15)     // Catch:{ all -> 0x0174 }
            if (r3 == 0) goto L_0x0050
            r3.a()     // Catch:{ all -> 0x0174 }
        L_0x0050:
            if (r3 == 0) goto L_0x0062
            com.bumptech.glide.load.DataSource r0 = com.bumptech.glide.load.DataSource.MEMORY_CACHE     // Catch:{ all -> 0x0174 }
            r11.onResourceReady(r3, r0)     // Catch:{ all -> 0x0174 }
            boolean r0 = f2208a     // Catch:{ all -> 0x0174 }
            if (r0 == 0) goto L_0x0060
            java.lang.String r0 = "Loaded resource from active resources"
            a(r0, r13, r15)     // Catch:{ all -> 0x0174 }
        L_0x0060:
            monitor-exit(r17)
            return r2
        L_0x0062:
            if (r31 != 0) goto L_0x0066
            r3 = r2
            goto L_0x0088
        L_0x0066:
            com.bumptech.glide.load.b.b.h r3 = r1.d     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.v r3 = r3.remove(r15)     // Catch:{ all -> 0x0174 }
            if (r3 != 0) goto L_0x0070
            r3 = r2
            goto L_0x007e
        L_0x0070:
            boolean r4 = r3 instanceof com.bumptech.glide.load.b.p     // Catch:{ all -> 0x0174 }
            if (r4 == 0) goto L_0x0077
            com.bumptech.glide.load.b.p r3 = (com.bumptech.glide.load.b.p) r3     // Catch:{ all -> 0x0174 }
            goto L_0x007e
        L_0x0077:
            com.bumptech.glide.load.b.p r4 = new com.bumptech.glide.load.b.p     // Catch:{ all -> 0x0174 }
            r5 = 1
            r4.<init>(r3, r5, r5)     // Catch:{ all -> 0x0174 }
            r3 = r4
        L_0x007e:
            if (r3 == 0) goto L_0x0088
            r3.a()     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.a r4 = r1.i     // Catch:{ all -> 0x0174 }
            r4.a(r15, r3)     // Catch:{ all -> 0x0174 }
        L_0x0088:
            if (r3 == 0) goto L_0x009a
            com.bumptech.glide.load.DataSource r0 = com.bumptech.glide.load.DataSource.MEMORY_CACHE     // Catch:{ all -> 0x0174 }
            r11.onResourceReady(r3, r0)     // Catch:{ all -> 0x0174 }
            boolean r0 = f2208a     // Catch:{ all -> 0x0174 }
            if (r0 == 0) goto L_0x0098
            java.lang.String r0 = "Loaded resource from cache"
            a(r0, r13, r15)     // Catch:{ all -> 0x0174 }
        L_0x0098:
            monitor-exit(r17)
            return r2
        L_0x009a:
            com.bumptech.glide.load.b.s r2 = r1.f2209b     // Catch:{ all -> 0x0174 }
            java.util.Map r2 = r2.a(r0)     // Catch:{ all -> 0x0174 }
            java.lang.Object r2 = r2.get(r15)     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.l r2 = (com.bumptech.glide.load.b.l) r2     // Catch:{ all -> 0x0174 }
            if (r2 == 0) goto L_0x00bb
            r2.a(r11, r12)     // Catch:{ all -> 0x0174 }
            boolean r0 = f2208a     // Catch:{ all -> 0x0174 }
            if (r0 == 0) goto L_0x00b4
            java.lang.String r0 = "Added to existing load"
            a(r0, r13, r15)     // Catch:{ all -> 0x0174 }
        L_0x00b4:
            com.bumptech.glide.load.b.k$d r0 = new com.bumptech.glide.load.b.k$d     // Catch:{ all -> 0x0174 }
            r0.<init>(r11, r2)     // Catch:{ all -> 0x0174 }
            monitor-exit(r17)
            return r0
        L_0x00bb:
            com.bumptech.glide.load.b.k$b r2 = r1.e     // Catch:{ all -> 0x0174 }
            androidx.core.util.Pools$Pool<com.bumptech.glide.load.b.l<?>> r2 = r2.f     // Catch:{ all -> 0x0174 }
            java.lang.Object r2 = r2.acquire()     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.l r2 = (com.bumptech.glide.load.b.l) r2     // Catch:{ all -> 0x0174 }
            java.lang.Object r2 = com.bumptech.glide.g.j.checkNotNull(r2)     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.l r2 = (com.bumptech.glide.load.b.l) r2     // Catch:{ all -> 0x0174 }
            r3 = r15
            r4 = r31
            r5 = r32
            r6 = r33
            r7 = r34
            com.bumptech.glide.load.b.l r2 = r2.a(r3, r4, r5, r6, r7)     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.k$a r3 = r1.h     // Catch:{ all -> 0x0174 }
            androidx.core.util.Pools$Pool<com.bumptech.glide.load.b.h<?>> r4 = r3.f2211b     // Catch:{ all -> 0x0174 }
            java.lang.Object r4 = r4.acquire()     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.h r4 = (com.bumptech.glide.load.b.h) r4     // Catch:{ all -> 0x0174 }
            java.lang.Object r4 = com.bumptech.glide.g.j.checkNotNull(r4)     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.h r4 = (com.bumptech.glide.load.b.h) r4     // Catch:{ all -> 0x0174 }
            int r5 = r3.c     // Catch:{ all -> 0x0174 }
            int r6 = r5 + 1
            r3.c = r6     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.g<R> r3 = r4.f2194a     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.h$d r6 = r4.f2195b     // Catch:{ all -> 0x0174 }
            r7 = r0
            r0 = r18
            r3.f2192a = r0     // Catch:{ all -> 0x0174 }
            r8 = r19
            r9 = r11
            r3.f2193b = r8     // Catch:{ all -> 0x0174 }
            r10 = r20
            r11 = r12
            r3.j = r10     // Catch:{ all -> 0x0174 }
            r12 = r21
            r3.c = r12     // Catch:{ all -> 0x0174 }
            r16 = r15
            r15 = r22
            r3.d = r15     // Catch:{ all -> 0x0174 }
            r31 = r13
            r13 = r26
            r3.l = r13     // Catch:{ all -> 0x0174 }
            r14 = r23
            r3.e = r14     // Catch:{ all -> 0x0174 }
            r3.f = r6     // Catch:{ all -> 0x0174 }
            r6 = r24
            r3.i = r6     // Catch:{ all -> 0x0174 }
            r6 = r25
            r14 = r16
            r3.k = r6     // Catch:{ all -> 0x0174 }
            r9 = r30
            r3.g = r9     // Catch:{ all -> 0x0174 }
            r11 = r27
            r3.h = r11     // Catch:{ all -> 0x0174 }
            r11 = r28
            r3.m = r11     // Catch:{ all -> 0x0174 }
            r11 = r29
            r3.n = r11     // Catch:{ all -> 0x0174 }
            r4.e = r0     // Catch:{ all -> 0x0174 }
            r4.f = r10     // Catch:{ all -> 0x0174 }
            r4.g = r6     // Catch:{ all -> 0x0174 }
            r4.h = r14     // Catch:{ all -> 0x0174 }
            r4.i = r12     // Catch:{ all -> 0x0174 }
            r4.j = r15     // Catch:{ all -> 0x0174 }
            r4.k = r13     // Catch:{ all -> 0x0174 }
            r4.p = r7     // Catch:{ all -> 0x0174 }
            r4.l = r9     // Catch:{ all -> 0x0174 }
            r4.m = r2     // Catch:{ all -> 0x0174 }
            r4.n = r5     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.h$f r0 = com.bumptech.glide.load.b.h.f.INITIALIZE     // Catch:{ all -> 0x0174 }
            r4.o = r0     // Catch:{ all -> 0x0174 }
            r4.q = r8     // Catch:{ all -> 0x0174 }
            com.bumptech.glide.load.b.s r0 = r1.f2209b     // Catch:{ all -> 0x0174 }
            boolean r3 = r2.f2221b     // Catch:{ all -> 0x0174 }
            java.util.Map r0 = r0.a(r3)     // Catch:{ all -> 0x0174 }
            r0.put(r14, r2)     // Catch:{ all -> 0x0174 }
            r0 = r35
            r3 = r36
            r2.a(r0, r3)     // Catch:{ all -> 0x0174 }
            r2.start(r4)     // Catch:{ all -> 0x0174 }
            boolean r3 = f2208a     // Catch:{ all -> 0x0174 }
            if (r3 == 0) goto L_0x016d
            java.lang.String r3 = "Started new load"
            r4 = r31
            a(r3, r4, r14)     // Catch:{ all -> 0x0174 }
        L_0x016d:
            com.bumptech.glide.load.b.k$d r3 = new com.bumptech.glide.load.b.k$d     // Catch:{ all -> 0x0174 }
            r3.<init>(r0, r2)     // Catch:{ all -> 0x0174 }
            monitor-exit(r17)
            return r3
        L_0x0174:
            r0 = move-exception
            monitor-exit(r17)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.k.load(com.bumptech.glide.e, java.lang.Object, com.bumptech.glide.load.d, int, int, java.lang.Class, java.lang.Class, com.bumptech.glide.Priority, com.bumptech.glide.load.b.j, java.util.Map, boolean, boolean, com.bumptech.glide.load.g, boolean, boolean, boolean, boolean, com.bumptech.glide.e.i, java.util.concurrent.Executor):com.bumptech.glide.load.b.k$d");
    }

    private static void a(String str, long j, com.bumptech.glide.load.d dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(f.getElapsedMillis(j));
        sb.append("ms, key: ");
        sb.append(dVar);
    }

    public final void release(v<?> vVar) {
        if (vVar instanceof p) {
            ((p) vVar).b();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    public final synchronized void onEngineJobComplete(l<?> lVar, com.bumptech.glide.load.d dVar, p<?> pVar) {
        if (pVar != null) {
            pVar.a(dVar, this);
            if (pVar.f2231a) {
                this.i.a(dVar, pVar);
            }
        }
        this.f2209b.a(dVar, lVar);
    }

    public final synchronized void onEngineJobCancelled(l<?> lVar, com.bumptech.glide.load.d dVar) {
        this.f2209b.a(dVar, lVar);
    }

    public final void onResourceRemoved(v<?> vVar) {
        this.f.a(vVar);
    }

    public final synchronized void onResourceReleased(com.bumptech.glide.load.d dVar, p<?> pVar) {
        this.i.a(dVar);
        if (pVar.f2231a) {
            this.d.put(dVar, pVar);
        } else {
            this.f.a(pVar);
        }
    }

    public final void clearDiskCache() {
        this.g.getDiskCache().clear();
    }

    public final void shutdown() {
        b bVar = this.e;
        e.shutdownAndAwaitTermination(bVar.f2213a);
        e.shutdownAndAwaitTermination(bVar.f2214b);
        e.shutdownAndAwaitTermination(bVar.c);
        e.shutdownAndAwaitTermination(bVar.d);
        this.g.a();
        a aVar = this.i;
        aVar.e = true;
        if (aVar.f2118a instanceof ExecutorService) {
            e.shutdownAndAwaitTermination((ExecutorService) aVar.f2118a);
        }
    }
}
