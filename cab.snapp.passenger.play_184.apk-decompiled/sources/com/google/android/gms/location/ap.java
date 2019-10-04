package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.internal.hj;

final class ap extends a.b<hj, Object> {
    ap() {
    }

    public final /* synthetic */ a.f zza(Context context, Looper looper, bl blVar, Object obj, f.b bVar, f.c cVar) {
        hj hjVar = new hj(context, looper, bVar, cVar, "locationServices", blVar);
        return hjVar;
    }
}
