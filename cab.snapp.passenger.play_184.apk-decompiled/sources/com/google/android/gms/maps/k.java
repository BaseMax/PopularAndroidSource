package com.google.android.gms.maps;

import com.google.android.gms.maps.a.n;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.e;

final class k extends n {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.j f3710a;

    k(c.j jVar) {
        this.f3710a = jVar;
    }

    public final void onIndoorBuildingFocused() {
        this.f3710a.onIndoorBuildingFocused();
    }

    public final void zza(m mVar) {
        this.f3710a.onIndoorLevelActivated(new e(mVar));
    }
}
