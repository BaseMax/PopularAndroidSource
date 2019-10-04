package com.farsitel.bazaar.app.notification.type;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import c.c.a.b.f;
import c.c.a.b.f.a.d;
import h.f.a.a;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: UpgradableAppsNotification.kt */
final class UpgradableAppsNotification$tapIntent$2 extends Lambda implements a<PendingIntent> {
    public final /* synthetic */ d this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsNotification$tapIntent$2(d dVar) {
        super(0);
        this.this$0 = dVar;
    }

    public final PendingIntent invoke() {
        Context a2 = this.this$0.f4657f;
        Uri parse = Uri.parse("bazaar://page?slug=upgradable");
        j.a((Object) parse, "Uri.parse(this)");
        return f.a(a2, parse, (Bundle) null, 4, (Object) null);
    }
}
