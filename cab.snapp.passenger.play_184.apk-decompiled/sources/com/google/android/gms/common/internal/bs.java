package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.bd;

final class bs extends bp {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Intent f2958a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ bd f2959b;
    private /* synthetic */ int c = 2;

    bs(Intent intent, bd bdVar) {
        this.f2958a = intent;
        this.f2959b = bdVar;
    }

    public final void zzale() {
        Intent intent = this.f2958a;
        if (intent != null) {
            this.f2959b.startActivityForResult(intent, this.c);
        }
    }
}
