package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.ap;

public final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3045a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3046b;

    public ab(Context context) {
        ap.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        ap.checkNotNull(applicationContext, "Application context can't be null");
        this.f3045a = applicationContext;
        this.f3046b = applicationContext;
    }

    public final Context getApplicationContext() {
        return this.f3045a;
    }

    public final Context zzxg() {
        return this.f3046b;
    }
}
