package com.farsitel.bazaar.ui.cinema.download;

import c.c.a.b.d.o;
import c.c.a.n.j.c.l;
import h.c.b.a.d;
import h.e;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$onDeleteClicked$1", f = "VideoDownloadListViewModel.kt", l = {85}, m = "invokeSuspend")
/* compiled from: VideoDownloadListViewModel.kt */
final class VideoDownloadListViewModel$onDeleteClicked$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public final /* synthetic */ String $videoId;
    public int label;
    public final /* synthetic */ l this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadListViewModel$onDeleteClicked$1(l lVar, String str, h.c.b bVar) {
        super(1, bVar);
        this.this$0 = lVar;
        this.$videoId = str;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new VideoDownloadListViewModel$onDeleteClicked$1(this.this$0, this.$videoId, bVar);
    }

    public final Object a(Object obj) {
        return ((VideoDownloadListViewModel$onDeleteClicked$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            o d2 = this.this$0.n;
            String str = this.$videoId;
            this.label = 1;
            if (d2.a(str, this) == a2) {
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
