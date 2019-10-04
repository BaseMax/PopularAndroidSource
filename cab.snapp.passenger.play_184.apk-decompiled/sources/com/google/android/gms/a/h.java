package com.google.android.gms.a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;

final class h implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Context f2553a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Intent f2554b;

    h(Context context, Intent intent) {
        this.f2553a = context;
        this.f2554b = intent;
    }

    public final void onClick(View view) {
        try {
            this.f2553a.startActivity(this.f2554b);
        } catch (ActivityNotFoundException unused) {
        }
    }
}
