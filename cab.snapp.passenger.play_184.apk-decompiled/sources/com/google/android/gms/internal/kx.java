package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.ap;

public final class kx {

    /* renamed from: a  reason: collision with root package name */
    final Context f3318a;

    public kx(Context context) {
        ap.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        ap.checkNotNull(applicationContext);
        this.f3318a = applicationContext;
    }
}
