package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.C0802b;
import c.e.a.b.h.b.Y;
import c.e.a.b.h.b.Ya;
import c.e.a.b.h.b.nc;
import c.e.c.a.a;
import com.google.android.gms.internal.measurement.zzy;
import com.google.firebase.iid.FirebaseInstanceId;

public final class FirebaseAnalytics {

    /* renamed from: a  reason: collision with root package name */
    public static volatile FirebaseAnalytics f13496a;

    /* renamed from: b  reason: collision with root package name */
    public final Y f13497b;

    /* renamed from: c  reason: collision with root package name */
    public final C0802b f13498c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f13499d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f13500e;

    public FirebaseAnalytics(Y y) {
        r.a(y);
        this.f13497b = y;
        this.f13498c = null;
        this.f13499d = false;
        this.f13500e = new Object();
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f13496a == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f13496a == null) {
                    if (C0802b.f(context)) {
                        f13496a = new FirebaseAnalytics(C0802b.a(context));
                    } else {
                        f13496a = new FirebaseAnalytics(Y.a(context, (zzy) null));
                    }
                }
            }
        }
        return f13496a;
    }

    @Keep
    public static Ya getScionFrontendApiImplementation(Context context, Bundle bundle) {
        if (!C0802b.f(context)) {
            return null;
        }
        C0802b a2 = C0802b.a(context, (String) null, (String) null, (String) null, bundle);
        if (a2 == null) {
            return null;
        }
        return new a(a2);
    }

    public final void a(String str, Bundle bundle) {
        if (this.f13499d) {
            this.f13498c.a(str, bundle);
        } else {
            this.f13497b.B().a("app", str, bundle, true);
        }
    }

    @Keep
    public final String getFirebaseInstanceId() {
        return FirebaseInstanceId.b().a();
    }

    @Keep
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        if (this.f13499d) {
            this.f13498c.a(activity, str, str2);
        } else if (!nc.a()) {
            this.f13497b.e().w().a("setCurrentScreen must be called from the main thread");
        } else {
            this.f13497b.E().a(activity, str, str2);
        }
    }

    public FirebaseAnalytics(C0802b bVar) {
        r.a(bVar);
        this.f13497b = null;
        this.f13498c = bVar;
        this.f13499d = true;
        this.f13500e = new Object();
    }
}
