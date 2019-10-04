package com.google.android.gms.internal;

import android.database.sqlite.SQLiteException;

final class an extends az {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ al f3065a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    an(al alVar, z zVar) {
        super(zVar);
        this.f3065a = alVar;
    }

    public final void run() {
        al alVar = this.f3065a;
        try {
            alVar.f3062a.zzxu();
            alVar.zzyf();
        } catch (SQLiteException e) {
            alVar.zzd("Failed to delete stale hits", e);
        }
        alVar.f3063b.zzs(86400000);
    }
}
