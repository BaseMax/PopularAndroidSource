package c.b.a.c.b;

import android.os.Handler;
import android.os.Message;
import c.b.a.c.b.C0360c;

/* renamed from: c.b.a.c.b.a  reason: case insensitive filesystem */
/* compiled from: ActiveResources */
class C0358a implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0360c f3844a;

    public C0358a(C0360c cVar) {
        this.f3844a = cVar;
    }

    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            return false;
        }
        this.f3844a.a((C0360c.b) message.obj);
        return true;
    }
}
