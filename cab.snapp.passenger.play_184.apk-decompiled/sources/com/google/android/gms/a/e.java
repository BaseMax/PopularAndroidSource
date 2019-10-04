package com.google.android.gms.a;

import android.app.Activity;
import android.os.Bundle;

final class e implements k {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Activity f2547a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Bundle f2548b;
    private /* synthetic */ Bundle c;
    private /* synthetic */ c d;

    e(c cVar, Activity activity, Bundle bundle, Bundle bundle2) {
        this.d = cVar;
        this.f2547a = activity;
        this.f2548b = bundle;
        this.c = bundle2;
    }

    public final int getState() {
        return 0;
    }

    public final void zzb(b bVar) {
        this.d.f2544a.onInflate(this.f2547a, this.f2548b, this.c);
    }
}
