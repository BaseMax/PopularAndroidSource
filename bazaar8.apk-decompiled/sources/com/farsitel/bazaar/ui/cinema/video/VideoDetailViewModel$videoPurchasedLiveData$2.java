package com.farsitel.bazaar.ui.cinema.video;

import androidx.lifecycle.LiveData;
import c.c.a.n.j.k.s;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDetailViewModel.kt */
final class VideoDetailViewModel$videoPurchasedLiveData$2 extends Lambda implements a<LiveData<Boolean>> {
    public final /* synthetic */ s this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailViewModel$videoPurchasedLiveData$2(s sVar) {
        super(0);
        this.this$0 = sVar;
    }

    public final LiveData<Boolean> invoke() {
        return this.this$0.t.b(s.f(this.this$0).getVideoId());
    }
}
