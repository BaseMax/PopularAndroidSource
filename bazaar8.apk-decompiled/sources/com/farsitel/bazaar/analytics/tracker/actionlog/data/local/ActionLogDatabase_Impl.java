package com.farsitel.bazaar.analytics.tracker.actionlog.data.local;

import b.C.a.c;
import b.z.C0354c;
import b.z.j;
import b.z.w;
import c.c.a.a.b.a.a.b.a;
import c.c.a.a.b.a.a.b.e;
import java.util.HashMap;

public final class ActionLogDatabase_Impl extends ActionLogDatabase {
    public volatile a m;

    public a p() {
        a aVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new e(this);
            }
            aVar = this.m;
        }
        return aVar;
    }

    public j d() {
        return new j(this, new HashMap(0), new HashMap(0), "actionLog");
    }

    public c a(C0354c cVar) {
        w wVar = new w(cVar, new f(this, 1), "02cdfb1ca6f75c0c9b494e578f9749cc", "3971ada524eacfe66b0ac7c460a7c1ca");
        c.b.a a2 = c.b.a(cVar.f3610b);
        a2.a(cVar.f3611c);
        a2.a((c.a) wVar);
        return cVar.f3609a.a(a2.a());
    }
}
