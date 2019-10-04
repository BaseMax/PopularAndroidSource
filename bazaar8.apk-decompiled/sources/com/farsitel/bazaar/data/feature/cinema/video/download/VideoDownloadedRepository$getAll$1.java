package com.farsitel.bazaar.data.feature.cinema.video.download;

import androidx.lifecycle.LiveData;
import c.c.a.e.d.h.e.a.c;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository", f = "VideoDownloadedRepository.kt", l = {17}, m = "getAll")
/* compiled from: VideoDownloadedRepository.kt */
final class VideoDownloadedRepository$getAll$1 extends ContinuationImpl {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadedRepository$getAll$1(c cVar, b bVar) {
        super(bVar);
        this.this$0 = cVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a((b<? super Either<? extends LiveData<List<DownloadedVideoModel>>>>) this);
    }
}
