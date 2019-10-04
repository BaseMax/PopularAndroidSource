package b.t.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: LocalBroadcastManager */
class a extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f3205a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(b bVar, Looper looper) {
        super(looper);
        this.f3205a = bVar;
    }

    public void handleMessage(Message message) {
        if (message.what != 1) {
            super.handleMessage(message);
        } else {
            this.f3205a.a();
        }
    }
}
