package com.google.android.gms.maps;

import com.google.android.gms.maps.a.ah;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.g;

final class w extends ah {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.r f3756a;

    w(c.r rVar) {
        this.f3756a = rVar;
    }

    public final void zzb(s sVar) {
        this.f3756a.onMarkerDragStart(new g(sVar));
    }

    public final void zzc(s sVar) {
        this.f3756a.onMarkerDragEnd(new g(sVar));
    }

    public final void zzd(s sVar) {
        this.f3756a.onMarkerDrag(new g(sVar));
    }
}
