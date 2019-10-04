package c.e.a.c.s;

import android.os.Handler;
import android.os.Message;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class c implements Handler.Callback {
    public boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            ((BaseTransientBottomBar) message.obj).n();
            return true;
        } else if (i2 != 1) {
            return false;
        } else {
            ((BaseTransientBottomBar) message.obj).c(message.arg1);
            return true;
        }
    }
}
