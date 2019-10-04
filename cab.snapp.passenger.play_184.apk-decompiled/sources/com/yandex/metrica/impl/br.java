package com.yandex.metrica.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.adjust.sdk.Constants;
import com.yandex.metrica.impl.ob.lf;
import com.yandex.metrica.impl.ob.lu;
import com.yandex.metrica.impl.ob.mb;
import com.yandex.metrica.impl.ob.no;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.t;
import java.util.Map;

public class br extends at {

    /* renamed from: a  reason: collision with root package name */
    private final mb f5793a;

    /* renamed from: b  reason: collision with root package name */
    private lf f5794b;
    private boolean c = false;
    private lu l;

    public boolean o() {
        return true;
    }

    public br(mb mbVar, lf lfVar) {
        super(new bp(mbVar, lfVar));
        this.f5793a = mbVar;
        this.f5794b = lfVar;
        a(this.f5794b.a());
    }

    public boolean b() {
        b(false);
        a(c.HEADER_ACCEPT_ENCODING, "encrypted");
        return this.f5793a.d();
    }

    /* access modifiers changed from: protected */
    public void a(Uri.Builder builder) {
        builder.path("analytics/startup");
        builder.appendQueryParameter("deviceid", this.f5794b.q());
        builder.appendQueryParameter("app_platform", this.f5794b.k());
        builder.appendQueryParameter("protocol_version", this.f5794b.g());
        builder.appendQueryParameter("analytics_sdk_version_name", this.f5794b.h());
        builder.appendQueryParameter("model", this.f5794b.l());
        builder.appendQueryParameter("manufacturer", this.f5794b.f());
        builder.appendQueryParameter("os_version", this.f5794b.m());
        builder.appendQueryParameter("screen_width", String.valueOf(this.f5794b.u()));
        builder.appendQueryParameter("screen_height", String.valueOf(this.f5794b.v()));
        builder.appendQueryParameter("screen_dpi", String.valueOf(this.f5794b.w()));
        builder.appendQueryParameter("scalefactor", String.valueOf(this.f5794b.x()));
        builder.appendQueryParameter("locale", this.f5794b.y());
        builder.appendQueryParameter("device_type", this.f5794b.A());
        builder.appendQueryParameter("query_hosts", ExifInterface.GPS_MEASUREMENT_2D);
        builder.appendQueryParameter(t.FEATURES_KEY, bt.b("easy_collecting", "package_info", "socket", "permissions_collecting", "features_collecting", "foreground_location_collection", "background_location_collection", "telephony_restricted_to_location_tracking", "android_id", "google_aid", "wifi_around", "wifi_connected", "own_macs", "cells_around", "sim_info", "sim_imei", "access_point"));
        builder.appendQueryParameter("browsers", "1");
        builder.appendQueryParameter("socket", "1");
        builder.appendQueryParameter("app_id", this.f5794b.c());
        builder.appendQueryParameter("foreground_location_collection", "1");
        builder.appendQueryParameter("app_debuggable", this.f5794b.C());
        if (this.f5794b.G()) {
            builder.appendQueryParameter("background_location_collection", "1");
        }
        if (this.f5794b.b()) {
            String J = this.f5794b.J();
            if (!TextUtils.isEmpty(J)) {
                builder.appendQueryParameter("country_init", J);
            }
        } else {
            builder.appendQueryParameter("detect_locale", "1");
        }
        Map<String, String> E = this.f5794b.E();
        String F = this.f5794b.F();
        if (TextUtils.isEmpty(F)) {
            F = this.f5794b.F();
        }
        if (!bv.a((Map) E)) {
            builder.appendQueryParameter("distribution_customization", "1");
            a(builder, "clids_set", no.a(E));
            if (!TextUtils.isEmpty(F)) {
                builder.appendQueryParameter(Constants.INSTALL_REFERRER, F);
            }
        }
        a(builder, "uuid", this.f5794b.r());
        builder.appendQueryParameter("time", "1");
        builder.appendQueryParameter("requests", "1");
        builder.appendQueryParameter("stat_sending", "1");
    }

    private static void a(Uri.Builder builder, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            builder.appendQueryParameter(str, str2);
        }
    }

    public boolean c() {
        if (B()) {
            return true;
        }
        if (200 != this.h) {
            return false;
        }
        boolean c2 = super.c();
        if (c2) {
            return c2;
        }
        this.l = lu.PARSE;
        return c2;
    }

    public void h() {
        this.l = lu.NETWORK;
    }

    public void g() {
        if (!x() && y()) {
            if (this.l == null) {
                this.l = lu.UNKNOWN;
            }
            this.f5793a.a(this.l);
        }
    }

    public synchronized void b(boolean z) {
        this.c = z;
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean B() {
        return this.c;
    }

    public String a() {
        return "Startup task for component: " + this.f5793a.b().toString();
    }
}
