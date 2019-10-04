package com.farsitel.bazaar.data.feature.appdetail;

import c.c.a.e.d.c.a;
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

@d(c = "com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2", f = "AppDetailRepository.kt", l = {30, 44, 45}, m = "invokeSuspend")
/* compiled from: AppDetailRepository.kt */
final class AppDetailRepository$getAppDetail$2 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
    public final /* synthetic */ int $fromIndex;
    public final /* synthetic */ String $packageName;
    public final /* synthetic */ String $referrer;
    public final /* synthetic */ int $toIndex;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailRepository$getAppDetail$2(a aVar, String str, String str2, int i2, int i3, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
        this.$packageName = str;
        this.$referrer = str2;
        this.$fromIndex = i2;
        this.$toIndex = i3;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AppDetailRepository$getAppDetail$2 appDetailRepository$getAppDetail$2 = new AppDetailRepository$getAppDetail$2(this.this$0, this.$packageName, this.$referrer, this.$fromIndex, this.$toIndex, bVar);
        appDetailRepository$getAppDetail$2.p$ = (H) obj;
        return appDetailRepository$getAppDetail$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AppDetailRepository$getAppDetail$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x00ae A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00af  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r12.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L_0x0046
            if (r1 == r4) goto L_0x003e
            if (r1 == r3) goto L_0x002e
            if (r1 != r2) goto L_0x0026
            java.lang.Object r0 = r12.L$3
            com.farsitel.bazaar.data.entity.Either r0 = (com.farsitel.bazaar.data.entity.Either) r0
            java.lang.Object r1 = r12.L$2
            i.a.N r1 = (i.a.N) r1
            java.lang.Object r1 = r12.L$1
            i.a.N r1 = (i.a.N) r1
            java.lang.Object r1 = r12.L$0
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            h.e.a((java.lang.Object) r13)
            goto L_0x00b2
        L_0x0026:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L_0x002e:
            java.lang.Object r1 = r12.L$2
            i.a.N r1 = (i.a.N) r1
            java.lang.Object r3 = r12.L$1
            i.a.N r3 = (i.a.N) r3
            java.lang.Object r4 = r12.L$0
            com.farsitel.bazaar.data.entity.Either r4 = (com.farsitel.bazaar.data.entity.Either) r4
            h.e.a((java.lang.Object) r13)
            goto L_0x009c
        L_0x003e:
            java.lang.Object r1 = r12.L$0
            i.a.H r1 = (i.a.H) r1
            h.e.a((java.lang.Object) r13)
            goto L_0x0060
        L_0x0046:
            h.e.a((java.lang.Object) r13)
            i.a.H r1 = r12.p$
            c.c.a.e.d.c.a r13 = r12.this$0
            c.c.a.e.d.c.a.a r13 = r13.f5025b
            java.lang.String r5 = r12.$packageName
            java.lang.String r6 = r12.$referrer
            r12.L$0 = r1
            r12.label = r4
            java.lang.Object r13 = r13.a(r5, r6, r12)
            if (r13 != r0) goto L_0x0060
            return r0
        L_0x0060:
            com.farsitel.bazaar.data.entity.Either r13 = (com.farsitel.bazaar.data.entity.Either) r13
            boolean r4 = r13 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r4 == 0) goto L_0x00d1
            c.c.a.c.a.b r4 = c.c.a.c.a.b.f4693c
            h.c.e r5 = r4.a()
            r6 = 0
            com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getReviewAsync$1 r7 = new com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getReviewAsync$1
            r10 = 0
            r7.<init>(r12, r13, r10)
            r8 = 2
            r9 = 0
            r4 = r1
            i.a.N r11 = i.a.C1103g.a(r4, r5, r6, r7, r8, r9)
            c.c.a.c.a.b r4 = c.c.a.c.a.b.f4693c
            h.c.e r5 = r4.a()
            com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getMyRateAsync$1 r7 = new com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getMyRateAsync$1
            r7.<init>(r12, r10)
            r4 = r1
            i.a.N r1 = i.a.C1103g.a(r4, r5, r6, r7, r8, r9)
            r12.L$0 = r13
            r12.L$1 = r11
            r12.L$2 = r1
            r12.label = r3
            java.lang.Object r3 = r11.a(r12)
            if (r3 != r0) goto L_0x0099
            return r0
        L_0x0099:
            r4 = r13
            r13 = r3
            r3 = r11
        L_0x009c:
            com.farsitel.bazaar.data.entity.Either r13 = (com.farsitel.bazaar.data.entity.Either) r13
            r12.L$0 = r4
            r12.L$1 = r3
            r12.L$2 = r1
            r12.L$3 = r13
            r12.label = r2
            java.lang.Object r1 = r1.a(r12)
            if (r1 != r0) goto L_0x00af
            return r0
        L_0x00af:
            r0 = r13
            r13 = r1
            r1 = r4
        L_0x00b2:
            java.lang.Number r13 = (java.lang.Number) r13
            int r13 = r13.intValue()
            com.farsitel.bazaar.data.entity.Either$Success r2 = new com.farsitel.bazaar.data.entity.Either$Success
            com.farsitel.bazaar.data.entity.Either$Success r1 = (com.farsitel.bazaar.data.entity.Either.Success) r1
            java.lang.Object r1 = r1.getValue()
            com.farsitel.bazaar.common.model.appdetail.AppInfo r1 = (com.farsitel.bazaar.common.model.appdetail.AppInfo) r1
            java.lang.Object r0 = com.farsitel.bazaar.data.entity.EitherKt.getOrNull(r0)
            java.util.List r0 = (java.util.List) r0
            java.util.List r13 = r1.toAppDetailRecyclerList(r0, r13)
            r2.<init>(r13)
            r13 = r2
            goto L_0x00d5
        L_0x00d1:
            boolean r0 = r13 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r0 == 0) goto L_0x00d6
        L_0x00d5:
            return r13
        L_0x00d6:
            kotlin.NoWhenBranchMatchedException r13 = new kotlin.NoWhenBranchMatchedException
            r13.<init>()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2.d(java.lang.Object):java.lang.Object");
    }
}
