package c.e.c.d;

import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import c.e.a.b.j.C0978a;
import c.e.a.b.j.h;
import c.e.c.h.g;
import com.crashlytics.android.core.CrashlyticsController;
import com.google.firebase.FirebaseApp;
import java.io.IOException;
import java.util.concurrent.Executor;

public final class T implements C0982b {

    /* renamed from: a  reason: collision with root package name */
    public final FirebaseApp f11628a;

    /* renamed from: b  reason: collision with root package name */
    public final C0995o f11629b;

    /* renamed from: c  reason: collision with root package name */
    public final C1000u f11630c;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f11631d;

    /* renamed from: e  reason: collision with root package name */
    public final g f11632e;

    public T(FirebaseApp firebaseApp, C0995o oVar, Executor executor, g gVar) {
        this(firebaseApp, oVar, executor, new C1000u(firebaseApp.c(), oVar), gVar);
    }

    public final c.e.a.b.j.g<String> a(String str, String str2, String str3, String str4) {
        return b(a(str, str3, str4, new Bundle()));
    }

    public final boolean a() {
        return false;
    }

    public final boolean b() {
        return this.f11629b.a() != 0;
    }

    public final c.e.a.b.j.g<Void> b(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        String valueOf2 = String.valueOf(str3);
        return a(b(a(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle)));
    }

    public T(FirebaseApp firebaseApp, C0995o oVar, Executor executor, C1000u uVar, g gVar) {
        this.f11628a = firebaseApp;
        this.f11629b = oVar;
        this.f11630c = uVar;
        this.f11631d = executor;
        this.f11632e = gVar;
    }

    public final c.e.a.b.j.g<Void> a(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String valueOf2 = String.valueOf(str3);
        return a(b(a(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle)));
    }

    public final c.e.a.b.j.g<String> b(c.e.a.b.j.g<Bundle> gVar) {
        return gVar.a(this.f11631d, (C0978a<Bundle, TContinuationResult>) new X(this));
    }

    public final c.e.a.b.j.g<Bundle> a(String str, String str2, String str3, Bundle bundle) {
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.f11628a.e().a());
        bundle.putString("gmsv", Integer.toString(this.f11629b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f11629b.b());
        bundle.putString("app_ver_name", this.f11629b.c());
        bundle.putString("cliv", "fiid-12451000");
        bundle.putString("Firebase-Client", this.f11632e.a());
        h hVar = new h();
        this.f11631d.execute(new V(this, bundle, hVar));
        return hVar.a();
    }

    public static String a(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString(CrashlyticsController.EVENT_TYPE_LOGGED);
            if ("RST".equals(string3)) {
                throw new IOException("INSTANCE_ID_RESET");
            } else if (string3 != null) {
                throw new IOException(string3);
            } else {
                String valueOf = String.valueOf(bundle);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                sb.append("Unexpected response: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
        } else {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    public final <T> c.e.a.b.j.g<Void> a(c.e.a.b.j.g<T> gVar) {
        return gVar.a(J.a(), (C0978a<T, TContinuationResult>) new U(this));
    }

    public final /* synthetic */ void a(Bundle bundle, h hVar) {
        try {
            hVar.a(this.f11630c.a(bundle));
        } catch (IOException e2) {
            hVar.a((Exception) e2);
        }
    }
}
