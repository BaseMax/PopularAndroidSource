package i.a;

import h.f.b.j;
import h.h.g;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* compiled from: DefaultExecutor.kt */
public final class M extends C1091ba implements Runnable {
    public static volatile Thread _thread;
    public static volatile int debugStatus;

    /* renamed from: f  reason: collision with root package name */
    public static final long f14647f;

    /* renamed from: g  reason: collision with root package name */
    public static final M f14648g;

    static {
        Long l2;
        M m = new M();
        f14648g = m;
        C1089aa.b(m, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        j.a((Object) l2, "try {\n            java.l…AULT_KEEP_ALIVE\n        }");
        f14647f = timeUnit.toNanos(l2.longValue());
    }

    public Thread D() {
        Thread thread = _thread;
        return thread != null ? thread : L();
    }

    public final synchronized void K() {
        if (M()) {
            debugStatus = 3;
            J();
            notifyAll();
        }
    }

    public final synchronized Thread L() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    public final boolean M() {
        int i2 = debugStatus;
        return i2 == 2 || i2 == 3;
    }

    public final synchronized boolean N() {
        if (M()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    public void run() {
        Ma.f14650b.a(this);
        Na a2 = Oa.a();
        if (a2 != null) {
            a2.a();
        }
        try {
            if (N()) {
                long j2 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long A = A();
                    if (A == Long.MAX_VALUE) {
                        if (j2 == Long.MAX_VALUE) {
                            Na a3 = Oa.a();
                            long b2 = a3 != null ? a3.b() : System.nanoTime();
                            if (j2 == Long.MAX_VALUE) {
                                j2 = f14647f + b2;
                            }
                            long j3 = j2 - b2;
                            if (j3 <= 0) {
                                _thread = null;
                                K();
                                Na a4 = Oa.a();
                                if (a4 != null) {
                                    a4.d();
                                }
                                if (!H()) {
                                    D();
                                }
                                return;
                            }
                            A = g.b(A, j3);
                        } else {
                            A = g.b(A, f14647f);
                        }
                    }
                    if (A > 0) {
                        if (M()) {
                            _thread = null;
                            K();
                            Na a5 = Oa.a();
                            if (a5 != null) {
                                a5.d();
                            }
                            if (!H()) {
                                D();
                            }
                            return;
                        }
                        Na a6 = Oa.a();
                        if (a6 != null) {
                            a6.a(this, A);
                        } else {
                            LockSupport.parkNanos(this, A);
                        }
                    }
                }
            }
        } finally {
            _thread = null;
            K();
            Na a7 = Oa.a();
            if (a7 != null) {
                a7.d();
            }
            if (!H()) {
                D();
            }
        }
    }
}
