package com.farsitel.bazaar.ui.upgradableapps;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.c.a.a;
import c.c.a.n.A.g;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsViewModel$makeData$1", f = "UpgradableAppsViewModel.kt", l = {38}, m = "invokeSuspend")
/* compiled from: UpgradableAppsViewModel.kt */
final class UpgradableAppsViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $pageName;
    public Object L$0;
    public int label;
    public H p$;
    public final /* synthetic */ g this$0;

    @d(c = "com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsViewModel$makeData$1$1", f = "UpgradableAppsViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: UpgradableAppsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super LiveData<List<? extends PageTypeItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ UpgradableAppsViewModel$makeData$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            h.c.a.b.a();
            if (this.label == 0) {
                e.a(obj);
                H h2 = this.p$;
                return D.a(this.this$0.this$0.C.a(), new f(this));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsViewModel$makeData$1(g gVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = gVar;
        this.$pageName = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        UpgradableAppsViewModel$makeData$1 upgradableAppsViewModel$makeData$1 = new UpgradableAppsViewModel$makeData$1(this.this$0, this.$pageName, bVar);
        upgradableAppsViewModel$makeData$1.p$ = (H) obj;
        return upgradableAppsViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((UpgradableAppsViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        H h2;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h3 = this.p$;
            AnonymousClass1 r1 = new AnonymousClass1(this, null);
            this.L$0 = h3;
            this.label = 1;
            Object a3 = a.a(r1, this);
            if (a3 == a2) {
                return a2;
            }
            h2 = h3;
            obj = a3;
        } else if (i2 == 1) {
            e.a(obj);
            h2 = (H) this.L$0;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        LiveData liveData = (LiveData) obj;
        g gVar = this.this$0;
        j.a((Object) liveData, "source");
        gVar.b(liveData, new UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(this, h2));
        C1125ra unused = C1103g.b(h2, null, null, new UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2(null, this, h2), 3, null);
        return h.f14579a;
    }
}
