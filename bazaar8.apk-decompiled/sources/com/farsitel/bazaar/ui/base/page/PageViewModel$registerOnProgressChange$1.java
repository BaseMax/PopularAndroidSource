package com.farsitel.bazaar.ui.base.page;

import c.c.a.n.c.c.t;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.base.page.PageViewModel$registerOnProgressChange$1", f = "PageViewModel.kt", l = {331}, m = "invokeSuspend")
/* compiled from: PageViewModel.kt */
final class PageViewModel$registerOnProgressChange$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $packageName;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public H p$;
    public final /* synthetic */ t this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PageViewModel$registerOnProgressChange$1(t tVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = tVar;
        this.$packageName = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PageViewModel$registerOnProgressChange$1 pageViewModel$registerOnProgressChange$1 = new PageViewModel$registerOnProgressChange$1(this.this$0, this.$packageName, bVar);
        pageViewModel$registerOnProgressChange$1.p$ = (H) obj;
        return pageViewModel$registerOnProgressChange$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PageViewModel$registerOnProgressChange$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0076 A[Catch:{ Throwable -> 0x002c, all -> 0x0029 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r12.label
            r2 = 1
            if (r1 == 0) goto L_0x0037
            if (r1 != r2) goto L_0x002f
            java.lang.Object r1 = r12.L$5
            i.a.b.k r1 = (i.a.b.k) r1
            java.lang.Object r3 = r12.L$4
            i.a.b.t r3 = (i.a.b.t) r3
            java.lang.Object r4 = r12.L$3
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            java.lang.Object r5 = r12.L$2
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r12.L$1
            com.farsitel.bazaar.ui.base.page.PageViewModel$registerOnProgressChange$1 r6 = (com.farsitel.bazaar.ui.base.page.PageViewModel$registerOnProgressChange$1) r6
            java.lang.Object r7 = r12.L$0
            i.a.b.t r7 = (i.a.b.t) r7
            h.e.a((java.lang.Object) r13)     // Catch:{ Throwable -> 0x002c }
            r8 = r0
            r0 = r12
            goto L_0x006e
        L_0x0029:
            r13 = move-exception
            goto L_0x008d
        L_0x002c:
            r13 = move-exception
            r4 = r13
            goto L_0x008c
        L_0x002f:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L_0x0037:
            h.e.a((java.lang.Object) r13)
            i.a.H r13 = r12.p$
            c.c.a.n.c.c.t r13 = r12.this$0
            c.c.a.e.d.i.j r13 = r13.m
            java.lang.String r1 = r12.$packageName
            i.a.b.t r5 = r13.a(r1)
            if (r5 == 0) goto L_0x0091
            r4 = 0
            i.a.b.k r13 = r5.iterator()     // Catch:{ Throwable -> 0x002c }
            r1 = r13
            r6 = r0
            r3 = r5
            r7 = r3
            r13 = r12
            r0 = r13
        L_0x0055:
            r0.L$0 = r7     // Catch:{ Throwable -> 0x002c }
            r0.L$1 = r13     // Catch:{ Throwable -> 0x002c }
            r0.L$2 = r5     // Catch:{ Throwable -> 0x002c }
            r0.L$3 = r4     // Catch:{ Throwable -> 0x002c }
            r0.L$4 = r3     // Catch:{ Throwable -> 0x002c }
            r0.L$5 = r1     // Catch:{ Throwable -> 0x002c }
            r0.label = r2     // Catch:{ Throwable -> 0x002c }
            java.lang.Object r8 = r1.a(r13)     // Catch:{ Throwable -> 0x002c }
            if (r8 != r6) goto L_0x006a
            return r6
        L_0x006a:
            r11 = r6
            r6 = r13
            r13 = r8
            r8 = r11
        L_0x006e:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch:{ Throwable -> 0x002c }
            boolean r13 = r13.booleanValue()     // Catch:{ Throwable -> 0x002c }
            if (r13 == 0) goto L_0x0086
            java.lang.Object r13 = r1.next()     // Catch:{ Throwable -> 0x002c }
            com.farsitel.bazaar.common.model.DownloaderProgressInfo r13 = (com.farsitel.bazaar.common.model.DownloaderProgressInfo) r13     // Catch:{ Throwable -> 0x002c }
            c.c.a.n.c.c.t r9 = r0.this$0     // Catch:{ Throwable -> 0x002c }
            java.lang.String r10 = r0.$packageName     // Catch:{ Throwable -> 0x002c }
            r9.a((com.farsitel.bazaar.common.model.DownloaderProgressInfo) r13, (java.lang.String) r10)     // Catch:{ Throwable -> 0x002c }
            r13 = r6
            r6 = r8
            goto L_0x0055
        L_0x0086:
            h.h r13 = h.h.f14579a     // Catch:{ Throwable -> 0x002c }
            i.a.b.m.a(r5, r4)
            goto L_0x0091
        L_0x008c:
            throw r4     // Catch:{ all -> 0x0029 }
        L_0x008d:
            i.a.b.m.a(r5, r4)
            throw r13
        L_0x0091:
            h.h r13 = h.h.f14579a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.base.page.PageViewModel$registerOnProgressChange$1.d(java.lang.Object):java.lang.Object");
    }
}
