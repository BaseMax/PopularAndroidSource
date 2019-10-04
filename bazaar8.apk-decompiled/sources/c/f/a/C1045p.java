package c.f.a;

import android.os.Message;
import c.f.a.q;

/* renamed from: c.f.a.p  reason: case insensitive filesystem */
/* compiled from: Dispatcher */
class C1045p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Message f12000a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q.a f12001b;

    public C1045p(q.a aVar, Message message) {
        this.f12001b = aVar;
        this.f12000a = message;
    }

    public void run() {
        throw new AssertionError("Unknown handler message received: " + this.f12000a.what);
    }
}
