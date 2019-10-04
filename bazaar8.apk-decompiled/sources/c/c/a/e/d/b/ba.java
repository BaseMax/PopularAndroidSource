package c.c.a.e.d.b;

import android.content.Context;
import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.d.a.a.a;
import c.c.a.e.d.l.b;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.a.m;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppRepository.kt */
public final class ba {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4975a;

    /* renamed from: b  reason: collision with root package name */
    public final W f4976b;

    /* renamed from: c  reason: collision with root package name */
    public final W f4977c;

    /* renamed from: d  reason: collision with root package name */
    public final C0394y f4978d;

    /* renamed from: e  reason: collision with root package name */
    public final da f4979e;

    /* renamed from: f  reason: collision with root package name */
    public final b f4980f;

    /* renamed from: g  reason: collision with root package name */
    public final a f4981g;

    public ba(Context context, W w, W w2, C0394y yVar, da daVar, b bVar, a aVar) {
        j.b(context, "context");
        j.b(w, "localDataSource");
        j.b(w2, "upgradableAppsLocalDataSource");
        j.b(yVar, "maliciousAppLocalDataSource");
        j.b(daVar, "remoteDataSource");
        j.b(bVar, "installedAppDataSource");
        j.b(aVar, "accountLocalDataSource");
        this.f4975a = context;
        this.f4976b = w;
        this.f4977c = w2;
        this.f4978d = yVar;
        this.f4979e = daVar;
        this.f4980f = bVar;
        this.f4981g = aVar;
    }

    public final LiveData<List<UpgradableApp>> d() {
        return this.f4977c.a();
    }

    public final Object e(h.c.b<? super h> bVar) {
        return this.f4977c.d(bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00d4 A[Catch:{ Exception -> 0x012f }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0117 A[Catch:{ Exception -> 0x012f }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x012e A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object f(h.c.b<? super h.h> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$1
            if (r0 == 0) goto L_0x0013
            r0 = r12
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$1 r0 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$1 r0 = new com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$1
            r0.<init>(r11, r12)
        L_0x0018:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L_0x009d
            if (r2 == r6) goto L_0x0086
            if (r2 == r5) goto L_0x0069
            if (r2 == r4) goto L_0x004f
            if (r2 != r3) goto L_0x0047
            java.lang.Object r1 = r0.L$4
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            java.lang.Object r1 = r0.L$3
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r1 = r0.L$2
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3 r1 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3) r1
            java.lang.Object r1 = r0.L$1
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2 r1 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.b.ba r0 = (c.c.a.e.d.b.ba) r0
            h.e.a((java.lang.Object) r12)     // Catch:{ Exception -> 0x012f }
            goto L_0x0135
        L_0x0047:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L_0x004f:
            java.lang.Object r2 = r0.L$4
            com.farsitel.bazaar.data.entity.Either r2 = (com.farsitel.bazaar.data.entity.Either) r2
            java.lang.Object r4 = r0.L$3
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r5 = r0.L$2
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3 r5 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3) r5
            java.lang.Object r6 = r0.L$1
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2 r6 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2) r6
            java.lang.Object r7 = r0.L$0
            c.c.a.e.d.b.ba r7 = (c.c.a.e.d.b.ba) r7
            h.e.a((java.lang.Object) r12)     // Catch:{ Exception -> 0x012f }
            r12 = r4
            goto L_0x0118
        L_0x0069:
            java.lang.Object r2 = r0.L$4
            com.farsitel.bazaar.data.entity.Either r2 = (com.farsitel.bazaar.data.entity.Either) r2
            java.lang.Object r5 = r0.L$3
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r6 = r0.L$2
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3 r6 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3) r6
            java.lang.Object r7 = r0.L$1
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2 r7 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2) r7
            java.lang.Object r8 = r0.L$0
            c.c.a.e.d.b.ba r8 = (c.c.a.e.d.b.ba) r8
            h.e.a((java.lang.Object) r12)     // Catch:{ Exception -> 0x012f }
            r12 = r5
            r5 = r6
        L_0x0082:
            r6 = r7
            r7 = r8
            goto L_0x00f8
        L_0x0086:
            java.lang.Object r2 = r0.L$3
            java.util.List r2 = (java.util.List) r2
            java.lang.Object r6 = r0.L$2
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3 r6 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3) r6
            java.lang.Object r7 = r0.L$1
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2 r7 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2) r7
            java.lang.Object r8 = r0.L$0
            c.c.a.e.d.b.ba r8 = (c.c.a.e.d.b.ba) r8
            h.e.a((java.lang.Object) r12)     // Catch:{ Exception -> 0x012f }
            r10 = r6
            r6 = r2
            r2 = r10
            goto L_0x00ce
        L_0x009d:
            h.e.a((java.lang.Object) r12)
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2 r7 = new com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2
            r12 = 0
            r7.<init>(r11, r12)
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3 r2 = new com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$3
            r2.<init>(r11, r12)
            c.c.a.e.d.l.b r12 = r11.f4980f     // Catch:{ Exception -> 0x012f }
            java.util.List r12 = r12.a()     // Catch:{ Exception -> 0x012f }
            c.c.a.e.d.b.da r8 = r11.f4979e     // Catch:{ Exception -> 0x012f }
            c.c.a.e.d.a.a.a r9 = r11.f4981g     // Catch:{ Exception -> 0x012f }
            int r9 = r9.e()     // Catch:{ Exception -> 0x012f }
            r0.L$0 = r11     // Catch:{ Exception -> 0x012f }
            r0.L$1 = r7     // Catch:{ Exception -> 0x012f }
            r0.L$2 = r2     // Catch:{ Exception -> 0x012f }
            r0.L$3 = r12     // Catch:{ Exception -> 0x012f }
            r0.label = r6     // Catch:{ Exception -> 0x012f }
            java.lang.Object r6 = r8.a(r9, r12, r0)     // Catch:{ Exception -> 0x012f }
            if (r6 != r1) goto L_0x00ca
            return r1
        L_0x00ca:
            r8 = r11
            r10 = r6
            r6 = r12
            r12 = r10
        L_0x00ce:
            com.farsitel.bazaar.data.entity.Either r12 = (com.farsitel.bazaar.data.entity.Either) r12     // Catch:{ Exception -> 0x012f }
            boolean r9 = r12 instanceof com.farsitel.bazaar.data.entity.Either.Success     // Catch:{ Exception -> 0x012f }
            if (r9 == 0) goto L_0x0135
            r9 = r12
            com.farsitel.bazaar.data.entity.Either$Success r9 = (com.farsitel.bazaar.data.entity.Either.Success) r9     // Catch:{ Exception -> 0x012f }
            java.lang.Object r9 = r9.getValue()     // Catch:{ Exception -> 0x012f }
            com.farsitel.bazaar.data.entity.UpgradableApps r9 = (com.farsitel.bazaar.data.entity.UpgradableApps) r9     // Catch:{ Exception -> 0x012f }
            java.util.List r9 = r9.getUpgradableApps()     // Catch:{ Exception -> 0x012f }
            r0.L$0 = r8     // Catch:{ Exception -> 0x012f }
            r0.L$1 = r7     // Catch:{ Exception -> 0x012f }
            r0.L$2 = r2     // Catch:{ Exception -> 0x012f }
            r0.L$3 = r6     // Catch:{ Exception -> 0x012f }
            r0.L$4 = r12     // Catch:{ Exception -> 0x012f }
            r0.label = r5     // Catch:{ Exception -> 0x012f }
            java.lang.Object r5 = r7.b((java.util.List<com.farsitel.bazaar.data.entity.UpgradableApp>) r9, (h.c.b<? super h.h>) r0)     // Catch:{ Exception -> 0x012f }
            if (r5 != r1) goto L_0x00f4
            return r1
        L_0x00f4:
            r5 = r2
            r2 = r12
            r12 = r6
            goto L_0x0082
        L_0x00f8:
            r8 = r2
            com.farsitel.bazaar.data.entity.Either$Success r8 = (com.farsitel.bazaar.data.entity.Either.Success) r8     // Catch:{ Exception -> 0x012f }
            java.lang.Object r8 = r8.getValue()     // Catch:{ Exception -> 0x012f }
            com.farsitel.bazaar.data.entity.UpgradableApps r8 = (com.farsitel.bazaar.data.entity.UpgradableApps) r8     // Catch:{ Exception -> 0x012f }
            java.util.List r8 = r8.getMaliciousApps()     // Catch:{ Exception -> 0x012f }
            r0.L$0 = r7     // Catch:{ Exception -> 0x012f }
            r0.L$1 = r6     // Catch:{ Exception -> 0x012f }
            r0.L$2 = r5     // Catch:{ Exception -> 0x012f }
            r0.L$3 = r12     // Catch:{ Exception -> 0x012f }
            r0.L$4 = r2     // Catch:{ Exception -> 0x012f }
            r0.label = r4     // Catch:{ Exception -> 0x012f }
            java.lang.Object r4 = r5.b((java.util.List<com.farsitel.bazaar.data.entity.MaliciousApp>) r8, (h.c.b<? super h.h>) r0)     // Catch:{ Exception -> 0x012f }
            if (r4 != r1) goto L_0x0118
            return r1
        L_0x0118:
            long r8 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x012f }
            r0.L$0 = r7     // Catch:{ Exception -> 0x012f }
            r0.L$1 = r6     // Catch:{ Exception -> 0x012f }
            r0.L$2 = r5     // Catch:{ Exception -> 0x012f }
            r0.L$3 = r12     // Catch:{ Exception -> 0x012f }
            r0.L$4 = r2     // Catch:{ Exception -> 0x012f }
            r0.label = r3     // Catch:{ Exception -> 0x012f }
            java.lang.Object r12 = r7.a((long) r8, (h.c.b<? super h.h>) r0)     // Catch:{ Exception -> 0x012f }
            if (r12 != r1) goto L_0x0135
            return r1
        L_0x012f:
            r12 = move-exception
            c.c.a.c.c.a r0 = c.c.a.c.c.a.f4699b
            r0.a((java.lang.Throwable) r12)
        L_0x0135:
            h.h r12 = h.h.f14579a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.b.ba.f(h.c.b):java.lang.Object");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x011f  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x01ba A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0237 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01e9 A[EDGE_INSN: B:87:0x01e9->B:75:0x01e9 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x016c A[EDGE_INSN: B:90:0x016c->B:49:0x016c ?: BREAK  , SYNTHETIC] */
    public final java.lang.Object a(java.util.Locale r21, h.c.b<? super h.h> r22) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            boolean r3 = r2 instanceof com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$syncWithInstalledApps$1
            if (r3 == 0) goto L_0x0019
            r3 = r2
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$syncWithInstalledApps$1 r3 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$syncWithInstalledApps$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L_0x0019
            int r4 = r4 - r5
            r3.label = r4
            goto L_0x001e
        L_0x0019:
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$syncWithInstalledApps$1 r3 = new com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$syncWithInstalledApps$1
            r3.<init>(r0, r2)
        L_0x001e:
            java.lang.Object r2 = r3.result
            java.lang.Object r4 = h.c.a.b.a()
            int r5 = r3.label
            r6 = 5
            r7 = 4
            r8 = 3
            r9 = 2
            r10 = 1
            if (r5 == 0) goto L_0x00eb
            if (r5 == r10) goto L_0x00db
            if (r5 == r9) goto L_0x00b0
            if (r5 == r8) goto L_0x008d
            if (r5 == r7) goto L_0x0062
            if (r5 != r6) goto L_0x005a
            java.lang.Object r1 = r3.L$7
            com.farsitel.bazaar.common.model.RecyclerData r1 = (com.farsitel.bazaar.common.model.RecyclerData) r1
            java.lang.Object r1 = r3.L$6
            com.farsitel.bazaar.data.entity.UpgradableApp r1 = (com.farsitel.bazaar.data.entity.UpgradableApp) r1
            java.lang.Object r1 = r3.L$5
            java.lang.Object r1 = r3.L$4
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r5 = r3.L$3
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.lang.Object r10 = r3.L$2
            com.farsitel.bazaar.data.entity.Either r10 = (com.farsitel.bazaar.data.entity.Either) r10
            java.lang.Object r11 = r3.L$1
            java.util.Locale r11 = (java.util.Locale) r11
            java.lang.Object r12 = r3.L$0
            c.c.a.e.d.b.ba r12 = (c.c.a.e.d.b.ba) r12
            h.e.a((java.lang.Object) r2)
            goto L_0x0231
        L_0x005a:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L_0x0062:
            java.lang.Object r1 = r3.L$7
            com.farsitel.bazaar.common.model.RecyclerData r1 = (com.farsitel.bazaar.common.model.RecyclerData) r1
            java.lang.Object r5 = r3.L$6
            com.farsitel.bazaar.data.entity.UpgradableApp r5 = (com.farsitel.bazaar.data.entity.UpgradableApp) r5
            java.lang.Object r10 = r3.L$5
            java.lang.Object r11 = r3.L$4
            java.util.Iterator r11 = (java.util.Iterator) r11
            java.lang.Object r12 = r3.L$3
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.lang.Object r13 = r3.L$2
            com.farsitel.bazaar.data.entity.Either r13 = (com.farsitel.bazaar.data.entity.Either) r13
            java.lang.Object r14 = r3.L$1
            java.util.Locale r14 = (java.util.Locale) r14
            java.lang.Object r15 = r3.L$0
            c.c.a.e.d.b.ba r15 = (c.c.a.e.d.b.ba) r15
            h.e.a((java.lang.Object) r2)
            r6 = r1
            r2 = r10
            r1 = r11
            r10 = r13
            r11 = r14
            r13 = r5
            r5 = r12
            r12 = r15
            goto L_0x0211
        L_0x008d:
            java.lang.Object r1 = r3.L$7
            com.farsitel.bazaar.common.model.RecyclerData r1 = (com.farsitel.bazaar.common.model.RecyclerData) r1
            java.lang.Object r1 = r3.L$6
            com.farsitel.bazaar.data.entity.UpgradableApp r1 = (com.farsitel.bazaar.data.entity.UpgradableApp) r1
            java.lang.Object r1 = r3.L$5
            java.lang.Object r1 = r3.L$4
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r5 = r3.L$3
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.lang.Object r10 = r3.L$2
            com.farsitel.bazaar.data.entity.Either r10 = (com.farsitel.bazaar.data.entity.Either) r10
            java.lang.Object r11 = r3.L$1
            java.util.Locale r11 = (java.util.Locale) r11
            java.lang.Object r12 = r3.L$0
            c.c.a.e.d.b.ba r12 = (c.c.a.e.d.b.ba) r12
            h.e.a((java.lang.Object) r2)
            goto L_0x01bb
        L_0x00b0:
            java.lang.Object r1 = r3.L$7
            com.farsitel.bazaar.common.model.RecyclerData r1 = (com.farsitel.bazaar.common.model.RecyclerData) r1
            java.lang.Object r5 = r3.L$6
            com.farsitel.bazaar.data.entity.UpgradableApp r5 = (com.farsitel.bazaar.data.entity.UpgradableApp) r5
            java.lang.Object r10 = r3.L$5
            java.lang.Object r11 = r3.L$4
            java.util.Iterator r11 = (java.util.Iterator) r11
            java.lang.Object r12 = r3.L$3
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.lang.Object r13 = r3.L$2
            com.farsitel.bazaar.data.entity.Either r13 = (com.farsitel.bazaar.data.entity.Either) r13
            java.lang.Object r14 = r3.L$1
            java.util.Locale r14 = (java.util.Locale) r14
            java.lang.Object r15 = r3.L$0
            c.c.a.e.d.b.ba r15 = (c.c.a.e.d.b.ba) r15
            h.e.a((java.lang.Object) r2)
            r6 = r1
            r2 = r10
            r1 = r11
            r10 = r13
            r11 = r14
            r13 = r5
            r5 = r12
            r12 = r15
            goto L_0x019c
        L_0x00db:
            java.lang.Object r1 = r3.L$2
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            java.lang.Object r5 = r3.L$1
            java.util.Locale r5 = (java.util.Locale) r5
            java.lang.Object r10 = r3.L$0
            c.c.a.e.d.b.ba r10 = (c.c.a.e.d.b.ba) r10
            h.e.a((java.lang.Object) r2)
            goto L_0x0113
        L_0x00eb:
            h.e.a((java.lang.Object) r2)
            c.c.a.e.d.l.b r2 = r0.f4980f
            com.farsitel.bazaar.data.entity.Either r2 = r2.a(r1)
            boolean r5 = r2 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r5 == 0) goto L_0x00fb
            h.h r1 = h.h.f14579a
            return r1
        L_0x00fb:
            c.c.a.e.d.b.W r5 = r0.f4977c
            r3.L$0 = r0
            r3.L$1 = r1
            r3.L$2 = r2
            r3.label = r10
            java.lang.Object r5 = r5.a((h.c.b<? super java.util.List<com.farsitel.bazaar.data.entity.UpgradableApp>>) r3)
            if (r5 != r4) goto L_0x010c
            return r4
        L_0x010c:
            r10 = r0
            r19 = r5
            r5 = r1
            r1 = r2
            r2 = r19
        L_0x0113:
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r11 = r2.iterator()
        L_0x0119:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L_0x0237
            java.lang.Object r12 = r11.next()
            r13 = r12
            com.farsitel.bazaar.data.entity.UpgradableApp r13 = (com.farsitel.bazaar.data.entity.UpgradableApp) r13
            java.lang.Object r14 = com.farsitel.bazaar.data.entity.EitherKt.getOrNull(r1)
            java.util.List r14 = (java.util.List) r14
            if (r14 == 0) goto L_0x0171
            java.util.Iterator r14 = r14.iterator()
        L_0x0132:
            boolean r16 = r14.hasNext()
            if (r16 == 0) goto L_0x016a
            java.lang.Object r16 = r14.next()
            r15 = r16
            com.farsitel.bazaar.common.model.RecyclerData r15 = (com.farsitel.bazaar.common.model.RecyclerData) r15
            boolean r6 = r15 instanceof com.farsitel.bazaar.common.model.page.ListItem.App
            if (r6 != 0) goto L_0x0145
            r15 = 0
        L_0x0145:
            com.farsitel.bazaar.common.model.page.ListItem$App r15 = (com.farsitel.bazaar.common.model.page.ListItem.App) r15
            if (r15 == 0) goto L_0x0154
            com.farsitel.bazaar.common.model.page.PageAppItem r6 = r15.getApp()
            if (r6 == 0) goto L_0x0154
            java.lang.String r15 = r6.getPackageName()
            goto L_0x0155
        L_0x0154:
            r15 = 0
        L_0x0155:
            java.lang.String r6 = r13.getPackageName()
            boolean r6 = h.f.b.j.a((java.lang.Object) r15, (java.lang.Object) r6)
            java.lang.Boolean r6 = h.c.b.a.a.a((boolean) r6)
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L_0x0168
            goto L_0x016c
        L_0x0168:
            r6 = 5
            goto L_0x0132
        L_0x016a:
            r16 = 0
        L_0x016c:
            com.farsitel.bazaar.common.model.RecyclerData r16 = (com.farsitel.bazaar.common.model.RecyclerData) r16
            r6 = r16
            goto L_0x0172
        L_0x0171:
            r6 = 0
        L_0x0172:
            if (r6 != 0) goto L_0x01c3
            c.c.a.e.d.b.W r14 = r10.f4977c
            java.lang.String r15 = r13.getPackageName()
            r3.L$0 = r10
            r3.L$1 = r5
            r3.L$2 = r1
            r3.L$3 = r2
            r3.L$4 = r11
            r3.L$5 = r12
            r3.L$6 = r13
            r3.L$7 = r6
            r3.label = r9
            java.lang.Object r14 = r14.b(r15, r3)
            if (r14 != r4) goto L_0x0193
            return r4
        L_0x0193:
            r19 = r10
            r10 = r1
            r1 = r11
            r11 = r5
            r5 = r2
            r2 = r12
            r12 = r19
        L_0x019c:
            c.c.a.e.d.b.y r14 = r12.f4978d
            java.lang.String r15 = r13.getPackageName()
            r3.L$0 = r12
            r3.L$1 = r11
            r3.L$2 = r10
            r3.L$3 = r5
            r3.L$4 = r1
            r3.L$5 = r2
            r3.L$6 = r13
            r3.L$7 = r6
            r3.label = r8
            java.lang.Object r2 = r14.a((java.lang.String) r15, (h.c.b<? super h.h>) r3)
            if (r2 != r4) goto L_0x01bb
            return r4
        L_0x01bb:
            r2 = r5
            r5 = r11
            r6 = 5
        L_0x01be:
            r11 = r1
            r1 = r10
            r10 = r12
            goto L_0x0119
        L_0x01c3:
            boolean r14 = r6 instanceof com.farsitel.bazaar.common.model.page.ListItem.App
            if (r14 != 0) goto L_0x01c9
            r14 = 0
            goto L_0x01ca
        L_0x01c9:
            r14 = r6
        L_0x01ca:
            com.farsitel.bazaar.common.model.page.ListItem$App r14 = (com.farsitel.bazaar.common.model.page.ListItem.App) r14
            if (r14 == 0) goto L_0x01df
            com.farsitel.bazaar.common.model.page.PageAppItem r14 = r14.getApp()
            if (r14 == 0) goto L_0x01df
            java.lang.Long r14 = r14.getInstalledVersionCode()
            if (r14 == 0) goto L_0x01df
            long r14 = r14.longValue()
            goto L_0x01e1
        L_0x01df:
            r14 = 0
        L_0x01e1:
            long r16 = r13.getVersionCode()
            int r18 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r18 < 0) goto L_0x0234
            c.c.a.e.d.b.W r14 = r10.f4977c
            java.lang.String r15 = r13.getPackageName()
            r3.L$0 = r10
            r3.L$1 = r5
            r3.L$2 = r1
            r3.L$3 = r2
            r3.L$4 = r11
            r3.L$5 = r12
            r3.L$6 = r13
            r3.L$7 = r6
            r3.label = r7
            java.lang.Object r14 = r14.b(r15, r3)
            if (r14 != r4) goto L_0x0208
            return r4
        L_0x0208:
            r19 = r10
            r10 = r1
            r1 = r11
            r11 = r5
            r5 = r2
            r2 = r12
            r12 = r19
        L_0x0211:
            c.c.a.e.d.b.y r14 = r12.f4978d
            java.lang.String r15 = r13.getPackageName()
            r3.L$0 = r12
            r3.L$1 = r11
            r3.L$2 = r10
            r3.L$3 = r5
            r3.L$4 = r1
            r3.L$5 = r2
            r3.L$6 = r13
            r3.L$7 = r6
            r6 = 5
            r3.label = r6
            java.lang.Object r2 = r14.a((java.lang.String) r15, (h.c.b<? super h.h>) r3)
            if (r2 != r4) goto L_0x0231
            return r4
        L_0x0231:
            r2 = r5
            r5 = r11
            goto L_0x01be
        L_0x0234:
            r6 = 5
            goto L_0x0119
        L_0x0237:
            h.h r1 = h.h.f14579a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.b.ba.a(java.util.Locale, h.c.b):java.lang.Object");
    }

    public final LiveData<List<PageTypeItem>> b() {
        LiveData<List<PageTypeItem>> a2 = D.a(this.f4978d.a(), new aa(this));
        j.a((Object) a2, "Transformations.map(mali…tPageItemApp(context) } }");
        return a2;
    }

    public final LiveData<List<MaliciousApp>> c() {
        return this.f4978d.a();
    }

    public final Object d(h.c.b<? super h> bVar) {
        return this.f4978d.b(bVar);
    }

    public final Object b(String str, h.c.b<? super h> bVar) {
        return this.f4977c.b(str, bVar);
    }

    public final Object c(String str, h.c.b<? super h> bVar) {
        return this.f4978d.a(str, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x005c A[LOOP:0: B:16:0x0056->B:18:0x005c, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(h.c.b<? super java.util.List<com.farsitel.bazaar.common.model.page.ListItem.App>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$allUpgradableAppNotifiable$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$allUpgradableAppNotifiable$1 r0 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$allUpgradableAppNotifiable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$allUpgradableAppNotifiable$1 r0 = new com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$allUpgradableAppNotifiable$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.b.ba r0 = (c.c.a.e.d.b.ba) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x0045
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            c.c.a.e.d.b.W r5 = r4.f4977c
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.b(r0)
            if (r5 != r1) goto L_0x0045
            return r1
        L_0x0045:
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 10
            int r1 = h.a.m.a(r5, r1)
            r0.<init>(r1)
            java.util.Iterator r5 = r5.iterator()
        L_0x0056:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L_0x006a
            java.lang.Object r1 = r5.next()
            com.farsitel.bazaar.data.entity.UpgradableApp r1 = (com.farsitel.bazaar.data.entity.UpgradableApp) r1
            com.farsitel.bazaar.common.model.page.ListItem$App r1 = c.c.a.e.f.g.a((com.farsitel.bazaar.data.entity.UpgradableApp) r1)
            r0.add(r1)
            goto L_0x0056
        L_0x006a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.b.ba.b(h.c.b):java.lang.Object");
    }

    public final Object c(h.c.b<? super Long> bVar) {
        return this.f4977c.c(bVar);
    }

    public final LiveData<List<PageTypeItem>> a() {
        LiveData<List<PageTypeItem>> a2 = D.a(this.f4977c.a(), Z.f4971a);
        j.a((Object) a2, "Transformations.map(upgr…t.toFlatPageItemApp() } }");
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0071 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0072 A[PHI: r9 
  PHI: (r9v2 java.lang.Object) = (r9v4 java.lang.Object), (r9v1 java.lang.Object) binds: [B:19:0x006f, B:10:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r6, long r7, h.c.b<? super h.h> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$removeIfAppIsUpdate$1
            if (r0 == 0) goto L_0x0013
            r0 = r9
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$removeIfAppIsUpdate$1 r0 = (com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$removeIfAppIsUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$removeIfAppIsUpdate$1 r0 = new com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$removeIfAppIsUpdate$1
            r0.<init>(r5, r9)
        L_0x0018:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x004c
            if (r2 == r4) goto L_0x003e
            if (r2 != r3) goto L_0x0036
            long r6 = r0.J$0
            java.lang.Object r6 = r0.L$1
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r6 = r0.L$0
            c.c.a.e.d.b.ba r6 = (c.c.a.e.d.b.ba) r6
            h.e.a((java.lang.Object) r9)
            goto L_0x0072
        L_0x0036:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L_0x003e:
            long r7 = r0.J$0
            java.lang.Object r6 = r0.L$1
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.b.ba r2 = (c.c.a.e.d.b.ba) r2
            h.e.a((java.lang.Object) r9)
            goto L_0x0061
        L_0x004c:
            h.e.a((java.lang.Object) r9)
            c.c.a.e.d.b.W r9 = r5.f4977c
            r0.L$0 = r5
            r0.L$1 = r6
            r0.J$0 = r7
            r0.label = r4
            java.lang.Object r9 = r9.a(r6, r7, r0)
            if (r9 != r1) goto L_0x0060
            return r1
        L_0x0060:
            r2 = r5
        L_0x0061:
            c.c.a.e.d.b.y r9 = r2.f4978d
            r0.L$0 = r2
            r0.L$1 = r6
            r0.J$0 = r7
            r0.label = r3
            java.lang.Object r9 = r9.a(r6, r7, r0)
            if (r9 != r1) goto L_0x0072
            return r1
        L_0x0072:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.b.ba.a(java.lang.String, long, h.c.b):java.lang.Object");
    }

    public final Object a(h.c.b<? super List<ListItem.App>> bVar) {
        List<MaliciousApp> b2 = this.f4978d.b();
        ArrayList arrayList = new ArrayList(m.a(b2, 10));
        for (MaliciousApp flatPageItemApp : b2) {
            arrayList.add(flatPageItemApp.toFlatPageItemApp(this.f4975a));
        }
        return arrayList;
    }

    public final /* synthetic */ Object a(long j2, h.c.b<? super h> bVar) {
        return this.f4977c.a(j2, bVar);
    }

    public final Object a(String str, h.c.b<? super Long> bVar) {
        return this.f4976b.a(str, bVar);
    }

    public final Object a(UpgradableApp upgradableApp, h.c.b<? super h> bVar) {
        LocalUpgradableApp a2 = this.f4977c.a(upgradableApp.getPackageName());
        if (a2 != null) {
            if (a2.getVersionCode() == upgradableApp.getVersionCode()) {
                return h.f14579a;
            }
            upgradableApp = UpgradableApp.copy$default(upgradableApp, null, null, false, 0, a2.isNotified(), a2.isUpdateEnabled(), 15, null);
        }
        return this.f4977c.a(upgradableApp, bVar);
    }
}
