package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;

public final class cm<TResult> extends a {

    /* renamed from: a  reason: collision with root package name */
    private final cb<a.c, TResult> f2822a;

    /* renamed from: b  reason: collision with root package name */
    private final g<TResult> f2823b;
    private final bx c;

    public cm(int i, cb<a.c, TResult> cbVar, g<TResult> gVar, bx bxVar) {
        super(i);
        this.f2823b = gVar;
        this.f2822a = cbVar;
        this.c = bxVar;
    }

    public final void zza(an<?> anVar) throws DeadObjectException {
        try {
            this.f2822a.zza(anVar.zzahp(), this.f2823b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            zzs(a.a(e2));
        }
    }

    public final void zzs(Status status) {
        this.f2823b.trySetException(this.c.zzt(status));
    }

    public final void zza(e eVar, boolean z) {
        g<TResult> gVar = this.f2823b;
        eVar.f2853b.put(gVar, Boolean.valueOf(z));
        gVar.getTask().addOnCompleteListener(new g(eVar, gVar));
    }
}
