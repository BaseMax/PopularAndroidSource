package com.farsitel.bazaar.ui.cinema.common.viewmodel;

import c.c.a.n.j.b.c.a;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoViewModel$getPlayInfo$1", f = "PlayInfoViewModel.kt", l = {49}, m = "invokeSuspend")
/* compiled from: PlayInfoViewModel.kt */
final class PlayInfoViewModel$getPlayInfo$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ PlayedVideoModel $playedVideoModel;
    public final /* synthetic */ String $referrer;
    public final /* synthetic */ PlayInfoType $type;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.j.b.c.b this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoViewModel$getPlayInfo$1$1", f = "PlayInfoViewModel.kt", l = {63, 67}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoViewModel$getPlayInfo$1$1  reason: invalid class name */
    /* compiled from: PlayInfoViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends VideoPlayInfoModel>>, Object> {
        public Object L$0;
        public int label;
        public H p$;
        public final /* synthetic */ PlayInfoViewModel$getPlayInfo$1 this$0;

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
                File d2 = this.this$0.this$0.f6474j.d(this.this$0.$playedVideoModel.getEntityId());
                if (d2.exists()) {
                    PlayInfoViewModel$getPlayInfo$1 playInfoViewModel$getPlayInfo$1 = this.this$0;
                    return new Either.Success(playInfoViewModel$getPlayInfo$1.this$0.a(playInfoViewModel$getPlayInfo$1.$playedVideoModel.getEntityId(), d2, this.this$0.this$0.f6474j.b(this.this$0.$playedVideoModel.getEntityId())));
                }
                int i3 = a.f6467a[this.this$0.$type.ordinal()];
                if (i3 == 1) {
                    c.c.a.e.d.h.e.a d3 = this.this$0.this$0.f6472h;
                    String entityId = this.this$0.$playedVideoModel.getEntityId();
                    String str = this.this$0.$referrer;
                    this.L$0 = d2;
                    this.label = 1;
                    obj = d3.b(entityId, str, this);
                    if (obj == a2) {
                        return a2;
                    }
                } else if (i3 == 2) {
                    c.c.a.e.d.h.d.a.a a3 = this.this$0.this$0.f6473i;
                    String entityId2 = this.this$0.$playedVideoModel.getEntityId();
                    String str2 = this.this$0.$referrer;
                    this.L$0 = d2;
                    this.label = 2;
                    obj = a3.b(entityId2, str2, this);
                    if (obj == a2) {
                        return a2;
                    }
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else if (i2 == 1 || i2 == 2) {
                File file = (File) this.L$0;
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return (Either) obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayInfoViewModel$getPlayInfo$1(c.c.a.n.j.b.c.b bVar, PlayedVideoModel playedVideoModel, PlayInfoType playInfoType, String str, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$playedVideoModel = playedVideoModel;
        this.$type = playInfoType;
        this.$referrer = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PlayInfoViewModel$getPlayInfo$1 playInfoViewModel$getPlayInfo$1 = new PlayInfoViewModel$getPlayInfo$1(this.this$0, this.$playedVideoModel, this.$type, this.$referrer, bVar);
        playInfoViewModel$getPlayInfo$1.p$ = (H) obj;
        return playInfoViewModel$getPlayInfo$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PlayInfoViewModel$getPlayInfo$1) a(obj, (b) obj2)).d(h.f14579a);
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
        Either either = (Either) obj;
        c.c.a.n.j.b.c.b bVar = this.this$0;
        if (either instanceof Either.Success) {
            bVar.a((VideoPlayInfoModel) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            bVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
