package b.z;

import android.os.RemoteException;
import android.util.Log;
import androidx.room.MultiInstanceInvalidationService;
import b.z.g;

/* compiled from: MultiInstanceInvalidationService */
class t extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f3671a;

    public t(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f3671a = multiInstanceInvalidationService;
    }

    public int a(C0357f fVar, String str) {
        if (str == null) {
            return 0;
        }
        synchronized (this.f3671a.f935c) {
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.f3671a;
            int i2 = multiInstanceInvalidationService.f933a + 1;
            multiInstanceInvalidationService.f933a = i2;
            if (this.f3671a.f935c.register(fVar, Integer.valueOf(i2))) {
                this.f3671a.f934b.a(i2, str);
                return i2;
            }
            MultiInstanceInvalidationService multiInstanceInvalidationService2 = this.f3671a;
            multiInstanceInvalidationService2.f933a--;
            return 0;
        }
    }

    public void a(C0357f fVar, int i2) {
        synchronized (this.f3671a.f935c) {
            this.f3671a.f935c.unregister(fVar);
            this.f3671a.f934b.d(i2);
        }
    }

    public void a(int i2, String[] strArr) {
        synchronized (this.f3671a.f935c) {
            String a2 = this.f3671a.f934b.a(i2);
            if (a2 == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
                return;
            }
            int beginBroadcast = this.f3671a.f935c.beginBroadcast();
            for (int i3 = 0; i3 < beginBroadcast; i3++) {
                try {
                    int intValue = ((Integer) this.f3671a.f935c.getBroadcastCookie(i3)).intValue();
                    String a3 = this.f3671a.f934b.a(intValue);
                    if (i2 != intValue && a2.equals(a3)) {
                        this.f3671a.f935c.getBroadcastItem(i3).a(strArr);
                    }
                } catch (RemoteException e2) {
                    Log.w("ROOM", "Error invoking a remote callback", e2);
                } catch (Throwable th) {
                    this.f3671a.f935c.finishBroadcast();
                    throw th;
                }
            }
            this.f3671a.f935c.finishBroadcast();
        }
    }
}
