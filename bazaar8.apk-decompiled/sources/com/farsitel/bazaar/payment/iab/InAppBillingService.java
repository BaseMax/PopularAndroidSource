package com.farsitel.bazaar.payment.iab;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import c.c.a.b.f.a.c;
import c.c.a.e.d.m.d;
import d.a.f;
import h.f.b.j;

/* compiled from: InAppBillingService.kt */
public final class InAppBillingService extends f {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f12293a = false;

    /* renamed from: b  reason: collision with root package name */
    public static final a f12294b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public c.c.a.e.d.a.a f12295c;

    /* renamed from: d  reason: collision with root package name */
    public d f12296d;

    /* renamed from: e  reason: collision with root package name */
    public c f12297e;

    /* renamed from: f  reason: collision with root package name */
    public IBinder f12298f;

    /* compiled from: InAppBillingService.kt */
    public static final class a {
        public a() {
        }

        public final boolean a() {
            return InAppBillingService.f12293a;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public IBinder onBind(Intent intent) {
        j.b(intent, "intent");
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        c.c.a.c.c.a.a(aVar, "Bazaar-BillingService, InAppBillingService :: onBind :: intent= " + intent + ", ", null, null, 6, null);
        if (this.f12298f == null) {
            Context applicationContext = getApplicationContext();
            j.a((Object) applicationContext, "applicationContext");
            c.c.a.e.d.a.a aVar2 = this.f12295c;
            if (aVar2 != null) {
                d dVar = this.f12296d;
                if (dVar != null) {
                    c cVar = this.f12297e;
                    if (cVar != null) {
                        this.f12298f = new c.c.a.k.a.a(applicationContext, aVar2, dVar, cVar);
                    } else {
                        j.c("pardakhtNotificationManager");
                        throw null;
                    }
                } else {
                    j.c("paymentRepository");
                    throw null;
                }
            } else {
                j.c("accountRepository");
                throw null;
            }
        }
        return this.f12298f;
    }
}
