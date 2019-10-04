package i.a.e;

import h.f.b.j;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: WorkQueue.kt */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14816a = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask");

    /* renamed from: b  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14817b = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex");

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14818c = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex");
    public volatile int consumerIndex = 0;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReferenceArray<h> f14819d = new AtomicReferenceArray<>(128);
    public volatile Object lastScheduledTask = null;
    public volatile int producerIndex = 0;

    public final h b() {
        h hVar = (h) f14816a.getAndSet(this, null);
        if (hVar != null) {
            return hVar;
        }
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                return null;
            }
            int i3 = i2 & 127;
            if (((h) this.f14819d.get(i3)) != null && f14818c.compareAndSet(this, i2, i2 + 1)) {
                return (h) this.f14819d.getAndSet(i3, null);
            }
        }
    }

    public final int c() {
        return this.lastScheduledTask != null ? a() + 1 : a();
    }

    public final int a() {
        return this.producerIndex - this.consumerIndex;
    }

    public final boolean a(h hVar, d dVar) {
        j.b(hVar, "task");
        j.b(dVar, "globalQueue");
        h hVar2 = (h) f14816a.getAndSet(this, hVar);
        if (hVar2 != null) {
            return b(hVar2, dVar);
        }
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v2, resolved type: i.a.e.h} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(i.a.e.m r19, i.a.e.d r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            java.lang.String r3 = "victim"
            h.f.b.j.b(r1, r3)
            java.lang.String r3 = "globalQueue"
            h.f.b.j.b(r2, r3)
            i.a.e.l r3 = i.a.e.k.f14815g
            long r3 = r3.a()
            int r5 = r19.a()
            if (r5 != 0) goto L_0x0021
            boolean r1 = r0.a(r3, r1, r2)
            return r1
        L_0x0021:
            int r5 = r5 / 2
            r6 = 1
            int r5 = h.h.g.a((int) r5, (int) r6)
            r7 = 0
            r8 = 0
            r9 = 0
        L_0x002b:
            if (r8 >= r5) goto L_0x007c
        L_0x002d:
            int r10 = r1.consumerIndex
            int r11 = r1.producerIndex
            int r11 = r10 - r11
            r12 = 0
            if (r11 != 0) goto L_0x0037
            goto L_0x0073
        L_0x0037:
            r11 = r10 & 127(0x7f, float:1.78E-43)
            java.util.concurrent.atomic.AtomicReferenceArray r13 = r19.f14819d
            java.lang.Object r13 = r13.get(r11)
            i.a.e.h r13 = (i.a.e.h) r13
            if (r13 == 0) goto L_0x002d
            long r13 = r13.f14806a
            long r13 = r3 - r13
            long r15 = i.a.e.k.f14809a
            int r17 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r17 >= 0) goto L_0x005a
            int r13 = r19.a()
            int r14 = i.a.e.k.f14810b
            if (r13 <= r14) goto L_0x0058
            goto L_0x005a
        L_0x0058:
            r13 = 0
            goto L_0x005b
        L_0x005a:
            r13 = 1
        L_0x005b:
            if (r13 != 0) goto L_0x005e
            goto L_0x0073
        L_0x005e:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r13 = f14818c
            int r14 = r10 + 1
            boolean r10 = r13.compareAndSet(r1, r10, r14)
            if (r10 == 0) goto L_0x002d
            java.util.concurrent.atomic.AtomicReferenceArray r10 = r19.f14819d
            java.lang.Object r10 = r10.getAndSet(r11, r12)
            r12 = r10
            i.a.e.h r12 = (i.a.e.h) r12
        L_0x0073:
            if (r12 == 0) goto L_0x007c
            r0.a((i.a.e.h) r12, (i.a.e.d) r2)
            int r8 = r8 + 1
            r9 = 1
            goto L_0x002b
        L_0x007c:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.e.m.a(i.a.e.m, i.a.e.d):boolean");
    }

    public final boolean b(h hVar, d dVar) {
        j.b(hVar, "task");
        j.b(dVar, "globalQueue");
        boolean z = true;
        while (!a(hVar)) {
            b(dVar);
            z = false;
        }
        return z;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v2, resolved type: i.a.e.h} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(i.a.e.d r8) {
        /*
            r7 = this;
            int r0 = r7.a()
            int r0 = r0 / 2
            r1 = 1
            int r0 = h.h.g.a((int) r0, (int) r1)
            r1 = 0
        L_0x000c:
            if (r1 >= r0) goto L_0x0043
        L_0x000e:
            int r2 = r7.consumerIndex
            int r3 = r7.producerIndex
            int r3 = r2 - r3
            r4 = 0
            if (r3 != 0) goto L_0x0018
            goto L_0x003b
        L_0x0018:
            r3 = r2 & 127(0x7f, float:1.78E-43)
            java.util.concurrent.atomic.AtomicReferenceArray r5 = r7.f14819d
            java.lang.Object r5 = r5.get(r3)
            i.a.e.h r5 = (i.a.e.h) r5
            if (r5 == 0) goto L_0x000e
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r5 = f14818c
            int r6 = r2 + 1
            boolean r2 = r5.compareAndSet(r7, r2, r6)
            if (r2 == 0) goto L_0x000e
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r7.f14819d
            java.lang.Object r2 = r2.getAndSet(r3, r4)
            r4 = r2
            i.a.e.h r4 = (i.a.e.h) r4
        L_0x003b:
            if (r4 == 0) goto L_0x0043
            r7.a((i.a.e.d) r8, (i.a.e.h) r4)
            int r1 = r1 + 1
            goto L_0x000c
        L_0x0043:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.e.m.b(i.a.e.d):void");
    }

    public final boolean a(long j2, m mVar, d dVar) {
        h hVar = (h) mVar.lastScheduledTask;
        if (hVar == null || j2 - hVar.f14806a < k.f14809a || !f14816a.compareAndSet(mVar, hVar, null)) {
            return false;
        }
        a(hVar, dVar);
        return true;
    }

    public final void a(d dVar, h hVar) {
        if (!dVar.a(hVar)) {
            throw new IllegalStateException("GlobalQueue could not be closed yet");
        }
    }

    public final void a(d dVar) {
        h hVar;
        j.b(dVar, "globalQueue");
        h hVar2 = (h) f14816a.getAndSet(this, null);
        if (hVar2 != null) {
            a(dVar, hVar2);
        }
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                hVar = null;
            } else {
                int i3 = i2 & 127;
                if (((h) this.f14819d.get(i3)) != null && f14818c.compareAndSet(this, i2, i2 + 1)) {
                    hVar = (h) this.f14819d.getAndSet(i3, null);
                }
            }
            if (hVar != null) {
                a(dVar, hVar);
            } else {
                return;
            }
        }
    }

    public final boolean a(h hVar) {
        if (a() == 127) {
            return false;
        }
        int i2 = this.producerIndex & 127;
        if (this.f14819d.get(i2) != null) {
            return false;
        }
        this.f14819d.lazySet(i2, hVar);
        f14817b.incrementAndGet(this);
        return true;
    }
}
