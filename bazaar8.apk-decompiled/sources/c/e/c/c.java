package c.e.c;

import android.content.Context;
import android.text.TextUtils;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.C0796t;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.p;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f11572a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11573b;

    /* renamed from: c  reason: collision with root package name */
    public final String f11574c;

    /* renamed from: d  reason: collision with root package name */
    public final String f11575d;

    /* renamed from: e  reason: collision with root package name */
    public final String f11576e;

    /* renamed from: f  reason: collision with root package name */
    public final String f11577f;

    /* renamed from: g  reason: collision with root package name */
    public final String f11578g;

    public c(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        r.b(!p.a(str), "ApplicationId must be set.");
        this.f11573b = str;
        this.f11572a = str2;
        this.f11574c = str3;
        this.f11575d = str4;
        this.f11576e = str5;
        this.f11577f = str6;
        this.f11578g = str7;
    }

    public static c a(Context context) {
        C0796t tVar = new C0796t(context);
        String a2 = tVar.a("google_app_id");
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        c cVar = new c(a2, tVar.a("google_api_key"), tVar.a("firebase_database_url"), tVar.a("ga_trackingId"), tVar.a("gcm_defaultSenderId"), tVar.a("google_storage_bucket"), tVar.a("project_id"));
        return cVar;
    }

    public String b() {
        return this.f11576e;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (C0794q.a(this.f11573b, cVar.f11573b) && C0794q.a(this.f11572a, cVar.f11572a) && C0794q.a(this.f11574c, cVar.f11574c) && C0794q.a(this.f11575d, cVar.f11575d) && C0794q.a(this.f11576e, cVar.f11576e) && C0794q.a(this.f11577f, cVar.f11577f) && C0794q.a(this.f11578g, cVar.f11578g)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return C0794q.a(this.f11573b, this.f11572a, this.f11574c, this.f11575d, this.f11576e, this.f11577f, this.f11578g);
    }

    public String toString() {
        C0794q.a a2 = C0794q.a((Object) this);
        a2.a("applicationId", this.f11573b);
        a2.a("apiKey", this.f11572a);
        a2.a("databaseUrl", this.f11574c);
        a2.a("gcmSenderId", this.f11576e);
        a2.a("storageBucket", this.f11577f);
        a2.a("projectId", this.f11578g);
        return a2.toString();
    }

    public String a() {
        return this.f11573b;
    }
}
