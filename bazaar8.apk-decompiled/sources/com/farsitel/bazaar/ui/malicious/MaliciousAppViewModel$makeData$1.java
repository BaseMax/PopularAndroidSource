package com.farsitel.bazaar.ui.malicious;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.c.a.a;
import c.c.a.n.q.e;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.malicious.MaliciousAppViewModel$makeData$1", f = "MaliciousAppViewModel.kt", l = {33}, m = "invokeSuspend")
/* compiled from: MaliciousAppViewModel.kt */
final class MaliciousAppViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public Object L$0;
    public int label;
    public H p$;
    public final /* synthetic */ e this$0;

    @d(c = "com.farsitel.bazaar.ui.malicious.MaliciousAppViewModel$makeData$1$1", f = "MaliciousAppViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.malicious.MaliciousAppViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: MaliciousAppViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super LiveData<List<? extends PageTypeItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ MaliciousAppViewModel$makeData$1 this$0;

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
                h.e.a(obj);
                H h2 = this.p$;
                return this.this$0.this$0.C.b();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MaliciousAppViewModel$makeData$1(e eVar, b bVar) {
        super(2, bVar);
        this.this$0 = eVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        MaliciousAppViewModel$makeData$1 maliciousAppViewModel$makeData$1 = new MaliciousAppViewModel$makeData$1(this.this$0, bVar);
        maliciousAppViewModel$makeData$1.p$ = (H) obj;
        return maliciousAppViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((MaliciousAppViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        H h2;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            h.e.a(obj);
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
            h.e.a(obj);
            h2 = (H) this.L$0;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        e eVar = this.this$0;
        LiveData a4 = D.a((LiveData) obj, new d(this, h2));
        j.a((Object) a4, "Transformations.map(sour…      }\n                }");
        eVar.b(a4, new MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2(this, h2));
        C1125ra unused = C1103g.b(h2, null, null, new MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$3(null, this, h2), 3, null);
        return h.f14579a;
    }
}
