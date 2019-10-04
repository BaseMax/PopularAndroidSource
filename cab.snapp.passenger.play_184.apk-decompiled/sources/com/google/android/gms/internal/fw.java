package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.c;

public class fw extends c<gy> {
    protected final hq<gy> g = new fx(this);
    private final String h;

    public fw(Context context, Looper looper, f.b bVar, f.c cVar, String str, bl blVar) {
        super(context, looper, 23, blVar, bVar, cVar);
        this.h = str;
    }

    public final Bundle zzaap() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.h);
        return bundle;
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof gy ? (gy) queryLocalInterface : new gz(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }
}
