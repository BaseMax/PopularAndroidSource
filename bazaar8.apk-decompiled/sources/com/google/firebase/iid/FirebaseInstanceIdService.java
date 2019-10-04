package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;
import c.e.c.d.C1002w;
import c.e.c.d.E;

@Deprecated
public class FirebaseInstanceIdService extends E {
    @Deprecated
    public void a() {
    }

    public final Intent b(Intent intent) {
        return C1002w.a().f11687e.poll();
    }

    public final void d(Intent intent) {
        if ("com.google.firebase.iid.TOKEN_REFRESH".equals(intent.getAction())) {
            a();
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
                Log.d("FirebaseInstanceId", sb.toString());
            }
            if ("RST".equals(stringExtra) || "RST_FULL".equals(stringExtra)) {
                FirebaseInstanceId.b().j();
            } else if ("SYNC".equals(stringExtra)) {
                FirebaseInstanceId.b().l();
            }
        }
    }
}
