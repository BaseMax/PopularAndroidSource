package com.farsitel.bazaar.app.thirdparty.account;

import android.content.Intent;
import android.os.IBinder;
import c.c.a.e.d.a.a;
import d.a.f;
import h.f.b.j;

/* compiled from: LoginCheckService.kt */
public final class LoginCheckService extends f {

    /* renamed from: a  reason: collision with root package name */
    public a f12144a;

    public final a b() {
        a aVar = this.f12144a;
        if (aVar != null) {
            return aVar;
        }
        j.c("accountRepository");
        throw null;
    }

    public IBinder onBind(Intent intent) {
        j.b(intent, "intent");
        return new c.c.a.b.h.a.a(this);
    }
}
