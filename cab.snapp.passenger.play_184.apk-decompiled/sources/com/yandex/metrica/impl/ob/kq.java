package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.location.Location;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.e;
import com.yandex.metrica.profile.UserProfile;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public final class kq extends kk<km<ks>> {

    /* renamed from: a  reason: collision with root package name */
    private kr f6287a = new kr();

    public kq(Executor executor) {
        super(new kp(), executor, new kn<km<ks>>(executor) {
            /* access modifiers changed from: protected */
            public km<ks> a(Executor executor, Context context, String str) {
                return new km<>(executor, context, str, new ks());
            }
        });
    }

    public final void a(final Context context, final YandexMetricaConfig yandexMetricaConfig) {
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().a(context, e.a(yandexMetricaConfig));
            }
        });
        c().b();
    }

    public final void e() {
        d().a();
        this.f6287a.sendEventsBuffer();
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().sendEventsBuffer();
            }
        });
    }

    public final void a(final Activity activity) {
        d().a();
        this.f6287a.resumeSession();
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().b(activity);
            }
        });
    }

    public final void b(final Activity activity) {
        d().a();
        this.f6287a.pauseSession();
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().c(activity);
            }
        });
    }

    public final void a(final Application application) {
        d().a();
        this.f6287a.a(application);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().a(application);
            }
        });
    }

    public final void a(final String str) {
        d().a();
        this.f6287a.reportEvent(str);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().reportEvent(str);
            }
        });
    }

    public final void a(final String str, final String str2) {
        d().a();
        this.f6287a.reportEvent(str, str2);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().reportEvent(str, str2);
            }
        });
    }

    public final void a(final String str, Map<String, Object> map) {
        final ArrayList arrayList;
        d().a();
        this.f6287a.reportEvent(str, map);
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.entrySet());
        }
        a().execute(new Runnable() {
            public void run() {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                List<Map.Entry> list = arrayList;
                if (list != null) {
                    for (Map.Entry entry : list) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                kq.this.c().e().reportEvent(str, (Map<String, Object>) linkedHashMap);
            }
        });
    }

    public final void a(final String str, final Throwable th) {
        d().a();
        this.f6287a.reportError(str, th);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().reportError(str, th);
            }
        });
    }

    public final void a(final Throwable th) {
        d().a();
        this.f6287a.reportUnhandledException(th);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().reportUnhandledException(th);
            }
        });
    }

    public final void b(final String str) {
        d().a();
        this.f6287a.a(str);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().c(str);
            }
        });
    }

    public final void c(final Activity activity) {
        d().a();
        this.f6287a.a(activity);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().a(activity);
            }
        });
    }

    public final void c(final String str) {
        d().a();
        this.f6287a.b(str);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().d(str);
            }
        });
    }

    public final void d(final String str) {
        d().a();
        this.f6287a.c(str);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().e(str);
            }
        });
    }

    public final void a(final Location location) {
        this.f6287a.a();
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().a(location);
            }
        });
    }

    public final void a(final boolean z) {
        this.f6287a.b();
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().a(z);
            }
        });
    }

    public final void a(final Context context, final boolean z) {
        this.f6287a.a(context);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().a(context, z);
            }
        });
    }

    public final void b(final Context context, final boolean z) {
        this.f6287a.b(context);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().b(context, z);
            }
        });
    }

    public final void e(final String str) {
        d().a();
        this.f6287a.setUserProfileID(str);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().setUserProfileID(str);
            }
        });
    }

    public final void a(final UserProfile userProfile) {
        d().a();
        this.f6287a.reportUserProfile(userProfile);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().reportUserProfile(userProfile);
            }
        });
    }

    public final void a(final Revenue revenue) {
        d().a();
        this.f6287a.reportRevenue(revenue);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().e().reportRevenue(revenue);
            }
        });
    }

    public final void a(final DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        d().a();
        this.f6287a.a(deferredDeeplinkParametersListener);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().f().a(deferredDeeplinkParametersListener);
            }
        });
    }

    public final void a(final AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        d().a();
        this.f6287a.a(appMetricaDeviceIDListener);
        a().execute(new Runnable() {
            public void run() {
                kq.this.c().f().a(appMetricaDeviceIDListener);
            }
        });
    }

    public final IReporter a(Context context, String str) {
        this.f6287a.a(context, str);
        return b().a(context, str);
    }

    public final void a(Context context, ReporterConfig reporterConfig) {
        this.f6287a.a(context, reporterConfig);
        b().a(context, reporterConfig.apiKey).a(reporterConfig);
    }
}
