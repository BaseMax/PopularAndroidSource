package com.mapbox.android.telemetry;

import android.os.Bundle;

final class h implements q {

    /* renamed from: a  reason: collision with root package name */
    private q f4978a;

    h() {
    }

    public final void nextChain(q qVar) {
        this.f4978a = qVar;
    }

    public final ab obtainServerInformation(Bundle bundle) {
        if (bundle.getBoolean("com.mapbox.CnEventsServer")) {
            return new ab(o.CHINA);
        }
        return this.f4978a.obtainServerInformation(bundle);
    }
}
