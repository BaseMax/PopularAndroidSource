package com.farsitel.bazaar.ui.cinema.common.viewmodel;

import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import h.c.b.a.d;
import h.e;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoViewModel$successPlayInfo$1", f = "PlayInfoViewModel.kt", l = {}, m = "invokeSuspend")
/* compiled from: PlayInfoViewModel.kt */
final class PlayInfoViewModel$successPlayInfo$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public final /* synthetic */ VideoPlayInfoModel $playInfo;
    public int label;
    public final /* synthetic */ c.c.a.n.j.b.c.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayInfoViewModel$successPlayInfo$1(c.c.a.n.j.b.c.b bVar, VideoPlayInfoModel videoPlayInfoModel, h.c.b bVar2) {
        super(1, bVar2);
        this.this$0 = bVar;
        this.$playInfo = videoPlayInfoModel;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new PlayInfoViewModel$successPlayInfo$1(this.this$0, this.$playInfo, bVar);
    }

    public final Object a(Object obj) {
        return ((PlayInfoViewModel$successPlayInfo$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            PlayedVideoModel b2 = this.this$0.f6468d;
            if (b2 != null && this.$playInfo.isAddToPlayedList()) {
                this.this$0.f6475k.a(b2, this.$playInfo.getDetails());
            }
            return h.f14579a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
