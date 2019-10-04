package com.google.firebase.iid;

import android.os.Binder;
import android.os.Process;

public final class h extends Binder {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final d f4067a;

    h(d dVar) {
        this.f4067a = dVar;
    }

    public final void zza(f fVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        } else if (this.f4067a.zzq(fVar.f4063a)) {
            fVar.a();
        } else {
            this.f4067a.f4059a.execute(new i(this, fVar));
        }
    }
}
