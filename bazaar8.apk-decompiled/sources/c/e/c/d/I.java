package c.e.c.d;

import android.os.Binder;
import android.os.Process;
import android.util.Log;

public final class I extends Binder {

    /* renamed from: a  reason: collision with root package name */
    public final E f11605a;

    public I(E e2) {
        this.f11605a = e2;
    }

    public final void a(G g2) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "service received new intent via bind strategy");
            }
            if (this.f11605a.c(g2.f11599a)) {
                g2.a();
                return;
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "intent being queued for bg execution");
            }
            this.f11605a.f11592a.execute(new H(this, g2));
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
