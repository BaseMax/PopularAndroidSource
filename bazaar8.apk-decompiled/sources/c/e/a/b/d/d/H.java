package c.e.a.b.d.d;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import c.e.a.b.d.d.C0787j;
import c.e.a.b.d.f.a;
import c.e.a.b.g.d.d;
import java.util.HashMap;

public final class H extends C0787j implements Handler.Callback {

    /* renamed from: c  reason: collision with root package name */
    public final HashMap<C0787j.a, I> f9946c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final Context f9947d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f9948e;

    /* renamed from: f  reason: collision with root package name */
    public final a f9949f;

    /* renamed from: g  reason: collision with root package name */
    public final long f9950g;

    /* renamed from: h  reason: collision with root package name */
    public final long f9951h;

    public H(Context context) {
        this.f9947d = context.getApplicationContext();
        this.f9948e = new d(context.getMainLooper(), this);
        this.f9949f = a.a();
        this.f9950g = 5000;
        this.f9951h = 300000;
    }

    public final boolean a(C0787j.a aVar, ServiceConnection serviceConnection, String str) {
        boolean d2;
        r.a(serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.f9946c) {
            I i2 = this.f9946c.get(aVar);
            if (i2 == null) {
                i2 = new I(this, aVar);
                i2.a(serviceConnection, str);
                i2.a(str);
                this.f9946c.put(aVar, i2);
            } else {
                this.f9948e.removeMessages(0, aVar);
                if (!i2.a(serviceConnection)) {
                    i2.a(serviceConnection, str);
                    int c2 = i2.c();
                    if (c2 == 1) {
                        serviceConnection.onServiceConnected(i2.b(), i2.a());
                    } else if (c2 == 2) {
                        i2.a(str);
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            d2 = i2.d();
        }
        return d2;
    }

    public final void b(C0787j.a aVar, ServiceConnection serviceConnection, String str) {
        r.a(serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.f9946c) {
            I i2 = this.f9946c.get(aVar);
            if (i2 == null) {
                String valueOf = String.valueOf(aVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (i2.a(serviceConnection)) {
                i2.b(serviceConnection, str);
                if (i2.e()) {
                    this.f9948e.sendMessageDelayed(this.f9948e.obtainMessage(0, aVar), this.f9950g);
                }
            } else {
                String valueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            synchronized (this.f9946c) {
                C0787j.a aVar = (C0787j.a) message.obj;
                I i3 = this.f9946c.get(aVar);
                if (i3 != null && i3.e()) {
                    if (i3.d()) {
                        i3.b("GmsClientSupervisor");
                    }
                    this.f9946c.remove(aVar);
                }
            }
            return true;
        } else if (i2 != 1) {
            return false;
        } else {
            synchronized (this.f9946c) {
                C0787j.a aVar2 = (C0787j.a) message.obj;
                I i4 = this.f9946c.get(aVar2);
                if (i4 != null && i4.c() == 3) {
                    String valueOf = String.valueOf(aVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName b2 = i4.b();
                    if (b2 == null) {
                        b2 = aVar2.a();
                    }
                    if (b2 == null) {
                        b2 = new ComponentName(aVar2.b(), "unknown");
                    }
                    i4.onServiceDisconnected(b2);
                }
            }
            return true;
        }
    }
}
