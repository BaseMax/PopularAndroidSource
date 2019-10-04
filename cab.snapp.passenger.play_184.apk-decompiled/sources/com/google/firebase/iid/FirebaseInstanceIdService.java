package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;

public class FirebaseInstanceIdService extends d {
    public void onTokenRefresh() {
    }

    /* access modifiers changed from: protected */
    public final Intent zzp(Intent intent) {
        return y.zzcjk().f4092a.poll();
    }

    public final void handleIntent(Intent intent) {
        if ("com.google.firebase.iid.TOKEN_REFRESH".equals(intent.getAction())) {
            onTokenRefresh();
            return;
        }
        String stringExtra = intent.getStringExtra("CMD");
        if (stringExtra != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(intent.getExtras());
                StringBuilder sb = new StringBuilder(String.valueOf(stringExtra).length() + 21 + String.valueOf(valueOf).length());
                sb.append("Received command: ");
                sb.append(stringExtra);
                sb.append(" - ");
                sb.append(valueOf);
            }
            if ("RST".equals(stringExtra) || "RST_FULL".equals(stringExtra)) {
                FirebaseInstanceId.getInstance().e();
            } else if ("SYNC".equals(stringExtra)) {
                FirebaseInstanceId instance = FirebaseInstanceId.getInstance();
                FirebaseInstanceId.f4050a.zzia("");
                instance.a();
            }
        }
    }
}
