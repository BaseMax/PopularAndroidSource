package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.e;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.az;
import com.yandex.metrica.impl.bm;
import com.yandex.metrica.impl.interact.CellularNetworkInfo;
import com.yandex.metrica.impl.interact.DeviceInfo;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public class ko {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final kp f6278a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f6279b;
    private final kj c;
    private final pa<Context> d;
    private final pa<String> e;
    private final a f;

    static class a {
        a() {
        }

        public hs a(Context context, LocationManager locationManager) {
            return new hs(context, locationManager);
        }
    }

    public ko(Executor executor) {
        this(executor, new kp());
    }

    public ko(Executor executor, kp kpVar) {
        this(executor, kpVar, new kj(kpVar), new ow(new ov("Context")), new ow(new ov("Event name")), new a());
    }

    public ko(Executor executor, kp kpVar, kj kjVar, pa<Context> paVar, pa<String> paVar2, a aVar) {
        this.f6278a = kpVar;
        this.f6279b = executor;
        this.c = kjVar;
        this.d = paVar;
        this.e = paVar2;
        this.f = aVar;
    }

    @Deprecated
    public void a(final IIdentifierCallback iIdentifierCallback) {
        this.f6279b.execute(new nl() {
            public void a() throws Exception {
                if (ko.this.f6278a.d()) {
                    ko.this.f6278a.a().a(iIdentifierCallback);
                }
            }
        });
    }

    public void a(final Context context, final IIdentifierCallback iIdentifierCallback) {
        this.d.a(context);
        this.f6279b.execute(new nl() {
            public void a() throws Exception {
                ko.this.f6278a.a(context).a(iIdentifierCallback);
            }
        });
    }

    public boolean a() {
        return this.f6278a.c();
    }

    public String b() {
        return GoogleAdvertisingIdGetter.b().c();
    }

    public Boolean c() {
        return GoogleAdvertisingIdGetter.b().d();
    }

    public DeviceInfo a(Context context) {
        this.d.a(context);
        return DeviceInfo.getInstance(context);
    }

    public String b(Context context) {
        this.d.a(context);
        return new CellularNetworkInfo(context).getCelluralInfo();
    }

    public Integer c(Context context) {
        this.d.a(context);
        return av.c(context);
    }

    @Deprecated
    public String d() {
        if (this.f6278a.d()) {
            return this.f6278a.a().k();
        }
        return null;
    }

    public String d(Context context) {
        this.d.a(context);
        return this.f6278a.a(context).k();
    }

    public String e(Context context) {
        this.d.a(context);
        return this.f6278a.a(context).j();
    }

    public String f(Context context) {
        this.d.a(context);
        return context.getPackageName();
    }

    public void a(int i, String str, String str2, Map<String, String> map) {
        this.c.a();
        this.e.a(str);
        Executor executor = this.f6279b;
        final int i2 = i;
        final String str3 = str;
        final String str4 = str2;
        final Map<String, String> map2 = map;
        AnonymousClass3 r1 = new nl() {
            public void a() throws Exception {
                ko.this.f6278a.e().a(i2, str3, str4, map2);
            }
        };
        executor.execute(r1);
    }

    public void e() {
        this.c.a();
        this.f6279b.execute(new nl() {
            public void a() throws Exception {
                ko.this.f6278a.e().sendEventsBuffer();
            }
        });
    }

    public String a(String str) {
        return bm.a(str);
    }

    public String a(int i) {
        return az.a(i);
    }

    public YandexMetricaConfig a(YandexMetricaConfig yandexMetricaConfig, String str) {
        return e.b(yandexMetricaConfig).a((List<String>) Collections.singletonList(str)).b();
    }

    public YandexMetricaConfig a(YandexMetricaConfig yandexMetricaConfig, List<String> list) {
        return e.b(yandexMetricaConfig).a(list).b();
    }

    public Location g(Context context) {
        this.d.a(context);
        return this.f.a(context, (LocationManager) context.getSystemService(FirebaseAnalytics.b.LOCATION)).a();
    }
}
