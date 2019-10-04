package c.e.a.c.s;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: SnackbarManager */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public static q f11448a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f11449b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final Handler f11450c = new Handler(Looper.getMainLooper(), new p(this));

    /* renamed from: d  reason: collision with root package name */
    public b f11451d;

    /* renamed from: e  reason: collision with root package name */
    public b f11452e;

    /* compiled from: SnackbarManager */
    interface a {
        void a(int i2);

        void d();
    }

    /* compiled from: SnackbarManager */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<a> f11453a;

        /* renamed from: b  reason: collision with root package name */
        public int f11454b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f11455c;

        public b(int i2, a aVar) {
            this.f11453a = new WeakReference<>(aVar);
            this.f11454b = i2;
        }

        public boolean a(a aVar) {
            return aVar != null && this.f11453a.get() == aVar;
        }
    }

    public static q a() {
        if (f11448a == null) {
            f11448a = new q();
        }
        return f11448a;
    }

    public final void b() {
        b bVar = this.f11452e;
        if (bVar != null) {
            this.f11451d = bVar;
            this.f11452e = null;
            a aVar = (a) this.f11451d.f11453a.get();
            if (aVar != null) {
                aVar.d();
            } else {
                this.f11451d = null;
            }
        }
    }

    public final boolean c(a aVar) {
        b bVar = this.f11452e;
        return bVar != null && bVar.a(aVar);
    }

    public void d(a aVar) {
        synchronized (this.f11449b) {
            if (b(aVar)) {
                this.f11451d = null;
                if (this.f11452e != null) {
                    b();
                }
            }
        }
    }

    public void e(a aVar) {
        synchronized (this.f11449b) {
            if (b(aVar)) {
                b(this.f11451d);
            }
        }
    }

    public void f(a aVar) {
        synchronized (this.f11449b) {
            if (b(aVar) && !this.f11451d.f11455c) {
                this.f11451d.f11455c = true;
                this.f11450c.removeCallbacksAndMessages(this.f11451d);
            }
        }
    }

    public void g(a aVar) {
        synchronized (this.f11449b) {
            if (b(aVar) && this.f11451d.f11455c) {
                this.f11451d.f11455c = false;
                b(this.f11451d);
            }
        }
    }

    public void a(int i2, a aVar) {
        synchronized (this.f11449b) {
            if (b(aVar)) {
                this.f11451d.f11454b = i2;
                this.f11450c.removeCallbacksAndMessages(this.f11451d);
                b(this.f11451d);
                return;
            }
            if (c(aVar)) {
                this.f11452e.f11454b = i2;
            } else {
                this.f11452e = new b(i2, aVar);
            }
            if (this.f11451d == null || !a(this.f11451d, 4)) {
                this.f11451d = null;
                b();
            }
        }
    }

    public final boolean b(a aVar) {
        b bVar = this.f11451d;
        return bVar != null && bVar.a(aVar);
    }

    public final void b(b bVar) {
        int i2 = bVar.f11454b;
        if (i2 != -2) {
            if (i2 <= 0) {
                i2 = i2 == -1 ? 1500 : 2750;
            }
            this.f11450c.removeCallbacksAndMessages(bVar);
            Handler handler = this.f11450c;
            handler.sendMessageDelayed(Message.obtain(handler, 0, bVar), (long) i2);
        }
    }

    public void a(a aVar, int i2) {
        synchronized (this.f11449b) {
            if (b(aVar)) {
                a(this.f11451d, i2);
            } else if (c(aVar)) {
                a(this.f11452e, i2);
            }
        }
    }

    public boolean a(a aVar) {
        boolean z;
        synchronized (this.f11449b) {
            if (!b(aVar)) {
                if (!c(aVar)) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public final boolean a(b bVar, int i2) {
        a aVar = (a) bVar.f11453a.get();
        if (aVar == null) {
            return false;
        }
        this.f11450c.removeCallbacksAndMessages(bVar);
        aVar.a(i2);
        return true;
    }

    public void a(b bVar) {
        synchronized (this.f11449b) {
            if (this.f11451d == bVar || this.f11452e == bVar) {
                a(bVar, 2);
            }
        }
    }
}
