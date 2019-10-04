package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.c;

public final class ci extends c<cj> {
    public ci(Context context, Looper looper, bl blVar, f.b bVar, f.c cVar) {
        super(context, looper, 74, blVar, bVar, cVar);
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService");
        return queryLocalInterface instanceof cj ? (cj) queryLocalInterface : new ck(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.gms.auth.api.accountactivationstate.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService";
    }
}
