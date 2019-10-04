package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.cb;
import com.google.android.gms.internal.cd;
import com.google.android.gms.internal.cf;
import com.google.android.gms.internal.z;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class d extends i {
    private static List<Runnable> d = new ArrayList();
    private boolean e;
    private Set<a> f = new HashSet();
    private boolean g;
    private boolean h;
    private volatile boolean i;
    private boolean j;

    interface a {
        void zzl(Activity activity);

        void zzm(Activity activity);
    }

    class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public final void onActivityDestroyed(Activity activity) {
        }

        public final void onActivityPaused(Activity activity) {
        }

        public final void onActivityResumed(Activity activity) {
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public final void onActivityStarted(Activity activity) {
            d.this.a(activity);
        }

        public final void onActivityStopped(Activity activity) {
            d.this.b(activity);
        }
    }

    public d(z zVar) {
        super(zVar);
    }

    public static d getInstance(Context context) {
        return z.zzbm(context).zzxi();
    }

    public static void zzur() {
        synchronized (d.class) {
            if (d != null) {
                for (Runnable run : d) {
                    run.run();
                }
                d = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Activity activity) {
        for (a zzl : this.f) {
            zzl.zzl(activity);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(Activity activity) {
        for (a zzm : this.f) {
            zzm.zzm(activity);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(a aVar) {
        this.f.remove(aVar);
    }

    public final void enableAutoActivityReports(Application application) {
        if (!this.g) {
            application.registerActivityLifecycleCallbacks(new b());
            this.g = true;
        }
    }

    public final boolean getAppOptOut() {
        return this.i;
    }

    @Deprecated
    public final f getLogger() {
        return bo.getLogger();
    }

    public final boolean isDryRunEnabled() {
        return this.h;
    }

    public final boolean isInitialized() {
        return this.e;
    }

    public final void reportActivityStart(Activity activity) {
        if (!this.g) {
            a(activity);
        }
    }

    public final void reportActivityStop(Activity activity) {
        if (!this.g) {
            b(activity);
        }
    }

    public final void setDryRun(boolean z) {
        this.h = z;
    }

    @Deprecated
    public final void setLogger(f fVar) {
        bo.setLogger(fVar);
        if (!this.j) {
            bf.zzdvy.get();
            String str = bf.zzdvy.get();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 112);
            sb.append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            sb.append(str);
            sb.append(" DEBUG");
            this.j = true;
        }
    }

    public final void initialize() {
        cf zzwz = this.f2581a.zzwz();
        zzwz.zzaai();
        if (zzwz.zzaaj()) {
            setDryRun(zzwz.zzaak());
        }
        zzwz.zzaai();
        this.e = true;
    }

    public final h newTracker(String str) {
        h hVar;
        synchronized (this) {
            hVar = new h(this.f2581a, str);
            hVar.initialize();
        }
        return hVar;
    }

    public final h newTracker(int i2) {
        h hVar;
        synchronized (this) {
            hVar = new h(this.f2581a, null);
            if (i2 > 0) {
                cd cdVar = (cd) new cb(this.f2581a).zzav(i2);
                if (cdVar != null) {
                    hVar.zzdu("Loading Tracker config values");
                    hVar.c = cdVar;
                    boolean z = false;
                    if (hVar.c.zzdom != null) {
                        String str = hVar.c.zzdom;
                        hVar.set("&tid", str);
                        hVar.zza("trackingId loaded", str);
                    }
                    if (hVar.c.zzdzd >= 0.0d) {
                        String d2 = Double.toString(hVar.c.zzdzd);
                        hVar.set("&sf", d2);
                        hVar.zza("Sample frequency loaded", d2);
                    }
                    if (hVar.c.zzdze >= 0) {
                        int i3 = hVar.c.zzdze;
                        hVar.setSessionTimeout((long) i3);
                        hVar.zza("Session timeout loaded", Integer.valueOf(i3));
                    }
                    if (hVar.c.zzdzf != -1) {
                        boolean z2 = hVar.c.zzdzf == 1;
                        hVar.enableAutoActivityTracking(z2);
                        hVar.zza("Auto activity tracking loaded", Boolean.valueOf(z2));
                    }
                    if (hVar.c.zzdzg != -1) {
                        boolean z3 = hVar.c.zzdzg == 1;
                        if (z3) {
                            hVar.set("&aip", "1");
                        }
                        hVar.zza("Anonymize ip loaded", Boolean.valueOf(z3));
                    }
                    if (hVar.c.zzdzh == 1) {
                        z = true;
                    }
                    hVar.enableExceptionReporting(z);
                }
            }
            hVar.initialize();
        }
        return hVar;
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        this.f.add(aVar);
        Context context = this.f2581a.getContext();
        if (context instanceof Application) {
            enableAutoActivityReports((Application) context);
        }
    }

    public final void setAppOptOut(boolean z) {
        this.i = z;
        if (this.i) {
            this.f2581a.zzwx().zzwm();
        }
    }

    public final void setLocalDispatchPeriod(int i2) {
        this.f2581a.zzwx().setLocalDispatchPeriod(i2);
    }

    public final void dispatchLocalHits() {
        this.f2581a.zzwx().zzwn();
    }
}
