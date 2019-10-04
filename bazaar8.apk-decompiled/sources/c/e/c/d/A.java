package c.e.c.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;

public final class A extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public B f11581a;

    public A(B b2) {
        this.f11581a = b2;
    }

    public final void a() {
        if (FirebaseInstanceId.i()) {
            Log.d("FirebaseInstanceId", "Connectivity change received registered");
        }
        this.f11581a.a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public final void onReceive(Context context, Intent intent) {
        B b2 = this.f11581a;
        if (b2 != null && b2.c()) {
            if (FirebaseInstanceId.i()) {
                Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
            }
            FirebaseInstanceId.a((Runnable) this.f11581a, 0);
            this.f11581a.a().unregisterReceiver(this);
            this.f11581a = null;
        }
    }
}
