package com.farsitel.bazaar.ui.latestdownloads;

import androidx.lifecycle.LiveData;
import c.c.a.e.d.b.C0383m;
import c.c.a.n.o.a;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.latestdownloads.LatestDownloadedAppViewModel$makeData$1", f = "LatestDownloadedAppViewModel.kt", l = {26}, m = "invokeSuspend")
/* compiled from: LatestDownloadedAppViewModel.kt */
final class LatestDownloadedAppViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    @d(c = "com.farsitel.bazaar.ui.latestdownloads.LatestDownloadedAppViewModel$makeData$1$1", f = "LatestDownloadedAppViewModel.kt", l = {26}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.latestdownloads.LatestDownloadedAppViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: LatestDownloadedAppViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super LiveData<List<? extends ListItem.App>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ LatestDownloadedAppViewModel$makeData$1 this$0;

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
                C0383m b2 = this.this$0.this$0.y;
                this.label = 1;
                obj = b2.a(this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LatestDownloadedAppViewModel$makeData$1(a aVar, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        LatestDownloadedAppViewModel$makeData$1 latestDownloadedAppViewModel$makeData$1 = new LatestDownloadedAppViewModel$makeData$1(this.this$0, bVar);
        latestDownloadedAppViewModel$makeData$1.p$ = (H) obj;
        return latestDownloadedAppViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((LatestDownloadedAppViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.this$0.b((LiveData) obj, new LatestDownloadedAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(this));
        return h.f14579a;
    }
}
