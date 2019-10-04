package com.farsitel.bazaar.app.managers;

import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.managers.AppManager$packageChanged$1", f = "AppManager.kt", l = {113, 114, 120}, m = "invokeSuspend")
/* compiled from: AppManager.kt */
final class AppManager$packageChanged$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ PackageChangeModel $packageChangeModel;
    public Object L$0;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.b.d.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppManager$packageChanged$1(c.c.a.b.d.b bVar, PackageChangeModel packageChangeModel, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$packageChangeModel = packageChangeModel;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AppManager$packageChanged$1 appManager$packageChanged$1 = new AppManager$packageChanged$1(this.this$0, this.$packageChangeModel, bVar);
        appManager$packageChanged$1.p$ = (H) obj;
        return appManager$packageChanged$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AppManager$packageChanged$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x00d1 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r6.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L_0x002c
            if (r1 == r4) goto L_0x0027
            if (r1 == r3) goto L_0x0022
            if (r1 != r2) goto L_0x001a
            java.lang.Object r0 = r6.L$0
            android.content.pm.PackageInfo r0 = (android.content.pm.PackageInfo) r0
            h.e.a((java.lang.Object) r7)
            goto L_0x008f
        L_0x001a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L_0x0022:
            h.e.a((java.lang.Object) r7)
            goto L_0x00d2
        L_0x0027:
            h.e.a((java.lang.Object) r7)
            goto L_0x00bd
        L_0x002c:
            h.e.a((java.lang.Object) r7)
            i.a.H r7 = r6.p$
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r7 = r6.$packageChangeModel
            com.farsitel.bazaar.common.model.ui.PackageChangeType r7 = r7.getChangeType()
            int[] r1 = c.c.a.b.d.a.f4569a
            int r7 = r7.ordinal()
            r7 = r1[r7]
            if (r7 == r4) goto L_0x00a8
            if (r7 == r3) goto L_0x0060
            if (r7 == r2) goto L_0x0047
            goto L_0x00d2
        L_0x0047:
            c.c.a.b.f.h r7 = c.c.a.b.f.h.f4687h
            com.farsitel.bazaar.app.notification.NotificationType r0 = com.farsitel.bazaar.app.notification.NotificationType.APP_DOWNLOAD_COMPLETE
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r1 = r6.$packageChangeModel
            java.lang.String r1 = r1.getPackageName()
            r7.a(r0, r1)
            c.c.a.b.d.b r7 = r6.this$0
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r0 = r6.$packageChangeModel
            java.lang.String r0 = r0.getPackageName()
            r7.q(r0)
            goto L_0x00d2
        L_0x0060:
            c.c.a.c.h.e r7 = c.c.a.c.h.e.f4731a
            c.c.a.b.d.b r1 = r6.this$0
            android.content.Context r1 = r1.f4571h
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r3 = r6.$packageChangeModel
            java.lang.String r3 = r3.getPackageName()
            android.content.pm.PackageInfo r7 = r7.e(r1, r3)
            if (r7 == 0) goto L_0x008f
            c.c.a.b.d.b r1 = r6.this$0
            c.c.a.e.d.b.ba r1 = r1.f4573j
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r3 = r6.$packageChangeModel
            java.lang.String r3 = r3.getPackageName()
            long r4 = c.c.a.c.b.h.b(r7)
            r6.L$0 = r7
            r6.label = r2
            java.lang.Object r7 = r1.a(r3, r4, r6)
            if (r7 != r0) goto L_0x008f
            return r0
        L_0x008f:
            c.c.a.b.f.h r7 = c.c.a.b.f.h.f4687h
            com.farsitel.bazaar.app.notification.NotificationType r0 = com.farsitel.bazaar.app.notification.NotificationType.APP_DOWNLOAD_COMPLETE
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r1 = r6.$packageChangeModel
            java.lang.String r1 = r1.getPackageName()
            r7.a(r0, r1)
            c.c.a.b.d.b r7 = r6.this$0
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r0 = r6.$packageChangeModel
            java.lang.String r0 = r0.getPackageName()
            r7.q(r0)
            goto L_0x00d2
        L_0x00a8:
            c.c.a.b.d.b r7 = r6.this$0
            c.c.a.e.d.b.ba r7 = r7.f4573j
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r1 = r6.$packageChangeModel
            java.lang.String r1 = r1.getPackageName()
            r6.label = r4
            java.lang.Object r7 = r7.b(r1, r6)
            if (r7 != r0) goto L_0x00bd
            return r0
        L_0x00bd:
            c.c.a.b.d.b r7 = r6.this$0
            c.c.a.e.d.b.ba r7 = r7.f4573j
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r1 = r6.$packageChangeModel
            java.lang.String r1 = r1.getPackageName()
            r6.label = r3
            java.lang.Object r7 = r7.c(r1, r6)
            if (r7 != r0) goto L_0x00d2
            return r0
        L_0x00d2:
            h.h r7 = h.h.f14579a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.managers.AppManager$packageChanged$1.d(java.lang.Object):java.lang.Object");
    }
}
