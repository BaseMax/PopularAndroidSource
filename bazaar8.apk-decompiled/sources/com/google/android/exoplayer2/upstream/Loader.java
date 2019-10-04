package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import c.e.a.a.n.x;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.G;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.answers.BackgroundManager;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class Loader implements x {

    /* renamed from: a  reason: collision with root package name */
    public static final b f12874a = a(false, -9223372036854775807L);

    /* renamed from: b  reason: collision with root package name */
    public static final b f12875b = a(true, -9223372036854775807L);

    /* renamed from: c  reason: collision with root package name */
    public static final b f12876c = new b(2, -9223372036854775807L);

    /* renamed from: d  reason: collision with root package name */
    public static final b f12877d = new b(3, -9223372036854775807L);

    /* renamed from: e  reason: collision with root package name */
    public final ExecutorService f12878e;

    /* renamed from: f  reason: collision with root package name */
    public c<? extends d> f12879f;

    /* renamed from: g  reason: collision with root package name */
    public IOException f12880g;

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    public interface a<T extends d> {
        b a(T t, long j2, long j3, IOException iOException, int i2);

        void a(T t, long j2, long j3);

        void a(T t, long j2, long j3, boolean z);
    }

    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f12881a;

        /* renamed from: b  reason: collision with root package name */
        public final long f12882b;

        public b(int i2, long j2) {
            this.f12881a = i2;
            this.f12882b = j2;
        }

        public boolean a() {
            int i2 = this.f12881a;
            return i2 == 0 || i2 == 1;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private final class c<T extends d> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f12883a;

        /* renamed from: b  reason: collision with root package name */
        public final T f12884b;

        /* renamed from: c  reason: collision with root package name */
        public final long f12885c;

        /* renamed from: d  reason: collision with root package name */
        public a<T> f12886d;

        /* renamed from: e  reason: collision with root package name */
        public IOException f12887e;

        /* renamed from: f  reason: collision with root package name */
        public int f12888f;

        /* renamed from: g  reason: collision with root package name */
        public volatile Thread f12889g;

        /* renamed from: h  reason: collision with root package name */
        public volatile boolean f12890h;

        /* renamed from: i  reason: collision with root package name */
        public volatile boolean f12891i;

        public c(Looper looper, T t, a<T> aVar, int i2, long j2) {
            super(looper);
            this.f12884b = t;
            this.f12886d = aVar;
            this.f12883a = i2;
            this.f12885c = j2;
        }

        public void a(int i2) {
            IOException iOException = this.f12887e;
            if (iOException != null && this.f12888f > i2) {
                throw iOException;
            }
        }

        public final void b() {
            c unused = Loader.this.f12879f = null;
        }

        public final long c() {
            return (long) Math.min((this.f12888f - 1) * AnswersRetryFilesSender.BACKOFF_MS, BackgroundManager.BACKGROUND_DELAY);
        }

        public void handleMessage(Message message) {
            long j2;
            if (!this.f12891i) {
                int i2 = message.what;
                if (i2 == 0) {
                    a();
                } else if (i2 != 4) {
                    b();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j3 = elapsedRealtime - this.f12885c;
                    if (this.f12890h) {
                        this.f12886d.a(this.f12884b, elapsedRealtime, j3, false);
                        return;
                    }
                    int i3 = message.what;
                    if (i3 == 1) {
                        this.f12886d.a(this.f12884b, elapsedRealtime, j3, false);
                    } else if (i3 == 2) {
                        try {
                            this.f12886d.a(this.f12884b, elapsedRealtime, j3);
                        } catch (RuntimeException e2) {
                            p.a("LoadTask", "Unexpected exception handling load completed", e2);
                            IOException unused = Loader.this.f12880g = new UnexpectedLoaderException(e2);
                        }
                    } else if (i3 == 3) {
                        this.f12887e = (IOException) message.obj;
                        this.f12888f++;
                        b a2 = this.f12886d.a(this.f12884b, elapsedRealtime, j3, this.f12887e, this.f12888f);
                        if (a2.f12881a == 3) {
                            IOException unused2 = Loader.this.f12880g = this.f12887e;
                        } else if (a2.f12881a != 2) {
                            if (a2.f12881a == 1) {
                                this.f12888f = 1;
                            }
                            if (a2.f12882b != -9223372036854775807L) {
                                j2 = a2.f12882b;
                            } else {
                                j2 = c();
                            }
                            a(j2);
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        public void run() {
            try {
                this.f12889g = Thread.currentThread();
                if (!this.f12890h) {
                    G.a("load:" + this.f12884b.getClass().getSimpleName());
                    this.f12884b.a();
                    G.a();
                }
                if (!this.f12891i) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e2) {
                if (!this.f12891i) {
                    obtainMessage(3, e2).sendToTarget();
                }
            } catch (InterruptedException unused) {
                C0737e.b(this.f12890h);
                if (!this.f12891i) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e3) {
                p.a("LoadTask", "Unexpected exception loading stream", e3);
                if (!this.f12891i) {
                    obtainMessage(3, new UnexpectedLoaderException(e3)).sendToTarget();
                }
            } catch (OutOfMemoryError e4) {
                p.a("LoadTask", "OutOfMemory error loading stream", e4);
                if (!this.f12891i) {
                    obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            } catch (Error e5) {
                p.a("LoadTask", "Unexpected error loading stream", e5);
                if (!this.f12891i) {
                    obtainMessage(4, e5).sendToTarget();
                }
                throw e5;
            } catch (Throwable th) {
                G.a();
                throw th;
            }
        }

        public void a(long j2) {
            C0737e.b(Loader.this.f12879f == null);
            c unused = Loader.this.f12879f = this;
            if (j2 > 0) {
                sendEmptyMessageDelayed(0, j2);
            } else {
                a();
            }
        }

        public void a(boolean z) {
            this.f12891i = z;
            this.f12887e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f12890h = true;
                this.f12884b.b();
                if (this.f12889g != null) {
                    this.f12889g.interrupt();
                }
            }
            if (z) {
                b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f12886d.a(this.f12884b, elapsedRealtime, elapsedRealtime - this.f12885c, true);
                this.f12886d = null;
            }
        }

        public final void a() {
            this.f12887e = null;
            Loader.this.f12878e.execute(Loader.this.f12879f);
        }
    }

    public interface d {
        void a();

        void b();
    }

    public interface e {
        void h();
    }

    private static final class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final e f12893a;

        public f(e eVar) {
            this.f12893a = eVar;
        }

        public void run() {
            this.f12893a.h();
        }
    }

    public Loader(String str) {
        this.f12878e = I.g(str);
    }

    public boolean c() {
        return this.f12879f != null;
    }

    public void d() {
        a((e) null);
    }

    public void b() {
        this.f12879f.a(false);
    }

    public static b a(boolean z, long j2) {
        return new b(z ? 1 : 0, j2);
    }

    public <T extends d> long a(T t, a<T> aVar, int i2) {
        Looper myLooper = Looper.myLooper();
        C0737e.b(myLooper != null);
        this.f12880g = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        c cVar = new c(myLooper, t, aVar, i2, elapsedRealtime);
        cVar.a(0);
        return elapsedRealtime;
    }

    public void a(e eVar) {
        c<? extends d> cVar = this.f12879f;
        if (cVar != null) {
            cVar.a(true);
        }
        if (eVar != null) {
            this.f12878e.execute(new f(eVar));
        }
        this.f12878e.shutdown();
    }

    public void a() {
        a(Integer.MIN_VALUE);
    }

    public void a(int i2) {
        IOException iOException = this.f12880g;
        if (iOException == null) {
            c<? extends d> cVar = this.f12879f;
            if (cVar != null) {
                if (i2 == Integer.MIN_VALUE) {
                    i2 = cVar.f12883a;
                }
                cVar.a(i2);
                return;
            }
            return;
        }
        throw iOException;
    }
}
