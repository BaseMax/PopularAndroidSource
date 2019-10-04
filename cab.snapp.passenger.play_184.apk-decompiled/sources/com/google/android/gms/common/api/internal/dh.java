package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.C0065a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;

public final class dh<O extends a.C0065a> extends e<O> {

    /* renamed from: b  reason: collision with root package name */
    private final a.f f2851b;
    private final db c;
    private final bl d;
    private final a.b<? extends ob, oc> e;

    public dh(Context context, a<O> aVar, Looper looper, a.f fVar, db dbVar, bl blVar, a.b<? extends ob, oc> bVar) {
        super(context, aVar, looper);
        this.f2851b = fVar;
        this.c = dbVar;
        this.d = blVar;
        this.e = bVar;
        this.f2738a.zza((e<?>) this);
    }

    public final a.f zza(Looper looper, an<O> anVar) {
        this.c.zza(anVar);
        return this.f2851b;
    }

    public final bt zza(Context context, Handler handler) {
        return new bt(context, handler, this.d, this.e);
    }

    public final a.f zzahp() {
        return this.f2851b;
    }
}
