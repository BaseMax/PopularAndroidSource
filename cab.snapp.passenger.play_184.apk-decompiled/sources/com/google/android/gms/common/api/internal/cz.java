package com.google.android.gms.common.api.internal;

import android.app.Dialog;

final class cz extends ax {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Dialog f2840a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ cy f2841b;

    cz(cy cyVar, Dialog dialog) {
        this.f2841b = cyVar;
        this.f2840a = dialog;
    }

    public final void zzahg() {
        this.f2841b.f2838a.b();
        if (this.f2840a.isShowing()) {
            this.f2840a.dismiss();
        }
    }
}
