package com.google.android.gms.maps;

import com.google.android.gms.maps.a.af;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.g;

final class v extends af {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.q f3755a;

    v(c.q qVar) {
        this.f3755a = qVar;
    }

    public final boolean zza(s sVar) {
        return this.f3755a.onMarkerClick(new g(sVar));
    }
}
