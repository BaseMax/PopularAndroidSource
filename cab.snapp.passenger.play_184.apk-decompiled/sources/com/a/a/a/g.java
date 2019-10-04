package com.a.a.a;

import android.content.Context;
import android.os.Looper;
import io.fabric.sdk.android.services.c.a;
import io.fabric.sdk.android.services.common.q;
import java.io.IOException;

final class g {

    /* renamed from: a  reason: collision with root package name */
    final Context f1683a;

    /* renamed from: b  reason: collision with root package name */
    final a f1684b;

    public g(Context context, a aVar) {
        this.f1683a = context;
        this.f1684b = aVar;
    }

    public final ac getAnalyticsFilesManager() throws IOException {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return new ac(this.f1683a, new ai(), new q(), new io.fabric.sdk.android.services.b.g(this.f1683a, this.f1684b.getFilesDir(), "session_analytics.tap", "session_analytics_to_send"));
        }
        throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
    }
}
