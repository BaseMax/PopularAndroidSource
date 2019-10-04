package c.b.a.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* compiled from: DefaultConnectivityMonitor */
class e extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f4282a;

    public e(f fVar) {
        this.f4282a = fVar;
    }

    public void onReceive(Context context, Intent intent) {
        f fVar = this.f4282a;
        boolean z = fVar.f4285c;
        fVar.f4285c = fVar.a(context);
        if (z != this.f4282a.f4285c) {
            if (Log.isLoggable("ConnectivityMonitor", 3)) {
                Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.f4282a.f4285c);
            }
            f fVar2 = this.f4282a;
            fVar2.f4284b.a(fVar2.f4285c);
        }
    }
}
