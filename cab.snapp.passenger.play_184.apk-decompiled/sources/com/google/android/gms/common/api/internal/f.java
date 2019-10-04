package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;

final class f implements h.a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ BasePendingResult f2854a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ e f2855b;

    f(e eVar, BasePendingResult basePendingResult) {
        this.f2855b = eVar;
        this.f2854a = basePendingResult;
    }

    public final void zzr(Status status) {
        this.f2855b.f2852a.remove(this.f2854a);
    }
}
