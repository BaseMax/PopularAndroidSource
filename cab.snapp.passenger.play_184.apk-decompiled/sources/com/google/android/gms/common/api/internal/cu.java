package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.au;

public abstract class cu<R extends m, A extends a.c> extends BasePendingResult<R> implements cv<R> {

    /* renamed from: a  reason: collision with root package name */
    private final a.d<A> f2833a;

    /* renamed from: b  reason: collision with root package name */
    private final a<?> f2834b;

    protected cu(a<?> aVar, f fVar) {
        super((f) ap.checkNotNull(fVar, "GoogleApiClient must not be null"));
        ap.checkNotNull(aVar, "Api must not be null");
        this.f2833a = aVar.zzagf();
        this.f2834b = aVar;
    }

    private final void a(RemoteException remoteException) {
        zzu(new Status(8, remoteException.getLocalizedMessage(), null));
    }

    public /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((m) obj);
    }

    /* access modifiers changed from: protected */
    public abstract void zza(A a2) throws RemoteException;

    public final a.d<A> zzagf() {
        return this.f2833a;
    }

    public final a<?> zzagl() {
        return this.f2834b;
    }

    public final void zzb(A a2) throws DeadObjectException {
        if (a2 instanceof au) {
            a2 = au.zzals();
        }
        try {
            zza(a2);
        } catch (DeadObjectException e) {
            a(e);
            throw e;
        } catch (RemoteException e2) {
            a(e2);
        }
    }

    public final void zzu(Status status) {
        ap.checkArgument(!status.isSuccess(), "Failed result must not be success");
        setResult(zzb(status));
    }
}
