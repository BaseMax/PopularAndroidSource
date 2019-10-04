package b.z;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import b.z.g;

/* compiled from: MultiInstanceInvalidationClient */
class m implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f3653a;

    public m(r rVar) {
        this.f3653a = rVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f3653a.f3663f = g.a.a(iBinder);
        r rVar = this.f3653a;
        rVar.f3664g.execute(rVar.f3668k);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        r rVar = this.f3653a;
        rVar.f3664g.execute(rVar.f3669l);
        r rVar2 = this.f3653a;
        rVar2.f3663f = null;
        rVar2.f3658a = null;
    }
}
