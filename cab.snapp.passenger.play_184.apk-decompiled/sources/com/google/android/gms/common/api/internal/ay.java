package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.af;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.aw;

@Deprecated
public final class ay {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2781a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ay f2782b;
    private final String c;
    private final Status d;
    private final boolean e;
    private final boolean f;

    private ay(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(a.c.common_google_play_services_unknown_issue));
        boolean z = true;
        if (identifier != 0) {
            z = resources.getInteger(identifier) == 0 ? false : z;
            this.f = !z;
        } else {
            this.f = false;
        }
        this.e = z;
        String zzcp = af.zzcp(context);
        zzcp = zzcp == null ? new aw(context).getString("google_app_id") : zzcp;
        if (TextUtils.isEmpty(zzcp)) {
            this.d = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.c = null;
            return;
        }
        this.c = zzcp;
        this.d = Status.zzfni;
    }

    private static ay a(String str) {
        ay ayVar;
        synchronized (f2781a) {
            if (f2782b != null) {
                ayVar = f2782b;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
        }
        return ayVar;
    }

    public static String zzajh() {
        return a("getGoogleAppId").c;
    }

    public static boolean zzaji() {
        return a("isMeasurementExplicitlyDisabled").f;
    }

    public static Status zzck(Context context) {
        Status status;
        ap.checkNotNull(context, "Context must not be null.");
        synchronized (f2781a) {
            if (f2782b == null) {
                f2782b = new ay(context);
            }
            status = f2782b.d;
        }
        return status;
    }
}
