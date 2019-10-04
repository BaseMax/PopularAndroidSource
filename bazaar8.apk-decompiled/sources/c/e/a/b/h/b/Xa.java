package c.e.a.b.h.b;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

@TargetApi(14)
public final class Xa implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Fa f10790a;

    public Xa(Fa fa) {
        this.f10790a = fa;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        String str;
        try {
            this.f10790a.e().B().a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null) {
                Uri data = intent.getData();
                if (data != null && data.isHierarchical()) {
                    if (bundle == null) {
                        Bundle a2 = this.f10790a.g().a(data);
                        this.f10790a.g();
                        if (cc.a(intent)) {
                            str = "gs";
                        } else {
                            str = "auto";
                        }
                        if (a2 != null) {
                            this.f10790a.b(str, "_cmp", a2);
                        }
                    }
                    String queryParameter = data.getQueryParameter("referrer");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                            this.f10790a.e().A().a("Activity created with data 'referrer' param without gclid and at least one utm field");
                            return;
                        }
                        this.f10790a.e().A().a("Activity created with referrer", queryParameter);
                        if (!TextUtils.isEmpty(queryParameter)) {
                            this.f10790a.a("auto", "_ldl", (Object) queryParameter, true);
                        }
                    } else {
                        return;
                    }
                }
            }
        } catch (Exception e2) {
            this.f10790a.e().t().a("Throwable caught in onActivityCreated", e2);
        }
        this.f10790a.s().a(activity, bundle);
    }

    public final void onActivityDestroyed(Activity activity) {
        this.f10790a.s().a(activity);
    }

    public final void onActivityPaused(Activity activity) {
        this.f10790a.s().b(activity);
        Jb u = this.f10790a.u();
        u.d().a((Runnable) new Nb(u, u.c().a()));
    }

    public final void onActivityResumed(Activity activity) {
        this.f10790a.s().c(activity);
        Jb u = this.f10790a.u();
        u.d().a((Runnable) new Mb(u, u.c().a()));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f10790a.s().b(activity, bundle);
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public /* synthetic */ Xa(Fa fa, Ga ga) {
        this(fa);
    }
}
