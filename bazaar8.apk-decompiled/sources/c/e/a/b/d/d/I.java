package c.e.a.b.d.d;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import c.e.a.b.d.d.C0787j;
import c.e.a.b.d.f.a;
import java.util.HashSet;
import java.util.Set;

public final class I implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final Set<ServiceConnection> f9952a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public int f9953b = 2;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9954c;

    /* renamed from: d  reason: collision with root package name */
    public IBinder f9955d;

    /* renamed from: e  reason: collision with root package name */
    public final C0787j.a f9956e;

    /* renamed from: f  reason: collision with root package name */
    public ComponentName f9957f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ H f9958g;

    public I(H h2, C0787j.a aVar) {
        this.f9958g = h2;
        this.f9956e = aVar;
    }

    public final void a(String str) {
        this.f9953b = 3;
        this.f9954c = this.f9958g.f9949f.a(this.f9958g.f9947d, str, this.f9956e.a(this.f9958g.f9947d), this, this.f9956e.c());
        if (this.f9954c) {
            this.f9958g.f9948e.sendMessageDelayed(this.f9958g.f9948e.obtainMessage(1, this.f9956e), this.f9958g.f9951h);
            return;
        }
        this.f9953b = 2;
        try {
            this.f9958g.f9949f.a(this.f9958g.f9947d, this);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final void b(String str) {
        this.f9958g.f9948e.removeMessages(1, this.f9956e);
        this.f9958g.f9949f.a(this.f9958g.f9947d, this);
        this.f9954c = false;
        this.f9953b = 2;
    }

    public final int c() {
        return this.f9953b;
    }

    public final boolean d() {
        return this.f9954c;
    }

    public final boolean e() {
        return this.f9952a.isEmpty();
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f9958g.f9946c) {
            this.f9958g.f9948e.removeMessages(1, this.f9956e);
            this.f9955d = iBinder;
            this.f9957f = componentName;
            for (ServiceConnection onServiceConnected : this.f9952a) {
                onServiceConnected.onServiceConnected(componentName, iBinder);
            }
            this.f9953b = 1;
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f9958g.f9946c) {
            this.f9958g.f9948e.removeMessages(1, this.f9956e);
            this.f9955d = null;
            this.f9957f = componentName;
            for (ServiceConnection onServiceDisconnected : this.f9952a) {
                onServiceDisconnected.onServiceDisconnected(componentName);
            }
            this.f9953b = 2;
        }
    }

    public final void b(ServiceConnection serviceConnection, String str) {
        a unused = this.f9958g.f9949f;
        Context unused2 = this.f9958g.f9947d;
        this.f9952a.remove(serviceConnection);
    }

    public final ComponentName b() {
        return this.f9957f;
    }

    public final void a(ServiceConnection serviceConnection, String str) {
        a unused = this.f9958g.f9949f;
        Context unused2 = this.f9958g.f9947d;
        this.f9956e.a(this.f9958g.f9947d);
        this.f9952a.add(serviceConnection);
    }

    public final boolean a(ServiceConnection serviceConnection) {
        return this.f9952a.contains(serviceConnection);
    }

    public final IBinder a() {
        return this.f9955d;
    }
}
