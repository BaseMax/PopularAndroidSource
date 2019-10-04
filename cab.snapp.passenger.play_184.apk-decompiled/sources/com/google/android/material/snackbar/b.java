package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;

final class b {
    private static b d;

    /* renamed from: a  reason: collision with root package name */
    final Object f3984a = new Object();

    /* renamed from: b  reason: collision with root package name */
    C0076b f3985b;
    C0076b c;
    private final Handler e = new Handler(Looper.getMainLooper(), new Handler.Callback() {
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b bVar = b.this;
            C0076b bVar2 = (C0076b) message.obj;
            synchronized (bVar.f3984a) {
                if (bVar.f3985b == bVar2 || bVar.c == bVar2) {
                    bVar.a(bVar2, 2);
                }
            }
            return true;
        }
    });

    interface a {
        void dismiss(int i);

        void show();
    }

    /* renamed from: com.google.android.material.snackbar.b$b  reason: collision with other inner class name */
    static class C0076b {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<a> f3987a;

        /* renamed from: b  reason: collision with root package name */
        int f3988b;
        boolean c;

        C0076b(int i, a aVar) {
            this.f3987a = new WeakReference<>(aVar);
            this.f3988b = i;
        }

        /* access modifiers changed from: package-private */
        public final boolean a(a aVar) {
            return aVar != null && this.f3987a.get() == aVar;
        }
    }

    static b a() {
        if (d == null) {
            d = new b();
        }
        return d;
    }

    private b() {
    }

    public final void show(int i, a aVar) {
        synchronized (this.f3984a) {
            if (a(aVar)) {
                this.f3985b.f3988b = i;
                this.e.removeCallbacksAndMessages(this.f3985b);
                a(this.f3985b);
                return;
            }
            if (b(aVar)) {
                this.c.f3988b = i;
            } else {
                this.c = new C0076b(i, aVar);
            }
            if (this.f3985b == null || !a(this.f3985b, 4)) {
                this.f3985b = null;
                b();
            }
        }
    }

    public final void dismiss(a aVar, int i) {
        synchronized (this.f3984a) {
            if (a(aVar)) {
                a(this.f3985b, i);
            } else if (b(aVar)) {
                a(this.c, i);
            }
        }
    }

    public final void onDismissed(a aVar) {
        synchronized (this.f3984a) {
            if (a(aVar)) {
                this.f3985b = null;
                if (this.c != null) {
                    b();
                }
            }
        }
    }

    public final void onShown(a aVar) {
        synchronized (this.f3984a) {
            if (a(aVar)) {
                a(this.f3985b);
            }
        }
    }

    public final void pauseTimeout(a aVar) {
        synchronized (this.f3984a) {
            if (a(aVar) && !this.f3985b.c) {
                this.f3985b.c = true;
                this.e.removeCallbacksAndMessages(this.f3985b);
            }
        }
    }

    public final void restoreTimeoutIfPaused(a aVar) {
        synchronized (this.f3984a) {
            if (a(aVar) && this.f3985b.c) {
                this.f3985b.c = false;
                a(this.f3985b);
            }
        }
    }

    public final boolean isCurrent(a aVar) {
        boolean a2;
        synchronized (this.f3984a) {
            a2 = a(aVar);
        }
        return a2;
    }

    public final boolean isCurrentOrNext(a aVar) {
        boolean z;
        synchronized (this.f3984a) {
            if (!a(aVar)) {
                if (!b(aVar)) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    private void b() {
        C0076b bVar = this.c;
        if (bVar != null) {
            this.f3985b = bVar;
            this.c = null;
            a aVar = (a) this.f3985b.f3987a.get();
            if (aVar != null) {
                aVar.show();
                return;
            }
            this.f3985b = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a(C0076b bVar, int i) {
        a aVar = (a) bVar.f3987a.get();
        if (aVar == null) {
            return false;
        }
        this.e.removeCallbacksAndMessages(bVar);
        aVar.dismiss(i);
        return true;
    }

    private boolean a(a aVar) {
        C0076b bVar = this.f3985b;
        return bVar != null && bVar.a(aVar);
    }

    private boolean b(a aVar) {
        C0076b bVar = this.c;
        return bVar != null && bVar.a(aVar);
    }

    private void a(C0076b bVar) {
        if (bVar.f3988b != -2) {
            int i = 2750;
            if (bVar.f3988b > 0) {
                i = bVar.f3988b;
            } else if (bVar.f3988b == -1) {
                i = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.e.removeCallbacksAndMessages(bVar);
            Handler handler = this.e;
            handler.sendMessageDelayed(Message.obtain(handler, 0, bVar), (long) i);
        }
    }
}
