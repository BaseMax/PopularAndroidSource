package b.z;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: MultiInstanceInvalidationClient */
class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f3656a;

    public p(r rVar) {
        this.f3656a = rVar;
    }

    public void run() {
        r rVar = this.f3656a;
        rVar.f3661d.c(rVar.f3662e);
        try {
            g gVar = this.f3656a.f3663f;
            if (gVar != null) {
                gVar.a(this.f3656a.f3665h, this.f3656a.f3660c);
            }
        } catch (RemoteException e2) {
            Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e2);
        }
        r rVar2 = this.f3656a;
        Context context = rVar2.f3658a;
        if (context != null) {
            context.unbindService(rVar2.f3667j);
            this.f3656a.f3658a = null;
        }
    }
}
