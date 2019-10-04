package io.reactivex.a.b;

import android.os.Handler;
import android.os.Message;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.b.d;
import java.util.concurrent.TimeUnit;

final class b extends ah {

    /* renamed from: b  reason: collision with root package name */
    private final Handler f6695b;
    private final boolean c;

    static final class a extends ah.c {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f6696a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f6697b;
        private volatile boolean c;

        a(Handler handler, boolean z) {
            this.f6696a = handler;
            this.f6697b = z;
        }

        public final c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            } else if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            } else if (this.c) {
                return d.disposed();
            } else {
                C0128b bVar = new C0128b(this.f6696a, io.reactivex.g.a.onSchedule(runnable));
                Message obtain = Message.obtain(this.f6696a, bVar);
                obtain.obj = this;
                if (this.f6697b) {
                    obtain.setAsynchronous(true);
                }
                this.f6696a.sendMessageDelayed(obtain, timeUnit.toMillis(j));
                if (!this.c) {
                    return bVar;
                }
                this.f6696a.removeCallbacks(bVar);
                return d.disposed();
            }
        }

        public final void dispose() {
            this.c = true;
            this.f6696a.removeCallbacksAndMessages(this);
        }

        public final boolean isDisposed() {
            return this.c;
        }
    }

    /* renamed from: io.reactivex.a.b.b$b  reason: collision with other inner class name */
    static final class C0128b implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f6698a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f6699b;
        private volatile boolean c;

        C0128b(Handler handler, Runnable runnable) {
            this.f6698a = handler;
            this.f6699b = runnable;
        }

        public final void run() {
            try {
                this.f6699b.run();
            } catch (Throwable th) {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void dispose() {
            this.f6698a.removeCallbacks(this);
            this.c = true;
        }

        public final boolean isDisposed() {
            return this.c;
        }
    }

    b(Handler handler, boolean z) {
        this.f6695b = handler;
        this.c = z;
    }

    public final c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        } else if (timeUnit != null) {
            C0128b bVar = new C0128b(this.f6695b, io.reactivex.g.a.onSchedule(runnable));
            Message obtain = Message.obtain(this.f6695b, bVar);
            if (this.c) {
                obtain.setAsynchronous(true);
            }
            this.f6695b.sendMessageDelayed(obtain, timeUnit.toMillis(j));
            return bVar;
        } else {
            throw new NullPointerException("unit == null");
        }
    }

    public final ah.c createWorker() {
        return new a(this.f6695b, this.c);
    }
}
