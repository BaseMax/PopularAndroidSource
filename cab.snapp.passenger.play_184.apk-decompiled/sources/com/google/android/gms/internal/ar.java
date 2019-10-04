package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class ar implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ aq f3070a;

    ar(aq aqVar) {
        this.f3070a = aqVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        aq aqVar = this.f3070a;
        String a2 = aqVar.a(aqVar.zzdta.zzwv().getContext());
        return a2 == null ? aqVar.b() : a2;
    }
}
