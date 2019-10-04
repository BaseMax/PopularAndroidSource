package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;

final class nz extends a.b<ok, oc> {
    nz() {
    }

    public final /* synthetic */ a.f zza(Context context, Looper looper, bl blVar, Object obj, f.b bVar, f.c cVar) {
        oc ocVar = (oc) obj;
        if (ocVar == null) {
            ocVar = oc.zzkbs;
        }
        ok okVar = new ok(context, looper, true, blVar, ocVar, bVar, cVar);
        return okVar;
    }
}
