package b.x;

import android.os.Handler;
import android.os.Message;

/* compiled from: PreferenceFragmentCompat */
class p extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f3364a;

    public p(r rVar) {
        this.f3364a = rVar;
    }

    public void handleMessage(Message message) {
        if (message.what == 1) {
            this.f3364a.La();
        }
    }
}
