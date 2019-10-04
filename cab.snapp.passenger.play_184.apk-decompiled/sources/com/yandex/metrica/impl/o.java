package com.yandex.metrica.impl;

import android.location.Location;
import com.yandex.metrica.e;
import java.util.LinkedHashMap;
import java.util.Map;

public class o implements ag {

    /* renamed from: a  reason: collision with root package name */
    private Location f5845a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f5846b;
    private Boolean c;
    private Map<String, String> d = new LinkedHashMap();
    private Map<String, String> e = new LinkedHashMap();
    private boolean f;
    private boolean g;
    private bi h;

    public Location a() {
        return this.f5845a;
    }

    public Boolean b() {
        return this.f5846b;
    }

    public void a(boolean z) {
        this.f5846b = Boolean.valueOf(z);
        e();
    }

    public Boolean c() {
        return this.c;
    }

    public void setStatisticsSending(boolean z) {
        this.c = Boolean.valueOf(z);
        e();
    }

    public void a(Location location) {
        this.f5845a = location;
    }

    public boolean d() {
        return this.f;
    }

    public e a(e eVar) {
        if (this.g) {
            return eVar;
        }
        e.a a2 = e.a(eVar.apiKey);
        a2.a(eVar.f5649b, eVar.j);
        a2.c(eVar.f5648a);
        a2.a(eVar.preloadInfo);
        a2.a(eVar.location);
        if (eVar.d != null) {
            a2.a(eVar.d);
        }
        if (eVar.appVersion != null) {
            a2.a(eVar.appVersion);
        }
        if (eVar.f != null) {
            a2.d(eVar.f.intValue());
        }
        if (eVar.e != null) {
            a2.b(eVar.e.intValue());
        }
        if (eVar.g != null) {
            a2.c(eVar.g.intValue());
        }
        if ((eVar.logs != null) && eVar.logs.booleanValue()) {
            a2.a();
        }
        if (eVar.sessionTimeout != null) {
            a2.a(eVar.sessionTimeout.intValue());
        }
        if (eVar.crashReporting != null) {
            a2.a(eVar.crashReporting.booleanValue());
        }
        if (eVar.nativeCrashReporting != null) {
            a2.b(eVar.nativeCrashReporting.booleanValue());
        }
        if (eVar.locationTracking != null) {
            a2.c(eVar.locationTracking.booleanValue());
        }
        if (eVar.installedAppCollecting != null) {
            a2.d(eVar.installedAppCollecting.booleanValue());
        }
        if (eVar.c != null) {
            a2.b(eVar.c);
        }
        if (eVar.firstActivationAsUpdate != null) {
            a2.f(eVar.firstActivationAsUpdate.booleanValue());
        }
        if (eVar.statisticsSending != null) {
            a2.e(eVar.statisticsSending.booleanValue());
        }
        a(this.d, a2);
        a(eVar.i, a2);
        b(this.e, a2);
        b(eVar.h, a2);
        Boolean b2 = b();
        if (eVar.locationTracking == null) {
            if (b2 != null) {
                a2.c(b2.booleanValue());
            }
        }
        Location a3 = a();
        if (eVar.location == null) {
            if (a3 != null) {
                a2.a(a3);
            }
        }
        Boolean c2 = c();
        if (eVar.statisticsSending == null) {
            if (c2 != null) {
                a2.e(c2.booleanValue());
            }
        }
        this.g = true;
        this.f5845a = null;
        this.f5846b = null;
        this.c = null;
        this.d.clear();
        this.e.clear();
        this.f = false;
        return a2.b();
    }

    private static void a(Map<String, String> map, e.a aVar) {
        if (!bv.a((Map) map)) {
            for (Map.Entry next : map.entrySet()) {
                aVar.b((String) next.getKey(), (String) next.getValue());
            }
        }
    }

    private static void b(Map<String, String> map, e.a aVar) {
        if (!bv.a((Map) map)) {
            for (Map.Entry next : map.entrySet()) {
                aVar.a((String) next.getKey(), (String) next.getValue());
            }
        }
    }

    public void a(bi biVar) {
        this.h = biVar;
    }

    private void e() {
        bi biVar = this.h;
        if (biVar != null) {
            biVar.a(this);
        }
    }
}
