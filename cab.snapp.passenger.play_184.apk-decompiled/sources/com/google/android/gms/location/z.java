package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bo;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.zzcfo;
import com.google.android.gms.location.b;

final class z extends bo<hj, g> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcfo f3653a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ bg f3654b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    z(bg bgVar, zzcfo zzcfo, bg bgVar2) {
        super(bgVar);
        this.f3653a = zzcfo;
        this.f3654b = bgVar2;
    }

    public final /* synthetic */ void zzb(a.c cVar, g gVar) throws RemoteException {
        ((hj) cVar).zza(this.f3653a, (bg<g>) this.f3654b, (gt) new b.a(gVar));
    }
}
