package c.f.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: Utils */
class O extends Handler {
    public O(Looper looper) {
        super(looper);
    }

    public void handleMessage(Message message) {
        sendMessageDelayed(obtainMessage(), 1000);
    }
}
