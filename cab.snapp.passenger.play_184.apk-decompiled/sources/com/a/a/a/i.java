package com.a.a.a;

import android.content.Context;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.c.d;

final class i {

    /* renamed from: a  reason: collision with root package name */
    private final c f1687a;

    public static i build(Context context) {
        return new i(new d(context, "settings"));
    }

    private i(c cVar) {
        this.f1687a = cVar;
    }

    public final void setAnalyticsLaunched() {
        c cVar = this.f1687a;
        cVar.save(cVar.edit().putBoolean("analytics_launched", true));
    }

    public final boolean hasAnalyticsLaunched() {
        return this.f1687a.get().getBoolean("analytics_launched", false);
    }
}
