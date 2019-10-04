package c.c.a.e.d.b;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.f.g;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.a.m;
import h.c.b;
import h.f.b.f;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppLocalDataSource.kt */
public final class W {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4965a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final L f4966b;

    /* renamed from: c  reason: collision with root package name */
    public final I f4967c;

    /* compiled from: UpgradableAppLocalDataSource.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public W(L l2, I i2) {
        j.b(l2, "dao");
        j.b(i2, "sharedDataSource");
        this.f4966b = l2;
        this.f4967c = i2;
    }

    public final Object a(List<UpgradableApp> list, b<? super h> bVar) {
        this.f4966b.clear();
        L l2 = this.f4966b;
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (UpgradableApp b2 : list) {
            arrayList.add(g.b(b2));
        }
        l2.a((List<LocalUpgradableApp>) arrayList);
        return h.f14579a;
    }

    public final Object b(String str, b<? super h> bVar) {
        this.f4966b.delete(str);
        return h.f14579a;
    }

    public final Object c(b<? super Long> bVar) {
        return this.f4967c.a("last_upgradable_apps_update", h.c.b.a.a.a(0));
    }

    public final Object d(b<? super h> bVar) {
        this.f4966b.c();
        return h.f14579a;
    }

    public final Object b(b<? super List<UpgradableApp>> bVar) {
        List<LocalUpgradableApp> b2 = this.f4966b.b();
        ArrayList arrayList = new ArrayList(m.a(b2, 10));
        for (LocalUpgradableApp a2 : b2) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }

    public final Object a(UpgradableApp upgradableApp, b<? super h> bVar) {
        this.f4966b.a(g.b(upgradableApp));
        return h.f14579a;
    }

    public final Object a(String str, long j2, b<? super h> bVar) {
        this.f4966b.a(str, j2);
        return h.f14579a;
    }

    public final LiveData<List<UpgradableApp>> a() {
        LiveData<List<UpgradableApp>> a2 = D.a(this.f4966b.a(), X.f4968a);
        j.a((Object) a2, "Transformations.map(dao.…gradableApp() }\n        }");
        return a2;
    }

    public final Object a(b<? super List<UpgradableApp>> bVar) {
        List<LocalUpgradableApp> d2 = this.f4966b.d();
        ArrayList arrayList = new ArrayList(m.a(d2, 10));
        for (LocalUpgradableApp a2 : d2) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }

    public final Object a(long j2, b<? super h> bVar) {
        I.a(this.f4967c, "last_upgradable_apps_update", h.c.b.a.a.a(j2), false, 4, null);
        return h.f14579a;
    }

    public final Object a(String str, b<? super Long> bVar) {
        return this.f4966b.b(str);
    }

    public final LocalUpgradableApp a(String str) {
        j.b(str, "packageName");
        return this.f4966b.a(str);
    }
}
