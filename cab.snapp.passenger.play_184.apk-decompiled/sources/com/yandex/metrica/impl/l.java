package com.yandex.metrica.impl;

import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.b;
import com.yandex.metrica.impl.ob.hw;
import com.yandex.metrica.impl.ob.le;
import com.yandex.metrica.impl.ob.mn;
import com.yandex.metrica.impl.ob.mo;
import com.yandex.metrica.impl.ob.mw;
import com.yandex.metrica.impl.ob.my;
import com.yandex.metrica.impl.ob.mz;
import com.yandex.metrica.impl.ob.ne;
import com.yandex.metrica.impl.ob.ob;
import org.a.a;
import org.a.c;

public final class l {

    /* renamed from: a  reason: collision with root package name */
    private Context f5838a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public ContentValues f5839b;
    private le c;

    public l(Context context) {
        this.f5838a = context;
    }

    public final l a(ContentValues contentValues) {
        this.f5839b = contentValues;
        return this;
    }

    public final l a(le leVar) {
        this.c = leVar;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final Location b() {
        if (!this.c.J()) {
            return null;
        }
        Location K = this.c.K();
        if (K != null) {
            return K;
        }
        Location c2 = hw.a(this.f5838a).c();
        return c2 == null ? hw.a(this.f5838a).d() : c2;
    }

    public final void a(ob obVar, b.a aVar) {
        i iVar = obVar.f6471a;
        this.f5839b.put("name", iVar.b());
        this.f5839b.put(FirebaseAnalytics.b.VALUE, iVar.c());
        this.f5839b.put("type", Integer.valueOf(iVar.e()));
        this.f5839b.put("custom_type", Integer.valueOf(iVar.f()));
        this.f5839b.put("error_environment", iVar.k());
        this.f5839b.put("user_info", iVar.m());
        this.f5839b.put("truncated", Integer.valueOf(iVar.q()));
        this.f5839b.put("connection_type", Integer.valueOf(av.e(this.f5838a)));
        this.f5839b.put("profile_id", iVar.t());
        this.f5839b.put("encrypting_mode", Integer.valueOf(obVar.f6472b.a()));
        this.f5839b.put("first_occurrence_status", Integer.valueOf(obVar.f6471a.u().d));
        this.f5839b.put("app_environment", aVar.f5735a);
        this.f5839b.put("app_environment_revision", Long.valueOf(aVar.f5736b));
        c cVar = new c();
        try {
            cVar.put("enabled", this.c.J());
            Location b2 = b();
            if (b2 != null) {
                cVar.put("lat", b2.getLatitude());
                cVar.put("lon", b2.getLongitude());
                cVar.putOpt(AppMeasurement.d.TIMESTAMP, Long.valueOf(b2.getTime()));
                cVar.putOpt("precision", b2.hasAccuracy() ? Float.valueOf(b2.getAccuracy()) : null);
                cVar.putOpt("direction", b2.hasBearing() ? Float.valueOf(b2.getBearing()) : null);
                cVar.putOpt("speed", b2.hasSpeed() ? Float.valueOf(b2.getSpeed()) : null);
                cVar.putOpt("altitude", b2.hasAltitude() ? Double.valueOf(b2.getAltitude()) : null);
                cVar.putOpt("provider", bt.c(b2.getProvider(), null));
            }
            this.f5839b.put("location_info", cVar.toString());
        } catch (Exception unused) {
        }
        mw a2 = mw.a(this.f5838a);
        a2.a((mz) new mz() {
            public void a(my myVar) {
                mn b2 = myVar.b();
                if (b2 != null) {
                    l.this.f5839b.put("cellular_connection_type", b2.g());
                }
            }
        });
        a2.a((mo) new mo() {
            public void a(mn[] mnVarArr) {
                l.this.f5839b.put("cell_info", ne.a(mnVarArr).toString());
            }
        });
        bw a3 = bw.a(this.f5838a);
        a i = iVar.i();
        a a4 = a3.a();
        if (a4.length() > i.length()) {
            this.f5839b.put("wifi_network_info", a4.toString());
        } else {
            this.f5839b.put("wifi_network_info", i.toString());
        }
        a(a3);
    }

    /* access modifiers changed from: package-private */
    public final void a(bw bwVar) {
        String b2 = bwVar.b(this.f5838a);
        if (!TextUtils.isEmpty(b2)) {
            int c2 = bwVar.c(this.f5838a);
            try {
                c cVar = new c();
                cVar.put("ssid", (Object) b2);
                cVar.put("state", c2);
                this.f5839b.put("wifi_access_point", cVar.toString());
            } catch (Exception unused) {
            }
        }
    }

    public final void a() {
        c cVar = new c();
        try {
            cVar.putOpt("dId", this.c.q()).putOpt("uId", this.c.r()).putOpt("appVer", this.c.p()).putOpt("appBuild", this.c.o()).putOpt("analyticsSdkVersionName", this.c.h()).putOpt("kitBuildNumber", this.c.i()).putOpt("kitBuildType", this.c.j()).putOpt("osVer", this.c.m()).putOpt("osApiLev", Integer.valueOf(this.c.n())).putOpt("lang", this.c.y()).putOpt("root", this.c.s()).putOpt("app_debuggable", this.c.C()).putOpt("app_framework", this.c.t()).putOpt("attribution_id", Integer.valueOf(this.c.S()));
        } catch (Exception unused) {
            cVar = new c();
        }
        this.f5839b.put("report_request_parameters", cVar.toString());
    }
}
