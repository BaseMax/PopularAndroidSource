package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.internal.db;

final class b extends a.b<db, a.C0061a> {
    b() {
    }

    public final /* synthetic */ a.f zza(Context context, Looper looper, bl blVar, Object obj, f.b bVar, f.c cVar) {
        db dbVar = new db(context, looper, blVar, (a.C0061a) obj, bVar, cVar);
        return dbVar;
    }
}
