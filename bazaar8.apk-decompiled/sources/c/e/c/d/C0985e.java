package c.e.c.d;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import c.e.a.b.g.e.a;
import c.e.a.b.g.e.f;
import c.e.a.b.j.g;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: c.e.c.d.e  reason: case insensitive filesystem */
public final class C0985e {

    /* renamed from: a  reason: collision with root package name */
    public static C0985e f11642a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f11643b;

    /* renamed from: c  reason: collision with root package name */
    public final ScheduledExecutorService f11644c;

    /* renamed from: d  reason: collision with root package name */
    public C0986f f11645d = new C0986f(this);

    /* renamed from: e  reason: collision with root package name */
    public int f11646e = 1;

    public C0985e(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f11644c = scheduledExecutorService;
        this.f11643b = context.getApplicationContext();
    }

    public static synchronized C0985e a(Context context) {
        C0985e eVar;
        synchronized (C0985e.class) {
            if (f11642a == null) {
                f11642a = new C0985e(context, a.a().a(1, new c.e.a.b.d.g.a.a("MessengerIpcClient"), f.f10112a));
            }
            eVar = f11642a;
        }
        return eVar;
    }

    public final g<Bundle> b(int i2, Bundle bundle) {
        return a(new C0996p(a(), 1, bundle));
    }

    public final g<Void> a(int i2, Bundle bundle) {
        return a(new C0992l(a(), 2, bundle));
    }

    public final synchronized <T> g<T> a(C0994n<T> nVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(nVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
            sb.append("Queueing ");
            sb.append(valueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        if (!this.f11645d.a((C0994n) nVar)) {
            this.f11645d = new C0986f(this);
            this.f11645d.a((C0994n) nVar);
        }
        return nVar.f11661b.a();
    }

    public final synchronized int a() {
        int i2;
        i2 = this.f11646e;
        this.f11646e = i2 + 1;
        return i2;
    }
}
