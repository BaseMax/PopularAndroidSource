package com.google.android.gms.common.api;

import android.text.TextUtils;
import b.f.C0243b;
import c.e.a.b.d.a.a.N;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;

public class AvailabilityException extends Exception {
    public final C0243b<N<?>, ConnectionResult> zaay;

    public AvailabilityException(C0243b<N<?>, ConnectionResult> bVar) {
        this.zaay = bVar;
    }

    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (N next : this.zaay.keySet()) {
            ConnectionResult connectionResult = this.zaay.get(next);
            if (connectionResult.B()) {
                z = false;
            }
            String a2 = next.a();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 2 + String.valueOf(valueOf).length());
            sb.append(a2);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
