package c.e.a.b.h.b;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import c.e.a.b.d.f.a;
import c.e.a.b.d.h.b;
import c.e.a.b.d.h.c;
import c.e.a.b.g.f.Sa;
import java.util.List;

public final class L {

    /* renamed from: a  reason: collision with root package name */
    public final Y f10681a;

    public L(Y y) {
        this.f10681a = y;
    }

    public final void a(String str) {
        if (str == null || str.isEmpty()) {
            this.f10681a.e().z().a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f10681a.d().l();
        if (!a()) {
            this.f10681a.e().z().a("Install Referrer Reporter is not available");
            return;
        }
        this.f10681a.e().z().a("Install Referrer Reporter is initializing");
        M m = new M(this, str);
        this.f10681a.d().l();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f10681a.b().getPackageManager();
        if (packageManager == null) {
            this.f10681a.e().w().a("Failed to obtain Package Manager to verify binding conditions");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f10681a.e().z().a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (resolveInfo.serviceInfo.name == null || !"com.android.vending".equals(str2) || !a()) {
                this.f10681a.e().z().a("Play Store missing or incompatible. Version 8.3.73 or later required");
            } else {
                try {
                    this.f10681a.e().z().a("Install Referrer Service is", a.a().a(this.f10681a.b(), new Intent(intent), m, 1) ? "available" : "not available");
                } catch (Exception e2) {
                    this.f10681a.e().t().a("Exception occurred while binding to Install Referrer Service", e2.getMessage());
                }
            }
        }
    }

    public final boolean a() {
        boolean z = false;
        try {
            b a2 = c.a(this.f10681a.b());
            if (a2 == null) {
                this.f10681a.e().z().a("Failed to retrieve Package Manager to check Play Store compatibility");
                return false;
            }
            if (a2.b("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e2) {
            this.f10681a.e().z().a("Failed to retrieve Play Store version", e2);
            return false;
        }
    }

    public final Bundle a(String str, Sa sa) {
        this.f10681a.d().l();
        if (sa == null) {
            this.f10681a.e().w().a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle c2 = sa.c(bundle);
            if (c2 != null) {
                return c2;
            }
            this.f10681a.e().t().a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e2) {
            this.f10681a.e().t().a("Exception occurred while retrieving the Install Referrer", e2.getMessage());
            return null;
        }
    }
}
