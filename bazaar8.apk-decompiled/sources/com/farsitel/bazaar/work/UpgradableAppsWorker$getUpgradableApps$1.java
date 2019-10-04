package com.farsitel.bazaar.work;

import androidx.work.ListenableWorker;
import c.c.a.c.c.a;
import c.c.a.e.d.b.ba;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.UpgradableAppsWorker$getUpgradableApps$1", f = "UpgradableAppsWorker.kt", l = {26, 27}, m = "invokeSuspend")
/* compiled from: UpgradableAppsWorker.kt */
final class UpgradableAppsWorker$getUpgradableApps$1 extends SuspendLambda implements c<H, b<? super ListenableWorker.a>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ UpgradableAppsWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsWorker$getUpgradableApps$1(UpgradableAppsWorker upgradableAppsWorker, b bVar) {
        super(2, bVar);
        this.this$0 = upgradableAppsWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        UpgradableAppsWorker$getUpgradableApps$1 upgradableAppsWorker$getUpgradableApps$1 = new UpgradableAppsWorker$getUpgradableApps$1(this.this$0, bVar);
        upgradableAppsWorker$getUpgradableApps$1.p$ = (H) obj;
        return upgradableAppsWorker$getUpgradableApps$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((UpgradableAppsWorker$getUpgradableApps$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        ListenableWorker.a aVar;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a.a(a.f4699b, "Start getting upgradable apps.", null, null, 6, null);
            ba a3 = this.this$0.f12499h;
            this.label = 1;
            if (a3.f(this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else if (i2 == 2) {
            try {
                e.a(obj);
                aVar = ListenableWorker.a.c();
            } catch (Exception e2) {
                a.f4699b.b(new Throwable("Unable to retrieve upgradable apps.", e2));
                aVar = ListenableWorker.a.a();
            }
            return aVar;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.c.a.b.f.a.d b2 = this.this$0.f12500i;
        this.label = 2;
        if (b2.a((b<? super h>) this) == a2) {
            return a2;
        }
        aVar = ListenableWorker.a.c();
        return aVar;
    }
}
