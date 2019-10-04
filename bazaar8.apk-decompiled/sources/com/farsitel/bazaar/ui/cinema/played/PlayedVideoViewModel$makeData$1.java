package com.farsitel.bazaar.ui.cinema.played;

import androidx.lifecycle.LiveData;
import c.c.a.c.a.a;
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

@d(c = "com.farsitel.bazaar.ui.cinema.played.PlayedVideoViewModel$makeData$1", f = "PlayedVideoViewModel.kt", l = {24}, m = "invokeSuspend")
/* compiled from: PlayedVideoViewModel.kt */
final class PlayedVideoViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.j.f.b this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.played.PlayedVideoViewModel$makeData$1$1", f = "PlayedVideoViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.played.PlayedVideoViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: PlayedVideoViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super LiveData<List<? extends ListItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ PlayedVideoViewModel$makeData$1 this$0;

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
                return this.this$0.this$0.z.a();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayedVideoViewModel$makeData$1(c.c.a.n.j.f.b bVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PlayedVideoViewModel$makeData$1 playedVideoViewModel$makeData$1 = new PlayedVideoViewModel$makeData$1(this.this$0, bVar);
        playedVideoViewModel$makeData$1.p$ = (H) obj;
        return playedVideoViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PlayedVideoViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.this$0.b((LiveData) obj, new PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(this));
        return h.f14579a;
    }
}
