package b.z;

import android.os.RemoteException;
import android.util.Log;

/* compiled from: MultiInstanceInvalidationClient */
class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f3654a;

    public n(r rVar) {
        this.f3654a = rVar;
    }

    public void run() {
        try {
            g gVar = this.f3654a.f3663f;
            if (gVar != null) {
                this.f3654a.f3660c = gVar.a(this.f3654a.f3665h, this.f3654a.f3659b);
                this.f3654a.f3661d.a(this.f3654a.f3662e);
            }
        } catch (RemoteException e2) {
            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e2);
        }
    }
}
