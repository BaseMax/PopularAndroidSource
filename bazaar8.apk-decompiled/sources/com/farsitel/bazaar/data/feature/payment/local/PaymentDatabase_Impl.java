package com.farsitel.bazaar.data.feature.payment.local;

import b.C.a.c;
import b.z.C0354c;
import b.z.j;
import b.z.w;
import c.c.a.e.d.m.a.f;
import c.c.a.e.d.m.a.o;
import java.util.HashMap;

public final class PaymentDatabase_Impl extends PaymentDatabase {

    /* renamed from: l  reason: collision with root package name */
    public volatile f f12260l;

    public f p() {
        f fVar;
        if (this.f12260l != null) {
            return this.f12260l;
        }
        synchronized (this) {
            if (this.f12260l == null) {
                this.f12260l = new o(this);
            }
            fVar = this.f12260l;
        }
        return fVar;
    }

    public j d() {
        return new j(this, new HashMap(0), new HashMap(0), "payments");
    }

    public c a(C0354c cVar) {
        w wVar = new w(cVar, new b(this, 3), "51c4b7ade068c49616a702f2f9419546", "fb8d8cfe6372033a13b8861b682b3b87");
        c.b.a a2 = c.b.a(cVar.f3610b);
        a2.a(cVar.f3611c);
        a2.a((c.a) wVar);
        return cVar.f3609a.a(a2.a());
    }
}
