package com.google.android.gms.maps;

import com.google.android.gms.a.a;
import com.google.android.gms.a.m;
import com.google.android.gms.maps.a.bu;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.g;

final class aa extends bu {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.b f3682a;

    aa(c.b bVar) {
        this.f3682a = bVar;
    }

    public final a zzh(s sVar) {
        return m.zzz(this.f3682a.getInfoWindow(new g(sVar)));
    }

    public final a zzi(s sVar) {
        return m.zzz(this.f3682a.getInfoContents(new g(sVar)));
    }
}
