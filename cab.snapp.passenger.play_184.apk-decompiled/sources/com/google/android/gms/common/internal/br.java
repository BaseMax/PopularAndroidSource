package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;

final class br extends bp {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Intent f2956a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Fragment f2957b;
    private /* synthetic */ int c;

    br(Intent intent, Fragment fragment, int i) {
        this.f2956a = intent;
        this.f2957b = fragment;
        this.c = i;
    }

    public final void zzale() {
        Intent intent = this.f2956a;
        if (intent != null) {
            this.f2957b.startActivityForResult(intent, this.c);
        }
    }
}
