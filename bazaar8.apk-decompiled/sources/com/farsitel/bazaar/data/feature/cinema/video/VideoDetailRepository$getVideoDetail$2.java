package com.farsitel.bazaar.data.feature.cinema.video;

import c.c.a.e.d.h.e.a;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.cinema.video.VideoDetailRepository$getVideoDetail$2", f = "VideoDetailRepository.kt", l = {31, 35}, m = "invokeSuspend")
/* compiled from: VideoDetailRepository.kt */
final class VideoDetailRepository$getVideoDetail$2 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
    public final /* synthetic */ String $referrer;
    public final /* synthetic */ String $videoId;
    public Object L$0;
    public Object L$1;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailRepository$getVideoDetail$2(a aVar, String str, String str2, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
        this.$videoId = str;
        this.$referrer = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDetailRepository$getVideoDetail$2 videoDetailRepository$getVideoDetail$2 = new VideoDetailRepository$getVideoDetail$2(this.this$0, this.$videoId, this.$referrer, bVar);
        videoDetailRepository$getVideoDetail$2.p$ = (H) obj;
        return videoDetailRepository$getVideoDetail$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDetailRepository$getVideoDetail$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0076  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x0026
            if (r1 == r3) goto L_0x0022
            if (r1 != r2) goto L_0x001a
            java.lang.Object r0 = r6.L$1
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref$ObjectRef) r0
            java.lang.Object r1 = r6.L$0
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            h.e.a((java.lang.Object) r7)
            goto L_0x006c
        L_0x001a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L_0x0022:
            h.e.a((java.lang.Object) r7)
            goto L_0x003e
        L_0x0026:
            h.e.a((java.lang.Object) r7)
            i.a.H r7 = r6.p$
            c.c.a.e.d.h.e.a r7 = r6.this$0
            c.c.a.e.d.h.e.b.k r7 = r7.f5103c
            java.lang.String r1 = r6.$videoId
            java.lang.String r4 = r6.$referrer
            r6.label = r3
            java.lang.Object r7 = r7.a(r1, r4, r6)
            if (r7 != r0) goto L_0x003e
            return r0
        L_0x003e:
            com.farsitel.bazaar.data.entity.Either r7 = (com.farsitel.bazaar.data.entity.Either) r7
            boolean r1 = r7 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r1 == 0) goto L_0x008d
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
            r1.<init>()
            r3 = r7
            com.farsitel.bazaar.data.entity.Either$Success r3 = (com.farsitel.bazaar.data.entity.Either.Success) r3
            java.lang.Object r3 = r3.getValue()
            java.util.List r3 = (java.util.List) r3
            r1.element = r3
            i.a.C r3 = i.a.W.b()
            com.farsitel.bazaar.data.feature.cinema.video.VideoDetailRepository$getVideoDetail$2$1 r4 = new com.farsitel.bazaar.data.feature.cinema.video.VideoDetailRepository$getVideoDetail$2$1
            r5 = 0
            r4.<init>(r6, r5)
            r6.L$0 = r7
            r6.L$1 = r1
            r6.label = r2
            java.lang.Object r7 = i.a.C1099e.a(r3, r4, r6)
            if (r7 != r0) goto L_0x006b
            return r0
        L_0x006b:
            r0 = r1
        L_0x006c:
            com.farsitel.bazaar.data.entity.Either r7 = (com.farsitel.bazaar.data.entity.Either) r7
            java.lang.Object r7 = com.farsitel.bazaar.data.entity.EitherKt.getOrNull(r7)
            java.util.List r7 = (java.util.List) r7
            if (r7 == 0) goto L_0x0083
            T r1 = r0.element
            java.util.List r1 = (java.util.List) r1
            java.util.List r1 = h.a.u.a(r1)
            c.c.a.c.g.a.a(r1, r7)
            r0.element = r1
        L_0x0083:
            com.farsitel.bazaar.data.entity.Either$Success r7 = new com.farsitel.bazaar.data.entity.Either$Success
            T r0 = r0.element
            java.util.List r0 = (java.util.List) r0
            r7.<init>(r0)
            goto L_0x0091
        L_0x008d:
            boolean r0 = r7 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r0 == 0) goto L_0x0092
        L_0x0091:
            return r7
        L_0x0092:
            kotlin.NoWhenBranchMatchedException r7 = new kotlin.NoWhenBranchMatchedException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.cinema.video.VideoDetailRepository$getVideoDetail$2.d(java.lang.Object):java.lang.Object");
    }
}
