package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.b;
import com.yandex.metrica.c;
import com.yandex.metrica.impl.ob.ks;
import com.yandex.metrica.profile.UserProfile;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public class km<B extends ks> implements IReporter {

    /* renamed from: a  reason: collision with root package name */
    B f6249a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f6250b;
    private kp c = new kp();
    private final Context d;
    private final c e;

    km(Executor executor, Context context, String str, B b2) {
        this.f6250b = executor;
        this.d = context;
        this.e = c.a(str).a();
        this.f6249a = b2;
    }

    /* access modifiers changed from: package-private */
    public final b a() {
        return this.c.a(this.d).b(this.e);
    }

    public void a(final ReporterConfig reporterConfig) {
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.b(c.a(reporterConfig));
            }
        });
    }

    /* access modifiers changed from: protected */
    public void b(c cVar) {
        this.c.a(this.d).a(cVar);
    }

    public void reportEvent(final String str) {
        this.f6249a.reportEvent(str);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().reportEvent(str);
            }
        });
    }

    public void reportEvent(final String str, final String str2) {
        this.f6249a.reportEvent(str, str2);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().reportEvent(str, str2);
            }
        });
    }

    public void reportEvent(final String str, Map<String, Object> map) {
        final ArrayList arrayList;
        this.f6249a.reportEvent(str, map);
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.entrySet());
        }
        this.f6250b.execute(new Runnable() {
            public void run() {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                List<Map.Entry> list = arrayList;
                if (list != null) {
                    for (Map.Entry entry : list) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                km.this.a().reportEvent(str, (Map<String, Object>) linkedHashMap);
            }
        });
    }

    public void reportError(final String str, final Throwable th) {
        this.f6249a.reportError(str, th);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().reportError(str, th);
            }
        });
    }

    public void reportUnhandledException(final Throwable th) {
        this.f6249a.reportUnhandledException(th);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().reportUnhandledException(th);
            }
        });
    }

    public void resumeSession() {
        this.f6249a.resumeSession();
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().resumeSession();
            }
        });
    }

    public void pauseSession() {
        this.f6249a.pauseSession();
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().pauseSession();
            }
        });
    }

    public void setUserProfileID(final String str) {
        this.f6249a.setUserProfileID(str);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().setUserProfileID(str);
            }
        });
    }

    public void reportUserProfile(final UserProfile userProfile) {
        this.f6249a.reportUserProfile(userProfile);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().reportUserProfile(userProfile);
            }
        });
    }

    public void reportRevenue(final Revenue revenue) {
        this.f6249a.reportRevenue(revenue);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().reportRevenue(revenue);
            }
        });
    }

    public void setStatisticsSending(final boolean z) {
        this.f6249a.setStatisticsSending(z);
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().setStatisticsSending(z);
            }
        });
    }

    public void sendEventsBuffer() {
        this.f6249a.sendEventsBuffer();
        this.f6250b.execute(new Runnable() {
            public void run() {
                km.this.a().sendEventsBuffer();
            }
        });
    }
}
