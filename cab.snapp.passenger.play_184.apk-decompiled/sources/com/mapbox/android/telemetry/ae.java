package com.mapbox.android.telemetry;

import android.os.Bundle;

final class ae implements q {

    /* renamed from: a  reason: collision with root package name */
    private q f4947a;

    ae() {
    }

    public final void nextChain(q qVar) {
        this.f4947a = qVar;
    }

    public final ab obtainServerInformation(Bundle bundle) {
        String string = bundle.getString("com.mapbox.TestEventsServer");
        String string2 = bundle.getString("com.mapbox.TestEventsAccessToken");
        if (ak.a(string) || ak.a(string2)) {
            return this.f4947a.obtainServerInformation(bundle);
        }
        ab abVar = new ab(o.STAGING);
        abVar.f4943b = string;
        abVar.c = string2;
        return abVar;
    }
}
