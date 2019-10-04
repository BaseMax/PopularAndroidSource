package com.farsitel.bazaar.ui.upgradableapps;

import c.c.a.c.a.a;
import c.c.a.e.d.b.ba;
import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: UpgradableAppsViewModel.kt */
final class UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ H $receiver$0$inlined;
    public int label;
    public H p$;
    public final /* synthetic */ UpgradableAppsViewModel$makeData$1 this$0;

    /* renamed from: com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2$1  reason: invalid class name */
    /* compiled from: UpgradableAppsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2 this$0;

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
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                ba d2 = this.this$0.this$0.this$0.C;
                this.label = 1;
                if (d2.e(this) == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2(b bVar, UpgradableAppsViewModel$makeData$1 upgradableAppsViewModel$makeData$1, H h2) {
        super(2, bVar);
        this.this$0 = upgradableAppsViewModel$makeData$1;
        this.$receiver$0$inlined = h2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2 upgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2 = new UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2(bVar, this.this$0, this.$receiver$0$inlined);
        upgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2.p$ = (H) obj;
        return upgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((UpgradableAppsViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (a.a(r4, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
