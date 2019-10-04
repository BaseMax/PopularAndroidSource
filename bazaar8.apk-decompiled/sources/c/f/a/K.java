package c.f.a;

import android.os.Message;
import c.f.a.L;

/* compiled from: Stats */
class K implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Message f11929a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ L.a f11930b;

    public K(L.a aVar, Message message) {
        this.f11930b = aVar;
        this.f11929a = message;
    }

    public void run() {
        throw new AssertionError("Unhandled stats message." + this.f11929a.what);
    }
}
