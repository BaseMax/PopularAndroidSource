package c.e.a.b.d.a.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import c.e.a.b.d.g.n;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: c.e.a.b.d.a.a.b  reason: case insensitive filesystem */
public final class C0754b implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: a  reason: collision with root package name */
    public static final C0754b f9850a = new C0754b();

    /* renamed from: b  reason: collision with root package name */
    public final AtomicBoolean f9851b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    public final AtomicBoolean f9852c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<a> f9853d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public boolean f9854e = false;

    /* renamed from: c.e.a.b.d.a.a.b$a */
    public interface a {
        void a(boolean z);
    }

    public static C0754b a() {
        return f9850a;
    }

    @TargetApi(16)
    public final boolean b(boolean z) {
        if (!this.f9852c.get()) {
            if (!n.c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f9852c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f9851b.set(true);
            }
        }
        return b();
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f9851b.compareAndSet(true, false);
        this.f9852c.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f9851b.compareAndSet(true, false);
        this.f9852c.set(true);
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

    public final void onTrimMemory(int i2) {
        if (i2 == 20 && this.f9851b.compareAndSet(false, true)) {
            this.f9852c.set(true);
            a(true);
        }
    }

    public static void a(Application application) {
        synchronized (f9850a) {
            if (!f9850a.f9854e) {
                application.registerActivityLifecycleCallbacks(f9850a);
                application.registerComponentCallbacks(f9850a);
                f9850a.f9854e = true;
            }
        }
    }

    public final void a(a aVar) {
        synchronized (f9850a) {
            this.f9853d.add(aVar);
        }
    }

    public final boolean b() {
        return this.f9851b.get();
    }

    public final void a(boolean z) {
        synchronized (f9850a) {
            ArrayList<a> arrayList = this.f9853d;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                a aVar = arrayList.get(i2);
                i2++;
                aVar.a(z);
            }
        }
    }
}
