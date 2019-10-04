package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.util.m;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public final class cs implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: a  reason: collision with root package name */
    private static final cs f2831a = new cs();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f2832b = new AtomicBoolean();
    private final AtomicBoolean c = new AtomicBoolean();
    private final ArrayList<ct> d = new ArrayList<>();
    private boolean e = false;

    private cs() {
    }

    private final void a(boolean z) {
        synchronized (f2831a) {
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((ct) obj).zzbf(z);
            }
        }
    }

    public static void zza(Application application) {
        synchronized (f2831a) {
            if (!f2831a.e) {
                application.registerActivityLifecycleCallbacks(f2831a);
                application.registerComponentCallbacks(f2831a);
                f2831a.e = true;
            }
        }
    }

    public static cs zzahb() {
        return f2831a;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f2832b.compareAndSet(true, false);
        this.c.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f2832b.compareAndSet(true, false);
        this.c.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void onConfigurationChanged(Configuration configuration) {
    }

    public final void onLowMemory() {
    }

    public final void onTrimMemory(int i) {
        if (i == 20 && this.f2832b.compareAndSet(false, true)) {
            this.c.set(true);
            a(true);
        }
    }

    public final void zza(ct ctVar) {
        synchronized (f2831a) {
            this.d.add(ctVar);
        }
    }

    public final boolean zzahc() {
        return this.f2832b.get();
    }

    public final boolean zzbe(boolean z) {
        if (!this.c.get()) {
            if (!m.zzami()) {
                return true;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f2832b.set(true);
            }
        }
        return this.f2832b.get();
    }
}
