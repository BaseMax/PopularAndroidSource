package com.farsitel.bazaar.app.thirdparty.account.update;

import android.content.Intent;
import android.os.IBinder;
import c.c.a.b.h.a.a.a;
import c.c.a.e.d.b.ba;
import d.a.f;
import h.f.b.j;

/* compiled from: UpdateCheckService.kt */
public final class UpdateCheckService extends f {

    /* renamed from: a  reason: collision with root package name */
    public ba f12145a;

    public final ba b() {
        ba baVar = this.f12145a;
        if (baVar != null) {
            return baVar;
        }
        j.c("upgradableAppRepository");
        throw null;
    }

    public IBinder onBind(Intent intent) {
        j.b(intent, "intent");
        return new a(this);
    }
}
