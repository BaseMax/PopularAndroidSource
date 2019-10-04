package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.e;
import com.google.android.gms.auth.api.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.c;

public final class dj extends c<dm> {
    private final Bundle g;

    public dj(Context context, Looper looper, bl blVar, g gVar, f.b bVar, f.c cVar) {
        super(context, looper, 16, blVar, bVar, cVar);
        if (gVar == null) {
            this.g = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    public final Bundle zzaap() {
        return this.g;
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof dm ? (dm) queryLocalInterface : new dn(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.gms.auth.service.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    public final boolean zzaay() {
        bl blVar = this.f2960a;
        return !TextUtils.isEmpty(blVar.getAccountName()) && !blVar.zzc((a<?>) e.API).isEmpty();
    }
}
