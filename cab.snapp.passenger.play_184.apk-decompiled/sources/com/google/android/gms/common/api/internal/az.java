package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.cu;
import com.google.android.gms.common.api.m;

public final class az<A extends cu<? extends m, a.c>> extends a {

    /* renamed from: a  reason: collision with root package name */
    private A f2783a;

    public az(int i, A a2) {
        super(i);
        this.f2783a = a2;
    }

    public final void zza(an<?> anVar) throws DeadObjectException {
        this.f2783a.zzb(anVar.zzahp());
    }

    public final void zzs(Status status) {
        this.f2783a.zzu(status);
    }

    public final void zza(e eVar, boolean z) {
        A a2 = this.f2783a;
        eVar.f2852a.put(a2, Boolean.valueOf(z));
        a2.zza(new f(eVar, a2));
    }
}
