package b.i.h;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.Callable;

/* compiled from: SelfDestructiveThread */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public final Object f2700a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public HandlerThread f2701b;

    /* renamed from: c  reason: collision with root package name */
    public Handler f2702c;

    /* renamed from: d  reason: collision with root package name */
    public int f2703d;

    /* renamed from: e  reason: collision with root package name */
    public Handler.Callback f2704e = new g(this);

    /* renamed from: f  reason: collision with root package name */
    public final int f2705f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2706g;

    /* renamed from: h  reason: collision with root package name */
    public final String f2707h;

    /* compiled from: SelfDestructiveThread */
    public interface a<T> {
        void a(T t);
    }

    public k(String str, int i2, int i3) {
        this.f2707h = str;
        this.f2706g = i2;
        this.f2705f = i3;
        this.f2703d = 0;
    }

    public <T> void a(Callable<T> callable, a<T> aVar) {
        b(new i(this, callable, new Handler(), aVar));
    }

    public final void b(Runnable runnable) {
        synchronized (this.f2700a) {
            if (this.f2701b == null) {
                this.f2701b = new HandlerThread(this.f2707h, this.f2706g);
                this.f2701b.start();
                this.f2702c = new Handler(this.f2701b.getLooper(), this.f2704e);
                this.f2703d++;
            }
            this.f2702c.removeMessages(0);
            this.f2702c.sendMessage(this.f2702c.obtainMessage(1, runnable));
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:9|10|11|12|(4:25|14|15|16)(1:17)) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x003f */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0045 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T a(java.util.concurrent.Callable<T> r13, int r14) {
        /*
            r12 = this;
            java.util.concurrent.locks.ReentrantLock r7 = new java.util.concurrent.locks.ReentrantLock
            r7.<init>()
            java.util.concurrent.locks.Condition r8 = r7.newCondition()
            java.util.concurrent.atomic.AtomicReference r9 = new java.util.concurrent.atomic.AtomicReference
            r9.<init>()
            java.util.concurrent.atomic.AtomicBoolean r10 = new java.util.concurrent.atomic.AtomicBoolean
            r0 = 1
            r10.<init>(r0)
            b.i.h.j r11 = new b.i.h.j
            r0 = r11
            r1 = r12
            r2 = r9
            r3 = r13
            r4 = r7
            r5 = r10
            r6 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r12.b(r11)
            r7.lock()
            boolean r13 = r10.get()     // Catch:{ all -> 0x005c }
            if (r13 != 0) goto L_0x0034
            java.lang.Object r13 = r9.get()     // Catch:{ all -> 0x005c }
            r7.unlock()
            return r13
        L_0x0034:
            java.util.concurrent.TimeUnit r13 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ all -> 0x005c }
            long r0 = (long) r14     // Catch:{ all -> 0x005c }
            long r13 = r13.toNanos(r0)     // Catch:{ all -> 0x005c }
        L_0x003b:
            long r13 = r8.awaitNanos(r13)     // Catch:{ InterruptedException -> 0x003f }
        L_0x003f:
            boolean r0 = r10.get()     // Catch:{ all -> 0x005c }
            if (r0 != 0) goto L_0x004d
            java.lang.Object r13 = r9.get()     // Catch:{ all -> 0x005c }
            r7.unlock()
            return r13
        L_0x004d:
            r0 = 0
            int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r2 <= 0) goto L_0x0054
            goto L_0x003b
        L_0x0054:
            java.lang.InterruptedException r13 = new java.lang.InterruptedException     // Catch:{ all -> 0x005c }
            java.lang.String r14 = "timeout"
            r13.<init>(r14)     // Catch:{ all -> 0x005c }
            throw r13     // Catch:{ all -> 0x005c }
        L_0x005c:
            r13 = move-exception
            r7.unlock()
            goto L_0x0062
        L_0x0061:
            throw r13
        L_0x0062:
            goto L_0x0061
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.h.k.a(java.util.concurrent.Callable, int):java.lang.Object");
    }

    public void a(Runnable runnable) {
        runnable.run();
        synchronized (this.f2700a) {
            this.f2702c.removeMessages(0);
            this.f2702c.sendMessageDelayed(this.f2702c.obtainMessage(0), (long) this.f2705f);
        }
    }

    public void a() {
        synchronized (this.f2700a) {
            if (!this.f2702c.hasMessages(1)) {
                this.f2701b.quit();
                this.f2701b = null;
                this.f2702c = null;
            }
        }
    }
}
