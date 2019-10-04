package c.e.a.b.h.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import c.e.a.b.g.f.C0856ob;
import c.e.a.b.g.f.Sa;

public final class M implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final String f10685a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ L f10686b;

    public M(L l2, String str) {
        this.f10686b = l2;
        this.f10685a = str;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f10686b.f10681a.e().w().a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            Sa a2 = C0856ob.a(iBinder);
            if (a2 == null) {
                this.f10686b.f10681a.e().w().a("Install Referrer Service implementation was not found");
                return;
            }
            this.f10686b.f10681a.e().z().a("Install Referrer Service connected");
            this.f10686b.f10681a.d().a((Runnable) new N(this, a2, this));
        } catch (Exception e2) {
            this.f10686b.f10681a.e().w().a("Exception occurred while calling Install Referrer API", e2);
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        this.f10686b.f10681a.e().z().a("Install Referrer Service disconnected");
    }
}
