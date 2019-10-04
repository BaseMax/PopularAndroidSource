package com.farsitel.bazaar.data.feature.app;

import c.c.a.e.d.b.C0394y;
import c.c.a.e.d.b.ba;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import h.a.m;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3", f = "UpgradableAppRepository.kt", l = {54, 65}, m = "invokeSuspend")
/* compiled from: UpgradableAppRepository.kt */
final class UpgradableAppRepository$updateAll$3 extends SuspendLambda implements c<List<? extends MaliciousApp>, b<? super h>, Object> {
    public Object L$0;
    public Object L$1;
    public int label;
    public List p$0;
    public final /* synthetic */ ba this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppRepository$updateAll$3(ba baVar, b bVar) {
        super(2, bVar);
        this.this$0 = baVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        UpgradableAppRepository$updateAll$3 upgradableAppRepository$updateAll$3 = new UpgradableAppRepository$updateAll$3(this.this$0, bVar);
        upgradableAppRepository$updateAll$3.p$0 = (List) obj;
        return upgradableAppRepository$updateAll$3;
    }

    /* renamed from: a */
    public final Object b(List<MaliciousApp> list, b<? super h> bVar) {
        return ((UpgradableAppRepository$updateAll$3) a((Object) list, (b<?>) bVar)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Map map;
        Object obj2;
        List<MaliciousApp> list;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            list = this.p$0;
            map = new LinkedHashMap();
            C0394y b2 = this.this$0.f4978d;
            this.L$0 = list;
            this.L$1 = map;
            this.label = 1;
            obj2 = b2.a(this);
            if (obj2 == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
            map = (Map) this.L$1;
            list = (List) this.L$0;
            obj2 = obj;
        } else if (i2 == 2) {
            List list2 = (List) this.L$1;
            Map map2 = (Map) this.L$0;
            e.a(obj);
            return h.f14579a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        for (MaliciousApp maliciousApp : (Iterable) obj2) {
            map.put(maliciousApp.getPackageName(), maliciousApp);
        }
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (MaliciousApp maliciousApp2 : list) {
            if (map.containsKey(maliciousApp2.getPackageName())) {
                Object obj3 = map.get(maliciousApp2.getPackageName());
                if (obj3 != null) {
                    maliciousApp2 = MaliciousApp.copy$default(maliciousApp2, null, null, 0, null, null, ((MaliciousApp) obj3).isNotified(), 31, null);
                } else {
                    j.a();
                    throw null;
                }
            }
            arrayList.add(maliciousApp2);
        }
        C0394y b3 = this.this$0.f4978d;
        this.L$0 = map;
        this.L$1 = arrayList;
        this.label = 2;
        if (b3.a((List<MaliciousApp>) arrayList, (b<? super h>) this) == a2) {
            return a2;
        }
        return h.f14579a;
    }
}
