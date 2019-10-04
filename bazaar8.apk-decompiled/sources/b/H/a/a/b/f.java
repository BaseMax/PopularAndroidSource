package b.H.a.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import b.H.a.d.l;
import b.H.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SystemAlarmDispatcher */
public class f implements b.H.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1354a = b.H.f.a("SystemAlarmDispatcher");

    /* renamed from: b  reason: collision with root package name */
    public final Context f1355b;

    /* renamed from: c  reason: collision with root package name */
    public final i f1356c;

    /* renamed from: d  reason: collision with root package name */
    public final b.H.a.c f1357d;

    /* renamed from: e  reason: collision with root package name */
    public final m f1358e;

    /* renamed from: f  reason: collision with root package name */
    public final b f1359f;

    /* renamed from: g  reason: collision with root package name */
    public final Handler f1360g;

    /* renamed from: h  reason: collision with root package name */
    public final List<Intent> f1361h;

    /* renamed from: i  reason: collision with root package name */
    public Intent f1362i;

    /* renamed from: j  reason: collision with root package name */
    public b f1363j;

    /* compiled from: SystemAlarmDispatcher */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final f f1364a;

        /* renamed from: b  reason: collision with root package name */
        public final Intent f1365b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1366c;

        public a(f fVar, Intent intent, int i2) {
            this.f1364a = fVar;
            this.f1365b = intent;
            this.f1366c = i2;
        }

        public void run() {
            this.f1364a.a(this.f1365b, this.f1366c);
        }
    }

    /* compiled from: SystemAlarmDispatcher */
    interface b {
        void a();
    }

    /* compiled from: SystemAlarmDispatcher */
    static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final f f1367a;

        public c(f fVar) {
            this.f1367a = fVar;
        }

        public void run() {
            this.f1367a.b();
        }
    }

    public f(Context context) {
        this(context, null, null);
    }

    public void a(String str, boolean z) {
        a((Runnable) new a(this, b.a(this.f1355b, str, z), 0));
    }

    public void b() {
        b.H.f.a().a(f1354a, "Checking if commands are complete.", new Throwable[0]);
        a();
        synchronized (this.f1361h) {
            if (this.f1362i != null) {
                b.H.f.a().a(f1354a, String.format("Removing command %s", new Object[]{this.f1362i}), new Throwable[0]);
                if (this.f1361h.remove(0).equals(this.f1362i)) {
                    this.f1362i = null;
                } else {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
            }
            if (!this.f1359f.a() && this.f1361h.isEmpty()) {
                b.H.f.a().a(f1354a, "No more commands & intents.", new Throwable[0]);
                if (this.f1363j != null) {
                    this.f1363j.a();
                }
            } else if (!this.f1361h.isEmpty()) {
                g();
            }
        }
    }

    public b.H.a.c c() {
        return this.f1357d;
    }

    public m d() {
        return this.f1358e;
    }

    public i e() {
        return this.f1356c;
    }

    public void f() {
        this.f1357d.b((b.H.a.a) this);
        this.f1356c.a();
        this.f1363j = null;
    }

    public final void g() {
        a();
        PowerManager.WakeLock a2 = l.a(this.f1355b, "ProcessCommand");
        try {
            a2.acquire();
            this.f1358e.h().a(new e(this));
        } finally {
            a2.release();
        }
    }

    public f(Context context, b.H.a.c cVar, m mVar) {
        this.f1355b = context.getApplicationContext();
        this.f1359f = new b(this.f1355b);
        this.f1356c = new i();
        this.f1358e = mVar == null ? m.a() : mVar;
        this.f1357d = cVar == null ? this.f1358e.e() : cVar;
        this.f1357d.a((b.H.a.a) this);
        this.f1361h = new ArrayList();
        this.f1362i = null;
        this.f1360g = new Handler(Looper.getMainLooper());
    }

    public boolean a(Intent intent, int i2) {
        boolean z = false;
        b.H.f.a().a(f1354a, String.format("Adding command %s (%s)", new Object[]{intent, Integer.valueOf(i2)}), new Throwable[0]);
        a();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            b.H.f.a().e(f1354a, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        } else if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && a("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        } else {
            intent.putExtra("KEY_START_ID", i2);
            synchronized (this.f1361h) {
                if (!this.f1361h.isEmpty()) {
                    z = true;
                }
                this.f1361h.add(intent);
                if (!z) {
                    g();
                }
            }
            return true;
        }
    }

    public void a(b bVar) {
        if (this.f1363j != null) {
            b.H.f.a().b(f1354a, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f1363j = bVar;
        }
    }

    public void a(Runnable runnable) {
        this.f1360g.post(runnable);
    }

    public final boolean a(String str) {
        a();
        synchronized (this.f1361h) {
            for (Intent action : this.f1361h) {
                if (str.equals(action.getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    public final void a() {
        if (this.f1360g.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }
}
