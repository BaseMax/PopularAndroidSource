package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import b.f.C0243b;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.dd;
import c.e.a.b.g.f.fd;
import c.e.a.b.g.f.id;
import c.e.a.b.g.f.ld;
import c.e.a.b.h.b.Ca;
import c.e.a.b.h.b.Da;
import c.e.a.b.h.b.Fa;
import c.e.a.b.h.b.Ka;
import c.e.a.b.h.b.U;
import c.e.a.b.h.b.Xa;
import c.e.a.b.h.b.Y;
import c.e.a.b.h.b.cc;
import c.e.a.b.h.b.fc;
import c.e.a.b.h.b.gc;
import c.e.a.b.h.b.hc;
import c.e.a.b.h.b.ic;
import c.e.a.b.h.b.jc;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Map;

@DynamiteApi
public class AppMeasurementDynamiteService extends dd {

    /* renamed from: a  reason: collision with root package name */
    public Y f13225a = null;

    /* renamed from: b  reason: collision with root package name */
    public Map<Integer, Da> f13226b = new C0243b();

    class a implements Ca {

        /* renamed from: a  reason: collision with root package name */
        public id f13227a;

        public a(id idVar) {
            this.f13227a = idVar;
        }

        public final void a(String str, String str2, Bundle bundle, long j2) {
            try {
                this.f13227a.onEvent(str, str2, bundle, j2);
            } catch (RemoteException e2) {
                AppMeasurementDynamiteService.this.f13225a.e().w().a("Event interceptor threw exception", e2);
            }
        }
    }

    class b implements Da {

        /* renamed from: a  reason: collision with root package name */
        public id f13229a;

        public b(id idVar) {
            this.f13229a = idVar;
        }

        public final void onEvent(String str, String str2, Bundle bundle, long j2) {
            try {
                this.f13229a.onEvent(str, str2, bundle, j2);
            } catch (RemoteException e2) {
                AppMeasurementDynamiteService.this.f13225a.e().w().a("Event listener threw exception", e2);
            }
        }
    }

    public final void A() {
        if (this.f13225a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    public final void a(fd fdVar, String str) {
        this.f13225a.i().a(fdVar, str);
    }

    public void beginAdUnitExposure(String str, long j2) {
        A();
        this.f13225a.A().a(str, j2);
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        A();
        this.f13225a.B().a(str, str2, bundle);
    }

    public void endAdUnitExposure(String str, long j2) {
        A();
        this.f13225a.A().b(str, j2);
    }

    public void generateEventId(fd fdVar) {
        A();
        this.f13225a.i().a(fdVar, this.f13225a.i().u());
    }

    public void getAppInstanceId(fd fdVar) {
        A();
        this.f13225a.d().a((Runnable) new fc(this, fdVar));
    }

    public void getCachedAppInstanceId(fd fdVar) {
        A();
        a(fdVar, this.f13225a.B().M());
    }

    public void getConditionalUserProperties(String str, String str2, fd fdVar) {
        A();
        this.f13225a.d().a((Runnable) new ic(this, fdVar, str, str2));
    }

    public void getCurrentScreenClass(fd fdVar) {
        A();
        a(fdVar, this.f13225a.B().B());
    }

    public void getCurrentScreenName(fd fdVar) {
        A();
        a(fdVar, this.f13225a.B().C());
    }

    public void getGmpAppId(fd fdVar) {
        A();
        a(fdVar, this.f13225a.B().D());
    }

    public void getMaxUserProperties(String str, fd fdVar) {
        A();
        this.f13225a.B();
        r.b(str);
        this.f13225a.i().a(fdVar, 25);
    }

    public void getTestFlag(fd fdVar, int i2) {
        A();
        if (i2 == 0) {
            this.f13225a.i().a(fdVar, this.f13225a.B().G());
        } else if (i2 == 1) {
            this.f13225a.i().a(fdVar, this.f13225a.B().H().longValue());
        } else if (i2 == 2) {
            cc i3 = this.f13225a.i();
            double doubleValue = this.f13225a.B().J().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                fdVar.b(bundle);
            } catch (RemoteException e2) {
                i3.f11077a.e().w().a("Error returning double value to wrapper", e2);
            }
        } else if (i2 != 3) {
            if (i2 == 4) {
                this.f13225a.i().a(fdVar, this.f13225a.B().F().booleanValue());
            }
        } else {
            this.f13225a.i().a(fdVar, this.f13225a.B().I().intValue());
        }
    }

    public void getUserProperties(String str, String str2, boolean z, fd fdVar) {
        A();
        U d2 = this.f13225a.d();
        hc hcVar = new hc(this, fdVar, str, str2, z);
        d2.a((Runnable) hcVar);
    }

    public void initForTests(Map map) {
        A();
    }

    public void initialize(c.e.a.b.e.a aVar, zzy zzy, long j2) {
        Context context = (Context) c.e.a.b.e.b.a(aVar);
        Y y = this.f13225a;
        if (y == null) {
            this.f13225a = Y.a(context, zzy);
        } else {
            y.e().w().a("Attempting to initialize multiple times");
        }
    }

    public void isDataCollectionEnabled(fd fdVar) {
        A();
        this.f13225a.d().a((Runnable) new jc(this, fdVar));
    }

    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        A();
        this.f13225a.B().a(str, str2, bundle, z, z2, j2);
    }

    public void logEventAndBundle(String str, String str2, Bundle bundle, fd fdVar, long j2) {
        A();
        r.b(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        zzaj zzaj = new zzaj(str2, new zzag(bundle), "app", j2);
        this.f13225a.d().a((Runnable) new gc(this, fdVar, zzaj, str));
    }

    public void logHealthData(int i2, String str, c.e.a.b.e.a aVar, c.e.a.b.e.a aVar2, c.e.a.b.e.a aVar3) {
        Object obj;
        Object obj2;
        A();
        Object obj3 = null;
        if (aVar == null) {
            obj = null;
        } else {
            obj = c.e.a.b.e.b.a(aVar);
        }
        if (aVar2 == null) {
            obj2 = null;
        } else {
            obj2 = c.e.a.b.e.b.a(aVar2);
        }
        if (aVar3 != null) {
            obj3 = c.e.a.b.e.b.a(aVar3);
        }
        this.f13225a.e().a(i2, true, false, str, obj, obj2, obj3);
    }

    public void onActivityCreated(c.e.a.b.e.a aVar, Bundle bundle, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        this.f13225a.e().w().a("Got on activity created");
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivityCreated((Activity) c.e.a.b.e.b.a(aVar), bundle);
        }
    }

    public void onActivityDestroyed(c.e.a.b.e.a aVar, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivityDestroyed((Activity) c.e.a.b.e.b.a(aVar));
        }
    }

    public void onActivityPaused(c.e.a.b.e.a aVar, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivityPaused((Activity) c.e.a.b.e.b.a(aVar));
        }
    }

    public void onActivityResumed(c.e.a.b.e.a aVar, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivityResumed((Activity) c.e.a.b.e.b.a(aVar));
        }
    }

    public void onActivitySaveInstanceState(c.e.a.b.e.a aVar, fd fdVar, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        Bundle bundle = new Bundle();
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivitySaveInstanceState((Activity) c.e.a.b.e.b.a(aVar), bundle);
        }
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f13225a.e().w().a("Error returning bundle value to wrapper", e2);
        }
    }

    public void onActivityStarted(c.e.a.b.e.a aVar, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivityStarted((Activity) c.e.a.b.e.b.a(aVar));
        }
    }

    public void onActivityStopped(c.e.a.b.e.a aVar, long j2) {
        A();
        Xa xa = this.f13225a.B().f10620c;
        if (xa != null) {
            this.f13225a.B().E();
            xa.onActivityStopped((Activity) c.e.a.b.e.b.a(aVar));
        }
    }

    public void performAction(Bundle bundle, fd fdVar, long j2) {
        A();
        fdVar.b(null);
    }

    public void registerOnMeasurementEventListener(id idVar) {
        A();
        Da da = this.f13226b.get(Integer.valueOf(idVar.x()));
        if (da == null) {
            da = new b(idVar);
            this.f13226b.put(Integer.valueOf(idVar.x()), da);
        }
        this.f13225a.B().a(da);
    }

    public void resetAnalyticsData(long j2) {
        A();
        this.f13225a.B().a(j2);
    }

    public void setConditionalUserProperty(Bundle bundle, long j2) {
        A();
        if (bundle == null) {
            this.f13225a.e().t().a("Conditional user property must not be null");
        } else {
            this.f13225a.B().a(bundle, j2);
        }
    }

    public void setCurrentScreen(c.e.a.b.e.a aVar, String str, String str2, long j2) {
        A();
        this.f13225a.E().a((Activity) c.e.a.b.e.b.a(aVar), str, str2);
    }

    public void setDataCollectionEnabled(boolean z) {
        A();
        this.f13225a.B().b(z);
    }

    public void setEventInterceptor(id idVar) {
        A();
        Fa B = this.f13225a.B();
        a aVar = new a(idVar);
        B.j();
        B.w();
        B.d().a((Runnable) new Ka(B, aVar));
    }

    public void setInstanceIdProvider(ld ldVar) {
        A();
    }

    public void setMeasurementEnabled(boolean z, long j2) {
        A();
        this.f13225a.B().a(z);
    }

    public void setMinimumSessionDuration(long j2) {
        A();
        this.f13225a.B().b(j2);
    }

    public void setSessionTimeoutDuration(long j2) {
        A();
        this.f13225a.B().c(j2);
    }

    public void setUserId(String str, long j2) {
        A();
        this.f13225a.B().a(null, "_id", str, true, j2);
    }

    public void setUserProperty(String str, String str2, c.e.a.b.e.a aVar, boolean z, long j2) {
        A();
        this.f13225a.B().a(str, str2, c.e.a.b.e.b.a(aVar), z, j2);
    }

    public void unregisterOnMeasurementEventListener(id idVar) {
        A();
        Da remove = this.f13226b.remove(Integer.valueOf(idVar.x()));
        if (remove == null) {
            remove = new b(idVar);
        }
        this.f13225a.B().b(remove);
    }
}
