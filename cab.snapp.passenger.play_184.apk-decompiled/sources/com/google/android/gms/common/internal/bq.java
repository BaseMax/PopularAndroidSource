package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

final class bq extends bp {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Intent f2954a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Activity f2955b;
    private /* synthetic */ int c;

    bq(Intent intent, Activity activity, int i) {
        this.f2954a = intent;
        this.f2955b = activity;
        this.c = i;
    }

    public final void zzale() {
        Intent intent = this.f2954a;
        if (intent != null) {
            this.f2955b.startActivityForResult(intent, this.c);
        }
    }
}
