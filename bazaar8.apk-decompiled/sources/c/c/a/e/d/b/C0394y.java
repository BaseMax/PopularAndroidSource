package c.c.a.e.d.b;

import androidx.lifecycle.LiveData;
import b.r.D;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import com.farsitel.bazaar.data.entity.MaliciousAppEntity;
import h.a.m;
import h.c.b;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.c.a.e.d.b.y  reason: case insensitive filesystem */
/* compiled from: MaliciousAppLocalDataSource.kt */
public final class C0394y {

    /* renamed from: a  reason: collision with root package name */
    public final C0385o f5022a;

    public C0394y(C0385o oVar) {
        j.b(oVar, "dao");
        this.f5022a = oVar;
    }

    public final Object a(List<MaliciousApp> list, b<? super h> bVar) {
        this.f5022a.clear();
        C0385o oVar = this.f5022a;
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (MaliciousApp maliciousAppEntity : list) {
            arrayList.add(maliciousAppEntity.toMaliciousAppEntity());
        }
        oVar.a(arrayList);
        return h.f14579a;
    }

    public final List<MaliciousApp> b() {
        List<MaliciousAppEntity> b2 = this.f5022a.b();
        ArrayList arrayList = new ArrayList(m.a(b2, 10));
        for (MaliciousAppEntity maliciousApp : b2) {
            arrayList.add(maliciousApp.toMaliciousApp());
        }
        return arrayList;
    }

    public final Object b(b<? super h> bVar) {
        this.f5022a.c();
        return h.f14579a;
    }

    public final Object a(String str, b<? super h> bVar) {
        this.f5022a.delete(str);
        return h.f14579a;
    }

    public final Object a(String str, long j2, b<? super h> bVar) {
        this.f5022a.a(str, j2);
        return h.f14579a;
    }

    public final LiveData<List<MaliciousApp>> a() {
        LiveData<List<MaliciousApp>> a2 = D.a(this.f5022a.a(), C0393x.f5021a);
        j.a((Object) a2, "Transformations.map(dao.…aliciousApp() }\n        }");
        return a2;
    }

    public final Object a(b<? super List<MaliciousApp>> bVar) {
        List<MaliciousAppEntity> d2 = this.f5022a.d();
        ArrayList arrayList = new ArrayList(m.a(d2, 10));
        for (MaliciousAppEntity maliciousApp : d2) {
            arrayList.add(maliciousApp.toMaliciousApp());
        }
        return arrayList;
    }
}
