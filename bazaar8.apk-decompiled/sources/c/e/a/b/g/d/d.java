package c.e.a.b.g.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class d extends Handler {
    public d(Looper looper) {
        super(looper);
    }

    public final void dispatchMessage(Message message) {
        super.dispatchMessage(message);
    }

    public d(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
