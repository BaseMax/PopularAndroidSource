package com.google.android.gms.auth.api.signin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.v;

public final class RevocationBoundService extends Service {
    public final IBinder onBind(Intent intent) {
        if ("com.google.android.gms.auth.api.signin.RevocationBoundService.disconnect".equals(intent.getAction()) || "com.google.android.gms.auth.api.signin.RevocationBoundService.clearClientState".equals(intent.getAction())) {
            if (Log.isLoggable("RevocationService", 2)) {
                String valueOf = String.valueOf(intent.getAction());
                if (valueOf.length() != 0) {
                    "RevocationBoundService handling ".concat(valueOf);
                } else {
                    new String("RevocationBoundService handling ");
                }
            }
            return new v(this);
        }
        String valueOf2 = String.valueOf(intent.getAction());
        if (valueOf2.length() != 0) {
            "Unknown action sent to RevocationBoundService: ".concat(valueOf2);
        } else {
            new String("Unknown action sent to RevocationBoundService: ");
        }
        return null;
    }
}
