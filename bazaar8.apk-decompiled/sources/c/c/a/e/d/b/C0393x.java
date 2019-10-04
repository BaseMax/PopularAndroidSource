package c.c.a.e.d.b;

import b.c.a.c.a;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import com.farsitel.bazaar.data.entity.MaliciousAppEntity;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.c.a.e.d.b.x  reason: case insensitive filesystem */
/* compiled from: MaliciousAppLocalDataSource.kt */
final class C0393x<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final C0393x f5021a = new C0393x();

    /* renamed from: a */
    public final List<MaliciousApp> apply(List<MaliciousAppEntity> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (MaliciousAppEntity maliciousApp : list) {
            arrayList.add(maliciousApp.toMaliciousApp());
        }
        return arrayList;
    }
}
