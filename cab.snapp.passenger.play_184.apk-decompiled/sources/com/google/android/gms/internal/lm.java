package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.adjust.sdk.Constants;

final class lm implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ky f3345a;

    private lm(ky kyVar) {
        this.f3345a = kyVar;
    }

    /* synthetic */ lm(ky kyVar, byte b2) {
        this(kyVar);
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            this.f3345a.zzawy().zzazj().log("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null) {
                Uri data = intent.getData();
                if (data != null && data.isHierarchical()) {
                    if (bundle == null) {
                        Bundle zzp = this.f3345a.zzawu().zzp(data);
                        this.f3345a.zzawu();
                        String str = na.zzo(intent) ? "gs" : "auto";
                        if (zzp != null) {
                            this.f3345a.zzc(str, "_cmp", zzp);
                        }
                    }
                    String queryParameter = data.getQueryParameter(Constants.REFERRER);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                            this.f3345a.zzawy().zzazi().log("Activity created with data 'referrer' param without gclid and at least one utm field");
                            return;
                        }
                        this.f3345a.zzawy().zzazi().zzj("Activity created with referrer", queryParameter);
                        if (!TextUtils.isEmpty(queryParameter)) {
                            this.f3345a.zzb("auto", "_ldl", queryParameter);
                        }
                    } else {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            this.f3345a.zzawy().zzazd().zzj("Throwable caught in onActivityCreated", th);
        }
        ln zzawq = this.f3345a.zzawq();
        if (bundle != null) {
            Bundle bundle2 = bundle.getBundle("com.google.firebase.analytics.screen_service");
            if (bundle2 != null) {
                lq a2 = zzawq.a(activity);
                a2.zziwm = bundle2.getLong("id");
                a2.zziwk = bundle2.getString("name");
                a2.zziwl = bundle2.getString("referrer_name");
            }
        }
    }

    public final void onActivityDestroyed(Activity activity) {
        this.f3345a.zzawq().onActivityDestroyed(activity);
    }

    public final void onActivityPaused(Activity activity) {
        this.f3345a.zzawq().onActivityPaused(activity);
        mq zzaww = this.f3345a.zzaww();
        zzaww.zzawx().zzg(new mu(zzaww, zzaww.zzws().elapsedRealtime()));
    }

    public final void onActivityResumed(Activity activity) {
        this.f3345a.zzawq().onActivityResumed(activity);
        mq zzaww = this.f3345a.zzaww();
        zzaww.zzawx().zzg(new mt(zzaww, zzaww.zzws().elapsedRealtime()));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f3345a.zzawq().onActivitySaveInstanceState(activity, bundle);
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }
}
