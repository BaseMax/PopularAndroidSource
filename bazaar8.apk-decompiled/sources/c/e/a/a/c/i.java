package c.e.a.a.c;

import c.e.a.a.c.f;
import c.e.a.a.c.g;
import c.e.a.a.o.C0737e;
import java.lang.Exception;
import java.util.ArrayDeque;

/* compiled from: SimpleDecoder */
public abstract class i<I extends f, O extends g, E extends Exception> implements d<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    public final Thread f7551a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f7552b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayDeque<I> f7553c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    public final ArrayDeque<O> f7554d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    public final I[] f7555e;

    /* renamed from: f  reason: collision with root package name */
    public final O[] f7556f;

    /* renamed from: g  reason: collision with root package name */
    public int f7557g;

    /* renamed from: h  reason: collision with root package name */
    public int f7558h;

    /* renamed from: i  reason: collision with root package name */
    public I f7559i;

    /* renamed from: j  reason: collision with root package name */
    public E f7560j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f7561k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7562l;
    public int m;

    public i(I[] iArr, O[] oArr) {
        this.f7555e = iArr;
        this.f7557g = iArr.length;
        for (int i2 = 0; i2 < this.f7557g; i2++) {
            this.f7555e[i2] = e();
        }
        this.f7556f = oArr;
        this.f7558h = oArr.length;
        for (int i3 = 0; i3 < this.f7558h; i3++) {
            this.f7556f[i3] = f();
        }
        this.f7551a = new h(this);
        this.f7551a.start();
    }

    public abstract E a(I i2, O o, boolean z);

    public abstract E a(Throwable th);

    public final boolean d() {
        return !this.f7553c.isEmpty() && this.f7558h > 0;
    }

    public abstract I e();

    public abstract O f();

    public final void flush() {
        synchronized (this.f7552b) {
            this.f7561k = true;
            this.m = 0;
            if (this.f7559i != null) {
                b(this.f7559i);
                this.f7559i = null;
            }
            while (!this.f7553c.isEmpty()) {
                b((f) this.f7553c.removeFirst());
            }
            while (!this.f7554d.isEmpty()) {
                ((g) this.f7554d.removeFirst()).k();
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (r1.i() == false) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0037, code lost:
        r3.b(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0040, code lost:
        if (r1.h() == false) goto L_0x0047;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0042, code lost:
        r3.b(Integer.MIN_VALUE);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        r6.f7560j = a(r1, r3, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x004e, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x004f, code lost:
        r6.f7560j = a((java.lang.Throwable) r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0056, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0057, code lost:
        r6.f7560j = a((java.lang.Throwable) r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean g() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.f7552b
            monitor-enter(r0)
        L_0x0003:
            boolean r1 = r6.f7562l     // Catch:{ all -> 0x0096 }
            if (r1 != 0) goto L_0x0013
            boolean r1 = r6.d()     // Catch:{ all -> 0x0096 }
            if (r1 != 0) goto L_0x0013
            java.lang.Object r1 = r6.f7552b     // Catch:{ all -> 0x0096 }
            r1.wait()     // Catch:{ all -> 0x0096 }
            goto L_0x0003
        L_0x0013:
            boolean r1 = r6.f7562l     // Catch:{ all -> 0x0096 }
            r2 = 0
            if (r1 == 0) goto L_0x001a
            monitor-exit(r0)     // Catch:{ all -> 0x0096 }
            return r2
        L_0x001a:
            java.util.ArrayDeque<I> r1 = r6.f7553c     // Catch:{ all -> 0x0096 }
            java.lang.Object r1 = r1.removeFirst()     // Catch:{ all -> 0x0096 }
            c.e.a.a.c.f r1 = (c.e.a.a.c.f) r1     // Catch:{ all -> 0x0096 }
            O[] r3 = r6.f7556f     // Catch:{ all -> 0x0096 }
            int r4 = r6.f7558h     // Catch:{ all -> 0x0096 }
            r5 = 1
            int r4 = r4 - r5
            r6.f7558h = r4     // Catch:{ all -> 0x0096 }
            r3 = r3[r4]     // Catch:{ all -> 0x0096 }
            boolean r4 = r6.f7561k     // Catch:{ all -> 0x0096 }
            r6.f7561k = r2     // Catch:{ all -> 0x0096 }
            monitor-exit(r0)     // Catch:{ all -> 0x0096 }
            boolean r0 = r1.i()
            if (r0 == 0) goto L_0x003c
            r0 = 4
            r3.b(r0)
            goto L_0x0069
        L_0x003c:
            boolean r0 = r1.h()
            if (r0 == 0) goto L_0x0047
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r3.b(r0)
        L_0x0047:
            java.lang.Exception r0 = r6.a(r1, r3, r4)     // Catch:{ RuntimeException -> 0x0056, OutOfMemoryError -> 0x004e }
            r6.f7560j = r0     // Catch:{ RuntimeException -> 0x0056, OutOfMemoryError -> 0x004e }
            goto L_0x005d
        L_0x004e:
            r0 = move-exception
            java.lang.Exception r0 = r6.a((java.lang.Throwable) r0)
            r6.f7560j = r0
            goto L_0x005d
        L_0x0056:
            r0 = move-exception
            java.lang.Exception r0 = r6.a((java.lang.Throwable) r0)
            r6.f7560j = r0
        L_0x005d:
            E r0 = r6.f7560j
            if (r0 == 0) goto L_0x0069
            java.lang.Object r0 = r6.f7552b
            monitor-enter(r0)
            monitor-exit(r0)     // Catch:{ all -> 0x0066 }
            return r2
        L_0x0066:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0066 }
            throw r1
        L_0x0069:
            java.lang.Object r4 = r6.f7552b
            monitor-enter(r4)
            boolean r0 = r6.f7561k     // Catch:{ all -> 0x0093 }
            if (r0 == 0) goto L_0x0074
            r3.k()     // Catch:{ all -> 0x0093 }
            goto L_0x008e
        L_0x0074:
            boolean r0 = r3.h()     // Catch:{ all -> 0x0093 }
            if (r0 == 0) goto L_0x0083
            int r0 = r6.m     // Catch:{ all -> 0x0093 }
            int r0 = r0 + r5
            r6.m = r0     // Catch:{ all -> 0x0093 }
            r3.k()     // Catch:{ all -> 0x0093 }
            goto L_0x008e
        L_0x0083:
            int r0 = r6.m     // Catch:{ all -> 0x0093 }
            r3.f7549c = r0     // Catch:{ all -> 0x0093 }
            r6.m = r2     // Catch:{ all -> 0x0093 }
            java.util.ArrayDeque<O> r0 = r6.f7554d     // Catch:{ all -> 0x0093 }
            r0.addLast(r3)     // Catch:{ all -> 0x0093 }
        L_0x008e:
            r6.b(r1)     // Catch:{ all -> 0x0093 }
            monitor-exit(r4)     // Catch:{ all -> 0x0093 }
            return r5
        L_0x0093:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0093 }
            throw r0
        L_0x0096:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0096 }
            goto L_0x009a
        L_0x0099:
            throw r1
        L_0x009a:
            goto L_0x0099
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.c.i.g():boolean");
    }

    public final void h() {
        if (d()) {
            this.f7552b.notify();
        }
    }

    public final void i() {
        E e2 = this.f7560j;
        if (e2 != null) {
            throw e2;
        }
    }

    public final void j() {
        do {
            try {
            } catch (InterruptedException e2) {
                throw new IllegalStateException(e2);
            }
        } while (g());
    }

    public final O b() {
        synchronized (this.f7552b) {
            i();
            if (this.f7554d.isEmpty()) {
                return null;
            }
            O o = (g) this.f7554d.removeFirst();
            return o;
        }
    }

    public final I c() {
        I i2;
        I i3;
        synchronized (this.f7552b) {
            i();
            C0737e.b(this.f7559i == null);
            if (this.f7557g == 0) {
                i2 = null;
            } else {
                I[] iArr = this.f7555e;
                int i4 = this.f7557g - 1;
                this.f7557g = i4;
                i2 = iArr[i4];
            }
            this.f7559i = i2;
            i3 = this.f7559i;
        }
        return i3;
    }

    public final void a(int i2) {
        C0737e.b(this.f7557g == this.f7555e.length);
        for (I g2 : this.f7555e) {
            g2.g(i2);
        }
    }

    public final void a(I i2) {
        synchronized (this.f7552b) {
            i();
            C0737e.a(i2 == this.f7559i);
            this.f7553c.addLast(i2);
            h();
            this.f7559i = null;
        }
    }

    public final void b(I i2) {
        i2.g();
        I[] iArr = this.f7555e;
        int i3 = this.f7557g;
        this.f7557g = i3 + 1;
        iArr[i3] = i2;
    }

    public final void b(O o) {
        o.g();
        O[] oArr = this.f7556f;
        int i2 = this.f7558h;
        this.f7558h = i2 + 1;
        oArr[i2] = o;
    }

    public void a(O o) {
        synchronized (this.f7552b) {
            b(o);
            h();
        }
    }

    public void a() {
        synchronized (this.f7552b) {
            this.f7562l = true;
            this.f7552b.notify();
        }
        try {
            this.f7551a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
