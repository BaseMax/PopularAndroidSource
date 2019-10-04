package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.c;

public final class db extends c<df> {
    final a.C0061a g;

    public db(Context context, Looper looper, bl blVar, a.C0061a aVar, f.b bVar, f.c cVar) {
        super(context, looper, 68, blVar, bVar, cVar);
        this.g = aVar;
    }

    public final Bundle zzaap() {
        a.C0061a aVar = this.g;
        return aVar == null ? new Bundle() : aVar.toBundle();
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof df ? (df) queryLocalInterface : new dg(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }
}
