package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public final class ln extends kw {

    /* renamed from: a  reason: collision with root package name */
    protected lq f3346a;

    /* renamed from: b  reason: collision with root package name */
    private volatile AppMeasurement.g f3347b;
    private AppMeasurement.g c;
    private long d;
    private final Map<Activity, lq> f = new ArrayMap();
    private final CopyOnWriteArrayList<AppMeasurement.f> g = new CopyOnWriteArrayList<>();
    private boolean h;
    private AppMeasurement.g i;
    private String j;

    public ln(jx jxVar) {
        super(jxVar);
    }

    private static String a(String str) {
        String[] split = str.split("\\.");
        if (split.length == 0) {
            return str.substring(0, 36);
        }
        String str2 = split[split.length - 1];
        if (str2.length() > 36) {
            str2 = str2.substring(0, 36);
        }
        return str2;
    }

    private final void a(Activity activity, lq lqVar, boolean z) {
        AppMeasurement.g gVar = null;
        AppMeasurement.g gVar2 = this.f3347b != null ? this.f3347b : (this.c == null || Math.abs(zzws().elapsedRealtime() - this.d) >= 1000) ? null : this.c;
        if (gVar2 != null) {
            gVar = new AppMeasurement.g(gVar2);
        }
        boolean z2 = true;
        this.h = true;
        try {
            Iterator<AppMeasurement.f> it = this.g.iterator();
            while (it.hasNext()) {
                try {
                    z2 &= it.next().zza(gVar, lqVar);
                } catch (Exception e) {
                    zzawy().zzazd().zzj("onScreenChangeCallback threw exception", e);
                }
            }
        } catch (Exception e2) {
            zzawy().zzazd().zzj("onScreenChangeCallback loop threw exception", e2);
        } catch (Throwable th) {
            this.h = false;
            throw th;
        }
        this.h = false;
        AppMeasurement.g gVar3 = this.f3347b == null ? this.c : this.f3347b;
        if (z2) {
            if (lqVar.zziwl == null) {
                lqVar.zziwl = a(activity.getClass().getCanonicalName());
            }
            lq lqVar2 = new lq(lqVar);
            this.c = this.f3347b;
            this.d = zzws().elapsedRealtime();
            this.f3347b = lqVar2;
            zzawx().zzg(new lo(this, z, gVar3, lqVar2));
        }
    }

    public static void zza(AppMeasurement.g gVar, Bundle bundle) {
        if (bundle != null && gVar != null && !bundle.containsKey("_sc")) {
            if (gVar.zziwk != null) {
                bundle.putString("_sn", gVar.zziwk);
            }
            bundle.putString("_sc", gVar.zziwl);
            bundle.putLong("_si", gVar.zziwm);
        }
    }

    /* access modifiers changed from: package-private */
    public final lq a(Activity activity) {
        ap.checkNotNull(activity);
        lq lqVar = this.f.get(activity);
        if (lqVar != null) {
            return lqVar;
        }
        lq lqVar2 = new lq(null, a(activity.getClass().getCanonicalName()), zzawu().zzbay());
        this.f.put(activity, lqVar2);
        return lqVar2;
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final void onActivityDestroyed(Activity activity) {
        this.f.remove(activity);
    }

    public final void onActivityPaused(Activity activity) {
        lq a2 = a(activity);
        this.c = this.f3347b;
        this.d = zzws().elapsedRealtime();
        this.f3347b = null;
        zzawx().zzg(new lp(this, a2));
    }

    public final void onActivityResumed(Activity activity) {
        a(activity, a(activity), false);
        hu zzawk = zzawk();
        zzawk.zzawx().zzg(new hx(zzawk, zzawk.zzws().elapsedRealtime()));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (bundle != null) {
            lq lqVar = this.f.get(activity);
            if (lqVar != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("id", lqVar.zziwm);
                bundle2.putString("name", lqVar.zziwk);
                bundle2.putString("referrer_name", lqVar.zziwl);
                bundle.putBundle("com.google.firebase.analytics.screen_service", bundle2);
            }
        }
    }

    public final void registerOnScreenChangeCallback(AppMeasurement.f fVar) {
        if (fVar == null) {
            zzawy().zzazf().log("Attempting to register null OnScreenChangeCallback");
            return;
        }
        this.g.remove(fVar);
        this.g.add(fVar);
    }

    public final void setCurrentScreen(Activity activity, String str, String str2) {
        if (activity == null) {
            zzawy().zzazf().log("setCurrentScreen must be called with a non-null activity");
            return;
        }
        zzawx();
        if (!js.zzau()) {
            zzawy().zzazf().log("setCurrentScreen must be called from the main thread");
        } else if (this.h) {
            zzawy().zzazf().log("Cannot call setCurrentScreen from onScreenChangeCallback");
        } else if (this.f3347b == null) {
            zzawy().zzazf().log("setCurrentScreen cannot be called while no activity active");
        } else if (this.f.get(activity) == null) {
            zzawy().zzazf().log("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            if (str2 == null) {
                str2 = a(activity.getClass().getCanonicalName());
            }
            boolean equals = this.f3347b.zziwl.equals(str2);
            boolean zzas = na.zzas(this.f3347b.zziwk, str);
            if (equals && zzas) {
                zzawy().zzazg().log("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                zzawy().zzazf().zzj("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str2 == null || (str2.length() > 0 && str2.length() <= 100)) {
                zzawy().zzazj().zze("Setting current screen to name, class", str == null ? "null" : str, str2);
                lq lqVar = new lq(str, str2, zzawu().zzbay());
                this.f.put(activity, lqVar);
                a(activity, lqVar, true);
            } else {
                zzawy().zzazf().zzj("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            }
        }
    }

    public final void unregisterOnScreenChangeCallback(AppMeasurement.f fVar) {
        this.g.remove(fVar);
    }

    public final void zza(String str, AppMeasurement.g gVar) {
        zzve();
        synchronized (this) {
            if (this.j == null || this.j.equals(str) || gVar != null) {
                this.j = str;
                this.i = gVar;
            }
        }
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final /* bridge */ /* synthetic */ void zzawj() {
        super.zzawj();
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final lq zzbao() {
        k();
        zzve();
        return this.f3346a;
    }

    public final AppMeasurement.g zzbap() {
        AppMeasurement.g gVar = this.f3347b;
        if (gVar == null) {
            return null;
        }
        return new AppMeasurement.g(gVar);
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }

    static /* synthetic */ void a(ln lnVar, lq lqVar) {
        lnVar.zzawk().zzaj(lnVar.zzws().elapsedRealtime());
        if (lnVar.zzaww().zzbs(lqVar.zzjib)) {
            lqVar.zzjib = false;
        }
    }
}
