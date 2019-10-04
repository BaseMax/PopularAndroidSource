package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.f;

final class d implements az {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f.b f2961a;

    d(f.b bVar) {
        this.f2961a = bVar;
    }

    public final void onConnected(Bundle bundle) {
        this.f2961a.onConnected(bundle);
    }

    public final void onConnectionSuspended(int i) {
        this.f2961a.onConnectionSuspended(i);
    }
}
