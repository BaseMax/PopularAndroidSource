package b.i.h;

import android.os.Handler;
import android.os.Message;

/* compiled from: SelfDestructiveThread */
class g implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f2687a;

    public g(k kVar) {
        this.f2687a = kVar;
    }

    public boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            this.f2687a.a();
            return true;
        } else if (i2 != 1) {
            return true;
        } else {
            this.f2687a.a((Runnable) message.obj);
            return true;
        }
    }
}
