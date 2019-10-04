package c.e.c.d;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import c.e.a.b.g.e.a;
import c.e.a.b.g.e.b;
import c.e.a.b.g.e.f;
import java.util.concurrent.ExecutorService;

public abstract class E extends Service {

    /* renamed from: a  reason: collision with root package name */
    public final ExecutorService f11592a;

    /* renamed from: b  reason: collision with root package name */
    public Binder f11593b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f11594c;

    /* renamed from: d  reason: collision with root package name */
    public int f11595d;

    /* renamed from: e  reason: collision with root package name */
    public int f11596e;

    public E() {
        b a2 = a.a();
        String valueOf = String.valueOf(getClass().getSimpleName());
        this.f11592a = a2.a(new c.e.a.b.d.g.a.a(valueOf.length() != 0 ? "Firebase-".concat(valueOf) : new String("Firebase-")), f.f10112a);
        this.f11594c = new Object();
        this.f11596e = 0;
    }

    public final void a(Intent intent) {
        if (intent != null) {
            b.q.a.a.a(intent);
        }
        synchronized (this.f11594c) {
            this.f11596e--;
            if (this.f11596e == 0) {
                stopSelfResult(this.f11595d);
            }
        }
    }

    public abstract Intent b(Intent intent);

    public boolean c(Intent intent) {
        return false;
    }

    public abstract void d(Intent intent);

    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.f11593b == null) {
            this.f11593b = new I(this);
        }
        return this.f11593b;
    }

    public final int onStartCommand(Intent intent, int i2, int i3) {
        synchronized (this.f11594c) {
            this.f11595d = i3;
            this.f11596e++;
        }
        Intent b2 = b(intent);
        if (b2 == null) {
            a(intent);
            return 2;
        } else if (c(b2)) {
            a(intent);
            return 2;
        } else {
            this.f11592a.execute(new C(this, b2, intent));
            return 3;
        }
    }
}
