package com.google.android.gms.common.api.internal;

import com.google.android.gms.c.b;
import com.google.android.gms.c.f;

final class g implements b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ com.google.android.gms.c.g f2856a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ e f2857b;

    g(e eVar, com.google.android.gms.c.g gVar) {
        this.f2857b = eVar;
        this.f2856a = gVar;
    }

    public final void onComplete(f<TResult> fVar) {
        this.f2857b.f2853b.remove(this.f2856a);
    }
}
