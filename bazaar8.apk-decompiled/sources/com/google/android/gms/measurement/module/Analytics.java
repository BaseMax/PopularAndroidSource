package com.google.android.gms.measurement.module;

import android.content.Context;
import androidx.annotation.Keep;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.Y;
import com.google.android.gms.internal.measurement.zzy;

public class Analytics {

    /* renamed from: a  reason: collision with root package name */
    public static volatile Analytics f13267a;

    /* renamed from: b  reason: collision with root package name */
    public final Y f13268b;

    public Analytics(Y y) {
        r.a(y);
        this.f13268b = y;
    }

    @Keep
    public static Analytics getInstance(Context context) {
        if (f13267a == null) {
            synchronized (Analytics.class) {
                if (f13267a == null) {
                    f13267a = new Analytics(Y.a(context, (zzy) null));
                }
            }
        }
        return f13267a;
    }
}
