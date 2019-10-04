package c.c.a.d.g.a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: ForegroundDetector.kt */
public final class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public int f4798a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f4799b = true;

    /* renamed from: c  reason: collision with root package name */
    public long f4800c;

    /* renamed from: d  reason: collision with root package name */
    public final List<C0077a> f4801d = new ArrayList();

    /* renamed from: c.c.a.d.g.a.a$a  reason: collision with other inner class name */
    /* compiled from: ForegroundDetector.kt */
    public interface C0077a {
        void a(Activity activity, boolean z);

        void onActivityPaused(Activity activity);
    }

    public final a a(Context context) {
        j.b(context, "context");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            return this;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.Application");
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
        for (C0077a onActivityPaused : this.f4801d) {
            onActivityPaused.onActivityPaused(activity);
        }
    }

    public void onActivityResumed(Activity activity) {
        for (C0077a a2 : this.f4801d) {
            a2.a(activity, this.f4799b);
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        this.f4798a++;
        if (this.f4798a == 1 && System.currentTimeMillis() - this.f4800c < ((long) 200)) {
            this.f4799b = false;
        }
    }

    public void onActivityStopped(Activity activity) {
        this.f4798a--;
        if (this.f4798a == 0) {
            this.f4800c = System.currentTimeMillis();
            this.f4799b = true;
        }
    }

    public final void a(C0077a aVar) {
        j.b(aVar, "listener");
        this.f4801d.add(aVar);
    }
}
