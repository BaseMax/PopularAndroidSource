package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

final class c extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private b f4058a;

    public c(b bVar) {
        this.f4058a = bVar;
    }

    public final void onReceive(Context context, Intent intent) {
        b bVar = this.f4058a;
        if (bVar != null && bVar.b()) {
            FirebaseInstanceId.d();
            FirebaseInstanceId.a(this.f4058a, 0);
            this.f4058a.a().unregisterReceiver(this);
            this.f4058a = null;
        }
    }

    public final void zzcjq() {
        FirebaseInstanceId.d();
        this.f4058a.a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
}
