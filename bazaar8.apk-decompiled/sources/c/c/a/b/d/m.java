package c.c.a.b.d;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.d.a.a;
import c.c.a.e.d.m.a.e;
import c.c.a.e.d.m.d;
import h.c.b;
import h.f.b.j;
import h.h;
import java.util.Set;

/* compiled from: PaymentManager.kt */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final d f4599a;

    /* renamed from: b  reason: collision with root package name */
    public final a f4600b;

    public m(d dVar, a aVar) {
        j.b(dVar, "paymentRepository");
        j.b(aVar, "accountRepository");
        this.f4599a = dVar;
        this.f4600b = aVar;
    }

    public final LiveData<Boolean> b(String str) {
        j.b(str, "videoId");
        LiveData<Boolean> a2 = D.a(this.f4599a.a(), new k(this, str));
        j.a((Object) a2, "Transformations.map(paym…(it, videoId) }\n        }");
        return a2;
    }

    public final boolean c(e eVar) {
        return j.a((Object) eVar.c(), (Object) "com.farsitel.bazaar.video");
    }

    public final Object a(b<? super h> bVar) {
        return this.f4599a.c(bVar);
    }

    public final boolean b(e eVar) {
        return j.a((Object) eVar.b(), (Object) this.f4600b.k());
    }

    public final LiveData<Set<String>> a() {
        LiveData<Set<String>> a2 = D.a(this.f4599a.a(), new l(this));
        j.a((Object) a2, "Transformations.map(paym…       .toSet()\n        }");
        return a2;
    }

    public final LiveData<Boolean> a(String str) {
        j.b(str, "packageName");
        LiveData<Boolean> a2 = D.a(this.f4599a.a(), new j(this, str));
        j.a((Object) a2, "Transformations.map(paym… packageName) }\n        }");
        return a2;
    }

    public final boolean a(e eVar) {
        return j.a((Object) eVar.c(), (Object) "com.farsitel.bazaar");
    }

    public final boolean a(e eVar, String str) {
        return j.a((Object) eVar.a(), (Object) str);
    }
}
