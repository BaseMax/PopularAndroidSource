package c.c.a.d.e;

import android.net.ConnectivityManager;
import android.net.Network;
import c.c.a.c.a.b;
import h.c.e;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.C1128u;
import i.a.H;
import i.a.b.p;
import i.a.b.t;
import i.a.va;

/* compiled from: NetworkCallback.kt */
public final class a extends ConnectivityManager.NetworkCallback implements H {

    /* renamed from: a  reason: collision with root package name */
    public static final C1128u f4780a = va.a(null, 1, null);

    /* renamed from: b  reason: collision with root package name */
    public static final p<Boolean> f4781b = new p<>();

    /* renamed from: c  reason: collision with root package name */
    public static final a f4782c = new a();

    public final t<Boolean> b() {
        return f4781b.b();
    }

    public void onAvailable(Network network) {
        super.onAvailable(network);
        a(true);
    }

    public void onLost(Network network) {
        super.onLost(network);
        a(false);
    }

    public e a() {
        return b.f4693c.a().plus(f4780a);
    }

    public final void a(boolean z) {
        C1125ra unused = C1103g.b(this, null, null, new NetworkCallback$broadcastNetworkState$1(z, null), 3, null);
    }
}
