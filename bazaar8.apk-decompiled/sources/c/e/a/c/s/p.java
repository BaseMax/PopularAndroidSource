package c.e.a.c.s;

import android.os.Handler;
import android.os.Message;
import c.e.a.c.s.q;

/* compiled from: SnackbarManager */
class p implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ q f11447a;

    public p(q qVar) {
        this.f11447a = qVar;
    }

    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        this.f11447a.a((q.b) message.obj);
        return true;
    }
}
