package b.z;

import android.os.RemoteException;
import android.util.Log;
import b.z.j;
import java.util.Set;

/* compiled from: MultiInstanceInvalidationClient */
class q extends j.b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r f3657b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public q(r rVar, String[] strArr) {
        super(strArr);
        this.f3657b = rVar;
    }

    public void a(Set<String> set) {
        if (!this.f3657b.f3666i.get()) {
            try {
                this.f3657b.f3663f.a(this.f3657b.f3660c, (String[]) set.toArray(new String[0]));
            } catch (RemoteException e2) {
                Log.w("ROOM", "Cannot broadcast invalidation", e2);
            }
        }
    }

    public boolean a() {
        return true;
    }
}
