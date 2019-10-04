package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.text.TextUtils;
import io.fabric.sdk.android.services.c.d;

final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6584a;

    /* renamed from: b  reason: collision with root package name */
    private final io.fabric.sdk.android.services.c.c f6585b;

    public c(Context context) {
        this.f6584a = context.getApplicationContext();
        this.f6585b = new d(context, "TwitterAdvertisingInfoPreferences");
    }

    /* access modifiers changed from: package-private */
    public final void a(b bVar) {
        if (b(bVar)) {
            io.fabric.sdk.android.services.c.c cVar = this.f6585b;
            cVar.save(cVar.edit().putString("advertising_id", bVar.advertisingId).putBoolean("limit_ad_tracking_enabled", bVar.limitAdTrackingEnabled));
            return;
        }
        io.fabric.sdk.android.services.c.c cVar2 = this.f6585b;
        cVar2.save(cVar2.edit().remove("advertising_id").remove("limit_ad_tracking_enabled"));
    }

    public final f getReflectionStrategy() {
        return new d(this.f6584a);
    }

    public final f getServiceStrategy() {
        return new e(this.f6584a);
    }

    private static boolean b(b bVar) {
        return bVar != null && !TextUtils.isEmpty(bVar.advertisingId);
    }

    /* access modifiers changed from: package-private */
    public final b a() {
        b advertisingInfo = getReflectionStrategy().getAdvertisingInfo();
        if (!b(advertisingInfo)) {
            advertisingInfo = getServiceStrategy().getAdvertisingInfo();
            if (!b(advertisingInfo)) {
                io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "AdvertisingInfo not present");
            } else {
                io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Using AdvertisingInfo from Service Provider");
            }
        } else {
            io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Using AdvertisingInfo from Reflection Provider");
        }
        return advertisingInfo;
    }

    public final b getAdvertisingInfo() {
        final b bVar = new b(this.f6585b.get().getString("advertising_id", ""), this.f6585b.get().getBoolean("limit_ad_tracking_enabled", false));
        if (b(bVar)) {
            io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Using AdvertisingInfo from Preference Store");
            new Thread(new h() {
                public final void onRun() {
                    b a2 = c.this.a();
                    if (!bVar.equals(a2)) {
                        io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Asychronously getting Advertising Info and storing it to preferences");
                        c.this.a(a2);
                    }
                }
            }).start();
            return bVar;
        }
        b a2 = a();
        a(a2);
        return a2;
    }
}
