package c.e.a.b.d.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import c.e.a.b.d.d.C0796t;
import c.e.a.b.d.d.S;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g;
import com.google.android.gms.common.api.Status;

@Deprecated
/* renamed from: c.e.a.b.d.a.a.d  reason: case insensitive filesystem */
public final class C0756d {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f9887a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static C0756d f9888b;

    /* renamed from: c  reason: collision with root package name */
    public final String f9889c;

    /* renamed from: d  reason: collision with root package name */
    public final Status f9890d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f9891e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f9892f;

    public C0756d(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(g.common_google_play_services_unknown_issue));
        boolean z = true;
        if (identifier != 0) {
            z = resources.getInteger(identifier) == 0 ? false : z;
            this.f9892f = !z;
        } else {
            this.f9892f = false;
        }
        this.f9891e = z;
        String a2 = S.a(context);
        a2 = a2 == null ? new C0796t(context).a("google_app_id") : a2;
        if (TextUtils.isEmpty(a2)) {
            this.f9890d = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f9889c = null;
            return;
        }
        this.f9889c = a2;
        this.f9890d = Status.f12976a;
    }

    public static Status a(Context context) {
        Status status;
        r.a(context, (Object) "Context must not be null.");
        synchronized (f9887a) {
            if (f9888b == null) {
                f9888b = new C0756d(context);
            }
            status = f9888b.f9890d;
        }
        return status;
    }

    public static boolean b() {
        return a("isMeasurementExplicitlyDisabled").f9892f;
    }

    public static String a() {
        return a("getGoogleAppId").f9889c;
    }

    public static C0756d a(String str) {
        C0756d dVar;
        synchronized (f9887a) {
            if (f9888b != null) {
                dVar = f9888b;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
        }
        return dVar;
    }
}
