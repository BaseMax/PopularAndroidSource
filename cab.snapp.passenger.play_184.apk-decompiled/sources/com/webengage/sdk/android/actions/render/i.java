package com.webengage.sdk.android.actions.render;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.NotificationClickHandlerService;

public class i {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5393a;

    /* renamed from: b  reason: collision with root package name */
    private final PushNotificationData f5394b;
    private final CallToAction c;
    private final String d;
    private final String e;
    private final Bundle f;
    private final Bundle g;
    private final boolean h;
    private final boolean i;
    private final boolean j;

    public static final class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public final Context f5395a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final PushNotificationData f5396b;
        /* access modifiers changed from: private */
        public final CallToAction c;
        /* access modifiers changed from: private */
        public String d = null;
        /* access modifiers changed from: private */
        public String e = null;
        /* access modifiers changed from: private */
        public Bundle f = null;
        /* access modifiers changed from: private */
        public Bundle g = null;
        /* access modifiers changed from: private */
        public boolean h = true;
        /* access modifiers changed from: private */
        public boolean i = true;
        /* access modifiers changed from: private */
        public boolean j = false;

        public a(Context context, PushNotificationData pushNotificationData, CallToAction callToAction) {
            this.f5395a = context;
            this.f5396b = pushNotificationData;
            this.c = callToAction;
        }

        public a(Context context, PushNotificationData pushNotificationData, String str) {
            this.f5395a = context;
            this.f5396b = pushNotificationData;
            this.c = null;
            this.d = str;
        }

        public final PendingIntent a() {
            return new i(this).a();
        }

        public final a a(Bundle bundle) {
            this.f = bundle;
            return this;
        }

        public final a a(String str) {
            this.e = str;
            return this;
        }

        public final a a(boolean z) {
            this.h = z;
            return this;
        }

        public final a b(Bundle bundle) {
            this.g = bundle;
            return this;
        }

        public final a b(String str) {
            this.d = str;
            return this;
        }

        public final a b(boolean z) {
            this.i = z;
            return this;
        }

        public final a c(boolean z) {
            this.j = z;
            return this;
        }
    }

    private i(a aVar) {
        this.f5393a = aVar.f5395a;
        this.f5394b = aVar.f5396b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
    }

    /* access modifiers changed from: private */
    public PendingIntent a() {
        String str;
        Bundle bundle = new Bundle();
        Intent intent = new Intent(this.f5393a.getApplicationContext(), NotificationClickHandlerService.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        bundle.putString("action", this.j ? "push_rerender" : "WebEngageDeeplink");
        String str2 = this.e;
        if (str2 != null) {
            bundle.putString(NotificationCompat.CATEGORY_EVENT, str2);
        }
        bundle.putBoolean("dismiss_flag", this.h);
        bundle.putBoolean("launch_app_if_invalid", this.i);
        bundle.putString("id", this.f5394b.getVariationId());
        bundle.putString("experiment_id", this.f5394b.getExperimentId());
        bundle.putInt("hashed_notification_id", this.f5394b.getVariationId().hashCode());
        if (this.f5394b.getCustomData() != null) {
            bundle.putBundle("custom_data", this.f5394b.getCustomData());
        }
        Bundle bundle2 = this.f;
        if (bundle2 != null) {
            bundle.putBundle("event_data", bundle2);
        }
        Bundle bundle3 = this.g;
        if (bundle3 != null) {
            bundle.putBundle("extra_data", bundle3);
        }
        CallToAction callToAction = this.c;
        if (callToAction != null) {
            bundle.putBoolean("notification_main_intent", callToAction.isPrimeAction());
            if (this.c.getId() != null) {
                bundle.putString("call_to_action", this.c.getId());
            }
            bundle.putString("deeplink_uri", this.c.getFullActionUri());
        }
        if (this.d == null) {
            CallToAction callToAction2 = this.c;
            str = (callToAction2 == null || callToAction2.isPrimeAction() || this.c.getId() == null) ? this.f5394b.getVariationId() : this.c.getId();
        } else {
            str = this.d + this.f5394b.getVariationId();
        }
        int hashCode = str.hashCode();
        intent.putExtras(bundle);
        return PendingIntent.getService(this.f5393a.getApplicationContext(), hashCode, intent, 134217728);
    }
}
