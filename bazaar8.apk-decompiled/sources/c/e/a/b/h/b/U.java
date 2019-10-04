package c.e.a.b.h.b;

import c.e.a.b.d.d.r;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;

public final class U extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicLong f10760c = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: d  reason: collision with root package name */
    public X f10761d;

    /* renamed from: e  reason: collision with root package name */
    public X f10762e;

    /* renamed from: f  reason: collision with root package name */
    public final PriorityBlockingQueue<W<?>> f10763f = new PriorityBlockingQueue<>();

    /* renamed from: g  reason: collision with root package name */
    public final BlockingQueue<W<?>> f10764g = new LinkedBlockingQueue();

    /* renamed from: h  reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f10765h = new V(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: i  reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f10766i = new V(this, "Thread death: Uncaught exception on network thread");

    /* renamed from: j  reason: collision with root package name */
    public final Object f10767j = new Object();

    /* renamed from: k  reason: collision with root package name */
    public final Semaphore f10768k = new Semaphore(2);

    /* renamed from: l  reason: collision with root package name */
    public volatile boolean f10769l;

    public U(Y y) {
        super(y);
    }

    public final <V> Future<V> a(Callable<V> callable) {
        o();
        r.a(callable);
        W w = new W(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f10761d) {
            if (!this.f10763f.isEmpty()) {
                e().w().a("Callable skipped the worker queue.");
            }
            w.run();
        } else {
            a((W<?>) w);
        }
        return w;
    }

    public final <V> Future<V> b(Callable<V> callable) {
        o();
        r.a(callable);
        W w = new W(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f10761d) {
            w.run();
        } else {
            a((W<?>) w);
        }
        return w;
    }

    public final void k() {
        if (Thread.currentThread() != this.f10762e) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final void l() {
        if (Thread.currentThread() != this.f10761d) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final boolean r() {
        return false;
    }

    public final boolean t() {
        return Thread.currentThread() == this.f10761d;
    }

    public final void b(Runnable runnable) {
        o();
        r.a(runnable);
        W w = new W(this, runnable, false, "Task exception on network thread");
        synchronized (this.f10767j) {
            this.f10764g.add(w);
            if (this.f10762e == null) {
                this.f10762e = new X(this, "Measurement Network", this.f10764g);
                this.f10762e.setUncaughtExceptionHandler(this.f10766i);
                this.f10762e.start();
            } else {
                this.f10762e.a();
            }
        }
    }

    public final void a(Runnable runnable) {
        o();
        r.a(runnable);
        a((W<?>) new W(this, runnable, false, "Task exception on worker thread"));
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:16|17|(1:19)(1:20)|21|22|23) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0014, code lost:
        r2 = e().w();
        r4 = java.lang.String.valueOf(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0026, code lost:
        if (r4.length() == 0) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0028, code lost:
        r3 = "Timed out waiting for ".concat(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002d, code lost:
        r3 = new java.lang.String("Timed out waiting for ");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        r2.a(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0036, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r2 = e().w();
        r4 = java.lang.String.valueOf(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r4.length() != 0) goto L_0x004b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004b, code lost:
        r3 = "Interrupted waiting for ".concat(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0050, code lost:
        r3 = new java.lang.String("Interrupted waiting for ");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0056, code lost:
        r2.a(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005b, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x000e, code lost:
        r1 = r1.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
        if (r1 != null) goto L_0x0036;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x0037 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T> T a(java.util.concurrent.atomic.AtomicReference<T> r1, long r2, java.lang.String r4, java.lang.Runnable r5) {
        /*
            r0 = this;
            monitor-enter(r1)
            c.e.a.b.h.b.U r2 = r0.d()     // Catch:{ all -> 0x005c }
            r2.a((java.lang.Runnable) r5)     // Catch:{ all -> 0x005c }
            r2 = 15000(0x3a98, double:7.411E-320)
            r1.wait(r2)     // Catch:{ InterruptedException -> 0x0037 }
            monitor-exit(r1)     // Catch:{ all -> 0x005c }
            java.lang.Object r1 = r1.get()
            if (r1 != 0) goto L_0x0036
            c.e.a.b.h.b.t r2 = r0.e()
            c.e.a.b.h.b.v r2 = r2.w()
            java.lang.String r3 = "Timed out waiting for "
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r5 = r4.length()
            if (r5 == 0) goto L_0x002d
            java.lang.String r3 = r3.concat(r4)
            goto L_0x0033
        L_0x002d:
            java.lang.String r4 = new java.lang.String
            r4.<init>(r3)
            r3 = r4
        L_0x0033:
            r2.a(r3)
        L_0x0036:
            return r1
        L_0x0037:
            c.e.a.b.h.b.t r2 = r0.e()     // Catch:{ all -> 0x005c }
            c.e.a.b.h.b.v r2 = r2.w()     // Catch:{ all -> 0x005c }
            java.lang.String r3 = "Interrupted waiting for "
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ all -> 0x005c }
            int r5 = r4.length()     // Catch:{ all -> 0x005c }
            if (r5 == 0) goto L_0x0050
            java.lang.String r3 = r3.concat(r4)     // Catch:{ all -> 0x005c }
            goto L_0x0056
        L_0x0050:
            java.lang.String r4 = new java.lang.String     // Catch:{ all -> 0x005c }
            r4.<init>(r3)     // Catch:{ all -> 0x005c }
            r3 = r4
        L_0x0056:
            r2.a(r3)     // Catch:{ all -> 0x005c }
            r2 = 0
            monitor-exit(r1)     // Catch:{ all -> 0x005c }
            return r2
        L_0x005c:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x005c }
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.U.a(java.util.concurrent.atomic.AtomicReference, long, java.lang.String, java.lang.Runnable):java.lang.Object");
    }

    public final void a(W<?> w) {
        synchronized (this.f10767j) {
            this.f10763f.add(w);
            if (this.f10761d == null) {
                this.f10761d = new X(this, "Measurement Worker", this.f10763f);
                this.f10761d.setUncaughtExceptionHandler(this.f10765h);
                this.f10761d.start();
            } else {
                this.f10761d.a();
            }
        }
    }
}
