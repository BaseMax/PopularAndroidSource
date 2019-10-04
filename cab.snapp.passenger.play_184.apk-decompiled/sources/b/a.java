package b;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class a extends w {
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    @Nullable
    static a head;
    private boolean inQueue;
    @Nullable
    private a next;
    private long timeoutAt;

    /* renamed from: b.a$a  reason: collision with other inner class name */
    static final class C0011a extends Thread {
        C0011a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
            r1.timedOut();
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<b.a> r0 = b.a.class
                monitor-enter(r0)     // Catch:{ InterruptedException -> 0x0000 }
                b.a r1 = b.a.awaitTimeout()     // Catch:{ all -> 0x0019 }
                if (r1 != 0) goto L_0x000b
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                goto L_0x0000
            L_0x000b:
                b.a r2 = b.a.head     // Catch:{ all -> 0x0019 }
                if (r1 != r2) goto L_0x0014
                r1 = 0
                b.a.head = r1     // Catch:{ all -> 0x0019 }
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                return
            L_0x0014:
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                r1.timedOut()     // Catch:{ InterruptedException -> 0x0000 }
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
            throw new UnsupportedOperationException("Method not decompiled: b.a.C0011a.run():void");
        }
    }

    /* access modifiers changed from: protected */
    public void timedOut() {
    }

    public final void enter() {
        if (!this.inQueue) {
            long timeoutNanos = timeoutNanos();
            boolean hasDeadline = hasDeadline();
            if (timeoutNanos != 0 || hasDeadline) {
                this.inQueue = true;
                scheduleTimeout(this, timeoutNanos, hasDeadline);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    private static synchronized void scheduleTimeout(a aVar, long j, boolean z) {
        Class<a> cls = a.class;
        synchronized (cls) {
            if (head == null) {
                head = new a();
                new C0011a().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                aVar.timeoutAt = Math.min(j, aVar.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                aVar.timeoutAt = j + nanoTime;
            } else if (z) {
                aVar.timeoutAt = aVar.deadlineNanoTime();
            } else {
                throw new AssertionError();
            }
            long remainingNanos = aVar.remainingNanos(nanoTime);
            a aVar2 = head;
            while (true) {
                if (aVar2.next == null) {
                    break;
                } else if (remainingNanos < aVar2.next.remainingNanos(nanoTime)) {
                    break;
                } else {
                    aVar2 = aVar2.next;
                }
            }
            aVar.next = aVar2.next;
            aVar2.next = aVar;
            if (aVar2 == head) {
                cls.notify();
            }
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    private static synchronized boolean cancelScheduledTimeout(a aVar) {
        synchronized (a.class) {
            for (a aVar2 = head; aVar2 != null; aVar2 = aVar2.next) {
                if (aVar2.next == aVar) {
                    aVar2.next = aVar.next;
                    aVar.next = null;
                    return false;
                }
            }
            return true;
        }
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    public final u sink(final u uVar) {
        return new u() {
            public final void write(c cVar, long j) throws IOException {
                x.checkOffsetAndCount(cVar.f135b, 0, j);
                while (true) {
                    long j2 = 0;
                    if (j > 0) {
                        r rVar = cVar.f134a;
                        while (true) {
                            if (j2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                                break;
                            }
                            j2 += (long) (rVar.c - rVar.f163b);
                            if (j2 >= j) {
                                j2 = j;
                                break;
                            }
                            rVar = rVar.f;
                        }
                        a.this.enter();
                        try {
                            uVar.write(cVar, j2);
                            j -= j2;
                            a.this.exit(true);
                        } catch (IOException e) {
                            throw a.this.exit(e);
                        } catch (Throwable th) {
                            a.this.exit(false);
                            throw th;
                        }
                    } else {
                        return;
                    }
                }
            }

            public final void flush() throws IOException {
                a.this.enter();
                try {
                    uVar.flush();
                    a.this.exit(true);
                } catch (IOException e) {
                    throw a.this.exit(e);
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            public final void close() throws IOException {
                a.this.enter();
                try {
                    uVar.close();
                    a.this.exit(true);
                } catch (IOException e) {
                    throw a.this.exit(e);
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            public final w timeout() {
                return a.this;
            }

            public final String toString() {
                return "AsyncTimeout.sink(" + uVar + ")";
            }
        };
    }

    public final v source(final v vVar) {
        return new v() {
            public final long read(c cVar, long j) throws IOException {
                a.this.enter();
                try {
                    long read = vVar.read(cVar, j);
                    a.this.exit(true);
                    return read;
                } catch (IOException e) {
                    throw a.this.exit(e);
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            public final void close() throws IOException {
                try {
                    vVar.close();
                    a.this.exit(true);
                } catch (IOException e) {
                    throw a.this.exit(e);
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            public final w timeout() {
                return a.this;
            }

            public final String toString() {
                return "AsyncTimeout.source(" + vVar + ")";
            }
        };
    }

    /* access modifiers changed from: package-private */
    public final void exit(boolean z) throws IOException {
        if (exit() && z) {
            throw newTimeoutException(null);
        }
    }

    /* access modifiers changed from: package-private */
    public final IOException exit(IOException iOException) throws IOException {
        if (!exit()) {
            return iOException;
        }
        return newTimeoutException(iOException);
    }

    /* access modifiers changed from: protected */
    public IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Nullable
    static a awaitTimeout() throws InterruptedException {
        Class<a> cls = a.class;
        a aVar = head.next;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            cls.wait(IDLE_TIMEOUT_MILLIS);
            if (head.next != null || System.nanoTime() - nanoTime < IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return head;
        }
        long remainingNanos = aVar.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            cls.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        head.next = aVar.next;
        aVar.next = null;
        return aVar;
    }
}
