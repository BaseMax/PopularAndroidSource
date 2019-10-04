package k;

import com.crashlytics.android.answers.RetryManager;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: k.c  reason: case insensitive filesystem */
/* compiled from: AsyncTimeout */
public class C1156c extends B {

    /* renamed from: e  reason: collision with root package name */
    public static final long f15729e = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: f  reason: collision with root package name */
    public static final long f15730f = TimeUnit.MILLISECONDS.toNanos(f15729e);

    /* renamed from: g  reason: collision with root package name */
    public static C1156c f15731g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f15732h;

    /* renamed from: i  reason: collision with root package name */
    public C1156c f15733i;

    /* renamed from: j  reason: collision with root package name */
    public long f15734j;

    /* renamed from: k.c$a */
    /* compiled from: AsyncTimeout */
    private static final class a extends Thread {
        public a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
            r1.j();
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<k.c> r0 = k.C1156c.class
                monitor-enter(r0)     // Catch:{ InterruptedException -> 0x0000 }
                k.c r1 = k.C1156c.g()     // Catch:{ all -> 0x0019 }
                if (r1 != 0) goto L_0x000b
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                goto L_0x0000
            L_0x000b:
                k.c r2 = k.C1156c.f15731g     // Catch:{ all -> 0x0019 }
                if (r1 != r2) goto L_0x0014
                r1 = 0
                k.C1156c.f15731g = r1     // Catch:{ all -> 0x0019 }
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                return
            L_0x0014:
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                r1.j()     // Catch:{ InterruptedException -> 0x0000 }
                goto L_0x0000
            L_0x0019:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                goto L_0x001d
            L_0x001c:
                throw r1
            L_0x001d:
                goto L_0x001c
            */
            throw new UnsupportedOperationException("Method not decompiled: k.C1156c.a.run():void");
        }
    }

    public static synchronized void a(C1156c cVar, long j2, boolean z) {
        synchronized (C1156c.class) {
            if (f15731g == null) {
                f15731g = new C1156c();
                new a().start();
            }
            long nanoTime = System.nanoTime();
            if (j2 != 0 && z) {
                cVar.f15734j = Math.min(j2, cVar.c() - nanoTime) + nanoTime;
            } else if (j2 != 0) {
                cVar.f15734j = j2 + nanoTime;
            } else if (z) {
                cVar.f15734j = cVar.c();
            } else {
                throw new AssertionError();
            }
            long b2 = cVar.b(nanoTime);
            C1156c cVar2 = f15731g;
            while (true) {
                if (cVar2.f15733i == null) {
                    break;
                } else if (b2 < cVar2.f15733i.b(nanoTime)) {
                    break;
                } else {
                    cVar2 = cVar2.f15733i;
                }
            }
            cVar.f15733i = cVar2.f15733i;
            cVar2.f15733i = cVar;
            if (cVar2 == f15731g) {
                C1156c.class.notify();
            }
        }
    }

    public static C1156c g() {
        C1156c cVar = f15731g.f15733i;
        C1156c cVar2 = null;
        if (cVar == null) {
            long nanoTime = System.nanoTime();
            C1156c.class.wait(f15729e);
            if (f15731g.f15733i == null && System.nanoTime() - nanoTime >= f15730f) {
                cVar2 = f15731g;
            }
            return cVar2;
        }
        long b2 = cVar.b(System.nanoTime());
        if (b2 > 0) {
            long j2 = b2 / RetryManager.NANOSECONDS_IN_MS;
            C1156c.class.wait(j2, (int) (b2 - (RetryManager.NANOSECONDS_IN_MS * j2)));
            return null;
        }
        f15731g.f15733i = cVar.f15733i;
        cVar.f15733i = null;
        return cVar;
    }

    public final long b(long j2) {
        return this.f15734j - j2;
    }

    public final void h() {
        if (!this.f15732h) {
            long f2 = f();
            boolean d2 = d();
            if (f2 != 0 || d2) {
                this.f15732h = true;
                a(this, f2, d2);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    public final boolean i() {
        if (!this.f15732h) {
            return false;
        }
        this.f15732h = false;
        return a(this);
    }

    public void j() {
    }

    public IOException b(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public static synchronized boolean a(C1156c cVar) {
        synchronized (C1156c.class) {
            for (C1156c cVar2 = f15731g; cVar2 != null; cVar2 = cVar2.f15733i) {
                if (cVar2.f15733i == cVar) {
                    cVar2.f15733i = cVar.f15733i;
                    cVar.f15733i = null;
                    return false;
                }
            }
            return true;
        }
    }

    public final y a(y yVar) {
        return new C1154a(this, yVar);
    }

    public final z a(z zVar) {
        return new C1155b(this, zVar);
    }

    public final void a(boolean z) {
        if (i() && z) {
            throw b((IOException) null);
        }
    }

    public final IOException a(IOException iOException) {
        if (!i()) {
            return iOException;
        }
        return b(iOException);
    }
}
