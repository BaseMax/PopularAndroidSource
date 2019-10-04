package b.H.a.b.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: BroadcastReceiverConstraintTracker */
class c extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f1402a;

    public c(d dVar) {
        this.f1402a = dVar;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            this.f1402a.a(context, intent);
        }
    }
}
