package com.yandex.metrica.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.e;
import com.yandex.metrica.impl.ob.nk;
import com.yandex.metrica.impl.ob.nt;
import com.yandex.metrica.impl.ob.ou;
import com.yandex.metrica.impl.ob.ow;
import com.yandex.metrica.impl.ob.pa;
import com.yandex.metrica.impl.ob.u;
import java.util.Map;

public class ad extends c implements ag {
    private static final pa<String> c = new ow(new ou("Deeplink"));
    private static final pa<String> d = new ow(new ou("Referral url"));
    private boolean e = true;

    ad(Context context, u uVar, e eVar, bi biVar) {
        super(context, biVar, new bf(uVar, new CounterConfiguration(eVar)));
        this.f5812a.a(new aw(eVar.preloadInfo));
        this.e = nt.a(eVar.crashReporting, true);
    }

    public void reportEvent(String str, String str2) {
        super.reportEvent(str, str2);
        if (nk.f().b()) {
            d(str, str2);
        }
    }

    public void reportEvent(String str, Map<String, Object> map) {
        String str2;
        super.reportEvent(str, map);
        if (nk.f().b()) {
            if (map == null) {
                str2 = null;
            } else {
                str2 = map.toString();
            }
            d(str, str2);
        }
    }

    private static void d(String str, String str2) {
        if (nk.f().b()) {
            StringBuilder sb = new StringBuilder("Event received: ");
            sb.append(str);
            if (!TextUtils.isEmpty(str2)) {
                sb.append(". With value: ");
                sb.append(str2);
            }
            nk.f().a(sb.toString());
        }
    }

    public void reportError(String str, Throwable th) {
        super.reportError(str, th);
        if (nk.f().b()) {
            nk.f().a("Error received: %s", str);
        }
    }

    public void a(Activity activity) {
        if (activity != null) {
            if (activity.getIntent() != null) {
                String dataString = activity.getIntent().getDataString();
                if (!TextUtils.isEmpty(dataString)) {
                    this.f5813b.a(s.e(dataString), this.f5812a);
                }
            }
        } else if (nk.f().b()) {
            nk.f().b("Null activity parameter for reportAppOpen(Activity)");
        }
    }

    public void d(String str) {
        c.a(str);
        this.f5813b.a(s.e(str), this.f5812a);
    }

    public void e(String str) {
        d.a(str);
        this.f5813b.a(s.f(str), this.f5812a);
    }

    public void a(Application application) {
        if (Build.VERSION.SDK_INT >= 14) {
            if (nk.f().b()) {
                nk.f().a("Enable activity auto tracking");
            }
            application.registerActivityLifecycleCallbacks(new n(this));
            return;
        }
        if (nk.f().b()) {
            nk.f().b("Could not enable activity auto tracking. API level should be more than 14 (ICE_CREAM_SANDWICH)");
        }
    }

    public void b(Activity activity) {
        a(d(activity));
    }

    public void c(Activity activity) {
        b(d(activity));
    }

    /* access modifiers changed from: package-private */
    public String d(Activity activity) {
        if (activity != null) {
            return activity.getClass().getSimpleName();
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void a(e eVar, boolean z) {
        a(eVar.nativeCrashReporting);
        if (z) {
            b();
        }
        b(eVar.i);
        a(eVar.h);
    }

    public void b(boolean z) {
        this.e = z;
    }

    public void a(Boolean bool) {
        this.f5813b.a(nt.a(bool, true));
    }

    public void a(Location location) {
        this.f5812a.b().a(location);
    }

    public void a(boolean z) {
        this.f5812a.b().a(z);
    }

    public void c(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            super.c(str, str2);
        } else if (nk.f().b()) {
            nk.f().b("Invalid App Environment (key,value) pair: (%s,%s).", str, str2);
        }
    }

    public void b(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            super.b(str, str2);
        } else if (nk.f().b()) {
            nk.f().b("Invalid Error Environment (key,value) pair: (%s,%s).", str, str2);
        }
    }

    public boolean f() {
        return this.e;
    }
}
