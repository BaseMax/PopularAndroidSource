package c.c.a.a.b.a.a.c;

import android.content.Context;
import android.os.Build;
import c.c.a.a.b.a.a.c.a.b;
import c.c.a.a.b.a.a.c.a.d;
import c.c.a.e.b.c;
import c.c.a.e.b.e;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ActionLogRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4529a;

    /* renamed from: b  reason: collision with root package name */
    public String f4530b = this.f4529a.e();

    /* renamed from: c  reason: collision with root package name */
    public final e f4531c;

    /* renamed from: d  reason: collision with root package name */
    public final c.c.a.e.b.a f4532d;

    /* renamed from: e  reason: collision with root package name */
    public final c f4533e;

    /* renamed from: f  reason: collision with root package name */
    public final c.c.a.a.b.a.a.c.b.a f4534f;

    /* renamed from: g  reason: collision with root package name */
    public final c.c.a.e.d.a.a f4535g;

    public a(e eVar, c.c.a.e.b.a aVar, c cVar, c.c.a.a.b.a.a.c.b.a aVar2, c.c.a.e.d.a.a aVar3, Context context) {
        j.b(eVar, "requestPropertiesDataSource");
        j.b(aVar, "deviceDisplayInfoDataSource");
        j.b(cVar, "deviceInfoDataSource");
        j.b(aVar2, "service");
        j.b(aVar3, "accountRepository");
        j.b(context, "context");
        this.f4531c = eVar;
        this.f4532d = aVar;
        this.f4533e = cVar;
        this.f4534f = aVar2;
        this.f4535g = aVar3;
        this.f4529a = c.c.a.d.a.a.f4744b.a(context);
    }

    public final void a(String str) {
        this.f4529a.b(str);
        this.f4530b = str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0091 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.util.List<c.c.a.a.b.a.a.a.a> r7, h.c.b<? super com.farsitel.bazaar.data.entity.Either<java.lang.Integer>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$1
            if (r0 == 0) goto L_0x0013
            r0 = r8
            com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$1 r0 = (com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$1 r0 = new com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$1
            r0.<init>(r6, r8)
        L_0x0018:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x004c
            if (r2 == r4) goto L_0x0040
            if (r2 != r3) goto L_0x0038
            java.lang.Object r7 = r0.L$2
            com.farsitel.bazaar.data.entity.Either r7 = (com.farsitel.bazaar.data.entity.Either) r7
            java.lang.Object r7 = r0.L$1
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r7 = r0.L$0
            c.c.a.a.b.a.a.c.a r7 = (c.c.a.a.b.a.a.c.a) r7
            h.e.a((java.lang.Object) r8)
            goto L_0x0092
        L_0x0038:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L_0x0040:
            java.lang.Object r7 = r0.L$1
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r2 = r0.L$0
            c.c.a.a.b.a.a.c.a r2 = (c.c.a.a.b.a.a.c.a) r2
            h.e.a((java.lang.Object) r8)
            goto L_0x006c
        L_0x004c:
            h.e.a((java.lang.Object) r8)
            c.c.a.a.b.a.a.c.b.a r8 = r6.f4534f
            c.c.a.a.b.a.a.c.a.d r2 = r6.a((java.util.List<c.c.a.a.b.a.a.a.a>) r7)
            l.b r8 = r8.a(r2)
            com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$result$1 r2 = new com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource$sendActions$result$1
            r2.<init>(r6)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = c.c.a.e.c.b.a(r8, r2, r0)
            if (r8 != r1) goto L_0x006b
            return r1
        L_0x006b:
            r2 = r6
        L_0x006c:
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            boolean r4 = r8 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r4 == 0) goto L_0x0094
            r4 = r8
            com.farsitel.bazaar.data.entity.Either$Success r4 = (com.farsitel.bazaar.data.entity.Either.Success) r4
            java.lang.Object r4 = r4.getValue()
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            r5 = 620(0x26c, float:8.69E-43)
            if (r4 != r5) goto L_0x0094
            r0.L$0 = r2
            r0.L$1 = r7
            r0.L$2 = r8
            r0.label = r3
            java.lang.Object r8 = r2.a((java.util.List<c.c.a.a.b.a.a.a.a>) r7, (h.c.b<? super com.farsitel.bazaar.data.entity.Either<java.lang.Integer>>) r0)
            if (r8 != r1) goto L_0x0092
            return r1
        L_0x0092:
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
        L_0x0094:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.b.a.a.c.a.a(java.util.List, h.c.b):java.lang.Object");
    }

    public final d a(List<c.c.a.a.b.a.a.a.a> list) {
        String a2 = this.f4531c.a();
        String str = this.f4530b;
        boolean a3 = this.f4532d.a();
        String str2 = Build.MODEL;
        j.a((Object) str2, "Build.MODEL");
        c.c.a.a.b.a.a.c.a.a aVar = new c.c.a.a.b.a.a.c.a.a(a3, str2, (float) this.f4533e.d(), (float) this.f4533e.h(), this.f4535g.d(), this.f4533e.a());
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (c.c.a.a.b.a.a.a.a i2 : list) {
            arrayList.add(i2.i());
        }
        return new d(a2, str, new b(aVar, arrayList, System.currentTimeMillis()));
    }
}
