package c.c.a.a.b.a.a;

import c.c.a.a.b.a.a.b.g;
import c.c.a.e.d.b.I;
import h.f.b.f;
import h.f.b.j;
import i.a.g.b;
import i.a.g.e;

/* compiled from: ActionLogRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0067a f4489a = new C0067a(null);

    /* renamed from: b  reason: collision with root package name */
    public final b f4490b = e.a(false, 1, null);

    /* renamed from: c  reason: collision with root package name */
    public final int f4491c = 400;

    /* renamed from: d  reason: collision with root package name */
    public final int f4492d = 21600000;

    /* renamed from: e  reason: collision with root package name */
    public final g f4493e;

    /* renamed from: f  reason: collision with root package name */
    public final c.c.a.a.b.a.a.c.a f4494f;

    /* renamed from: g  reason: collision with root package name */
    public final c.c.a.e.d.a.a f4495g;

    /* renamed from: h  reason: collision with root package name */
    public final I f4496h;

    /* renamed from: c.c.a.a.b.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: ActionLogRepository.kt */
    public static final class C0067a {
        public C0067a() {
        }

        public /* synthetic */ C0067a(f fVar) {
            this();
        }
    }

    public a(g gVar, c.c.a.a.b.a.a.c.a aVar, c.c.a.e.d.a.a aVar2, I i2) {
        j.b(gVar, "actionLogLocalDataSource");
        j.b(aVar, "actionLogRemoteDataSource");
        j.b(aVar2, "accountRepository");
        j.b(i2, "sharedDataSource");
        this.f4493e = gVar;
        this.f4494f = aVar;
        this.f4495g = aVar2;
        this.f4496h = i2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00ac A[Catch:{ all -> 0x0127 }] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0101 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(c.c.a.a.a.a r19, h.c.b<? super c.c.a.a.b.a.a.a.a> r20) {
        /*
            r18 = this;
            r1 = r18
            r0 = r20
            boolean r2 = r0 instanceof com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$logAction$1
            if (r2 == 0) goto L_0x0017
            r2 = r0
            com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$logAction$1 r2 = (com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$logAction$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L_0x0017
            int r3 = r3 - r4
            r2.label = r3
            goto L_0x001c
        L_0x0017:
            com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$logAction$1 r2 = new com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$logAction$1
            r2.<init>(r1, r0)
        L_0x001c:
            java.lang.Object r0 = r2.result
            java.lang.Object r3 = h.c.a.b.a()
            int r4 = r2.label
            r5 = 2
            r6 = 1
            r7 = 0
            if (r4 == 0) goto L_0x0068
            if (r4 == r6) goto L_0x0058
            if (r4 != r5) goto L_0x0050
            int r3 = r2.I$0
            java.lang.Object r3 = r2.L$4
            c.c.a.a.b.a.a.a.a r3 = (c.c.a.a.b.a.a.a.a) r3
            java.lang.Object r4 = r2.L$3
            c.c.a.a.b.a.a.a.a r4 = (c.c.a.a.b.a.a.a.a) r4
            java.lang.Object r5 = r2.L$2
            i.a.g.b r5 = (i.a.g.b) r5
            java.lang.Object r6 = r2.L$1
            c.c.a.a.a.a r6 = (c.c.a.a.a.a) r6
            java.lang.Object r2 = r2.L$0
            c.c.a.a.b.a.a.a r2 = (c.c.a.a.b.a.a.a) r2
            h.e.a((java.lang.Object) r0)     // Catch:{ all -> 0x004c }
            r9 = r2
            r10 = r3
            r0 = r4
            r4 = r5
            goto L_0x0102
        L_0x004c:
            r0 = move-exception
            r4 = r5
            goto L_0x0128
        L_0x0050:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L_0x0058:
            java.lang.Object r4 = r2.L$2
            i.a.g.b r4 = (i.a.g.b) r4
            java.lang.Object r8 = r2.L$1
            c.c.a.a.a.a r8 = (c.c.a.a.a.a) r8
            java.lang.Object r9 = r2.L$0
            c.c.a.a.b.a.a.a r9 = (c.c.a.a.b.a.a.a) r9
            h.e.a((java.lang.Object) r0)
            goto L_0x0080
        L_0x0068:
            h.e.a((java.lang.Object) r0)
            i.a.g.b r0 = r1.f4490b
            r2.L$0 = r1
            r8 = r19
            r2.L$1 = r8
            r2.L$2 = r0
            r2.label = r6
            java.lang.Object r4 = r0.a(r7, r2)
            if (r4 != r3) goto L_0x007e
            return r3
        L_0x007e:
            r4 = r0
            r9 = r1
        L_0x0080:
            c.c.a.e.d.a.a r0 = r9.f4495g     // Catch:{ all -> 0x0127 }
            java.lang.String r0 = r0.k()     // Catch:{ all -> 0x0127 }
            c.c.a.a.b.a.a.a.a r0 = r8.a(r0)     // Catch:{ all -> 0x0127 }
            c.c.a.a.b.a.a.b.g r10 = r9.f4493e     // Catch:{ all -> 0x0127 }
            c.c.a.a.b.a.a.a.a r10 = r10.d()     // Catch:{ all -> 0x0127 }
            c.c.a.a.b.a.a.b.g r11 = r9.f4493e     // Catch:{ all -> 0x0127 }
            int r11 = r11.b()     // Catch:{ all -> 0x0127 }
            c.c.a.c.c.a r12 = c.c.a.c.c.a.f4699b     // Catch:{ all -> 0x0127 }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ all -> 0x0127 }
            r13.<init>()     // Catch:{ all -> 0x0127 }
            java.lang.String r14 = "\n            |Add actionLog : "
            r13.append(r14)     // Catch:{ all -> 0x0127 }
            r13.append(r0)     // Catch:{ all -> 0x0127 }
            java.lang.String r14 = ",\n            |Oldest actionLog age : "
            r13.append(r14)     // Catch:{ all -> 0x0127 }
            if (r10 == 0) goto L_0x00bf
            long r14 = r10.g()     // Catch:{ all -> 0x0127 }
            java.lang.Long r14 = h.c.b.a.a.a((long) r14)     // Catch:{ all -> 0x0127 }
            if (r14 == 0) goto L_0x00bf
            long r14 = r14.longValue()     // Catch:{ all -> 0x0127 }
            java.lang.String r14 = c.c.a.c.b.f.a(r14)     // Catch:{ all -> 0x0127 }
            goto L_0x00c0
        L_0x00bf:
            r14 = r7
        L_0x00c0:
            r13.append(r14)     // Catch:{ all -> 0x0127 }
            java.lang.String r14 = ",\n            |ActionLogs count : "
            r13.append(r14)     // Catch:{ all -> 0x0127 }
            r13.append(r11)     // Catch:{ all -> 0x0127 }
            java.lang.String r14 = ",\n        "
            r13.append(r14)     // Catch:{ all -> 0x0127 }
            java.lang.String r13 = r13.toString()     // Catch:{ all -> 0x0127 }
            java.lang.String r13 = h.k.f.a(r13, r7, r6, r7)     // Catch:{ all -> 0x0127 }
            r14 = 0
            r15 = 0
            r16 = 6
            r17 = 0
            c.c.a.c.c.a.c(r12, r13, r14, r15, r16, r17)     // Catch:{ all -> 0x0127 }
            boolean r6 = r9.a((c.c.a.a.b.a.a.a.a) r10)     // Catch:{ all -> 0x0127 }
            if (r6 != 0) goto L_0x00ed
            boolean r6 = r9.a((int) r11)     // Catch:{ all -> 0x0127 }
            if (r6 == 0) goto L_0x0102
        L_0x00ed:
            r2.L$0 = r9     // Catch:{ all -> 0x0127 }
            r2.L$1 = r8     // Catch:{ all -> 0x0127 }
            r2.L$2 = r4     // Catch:{ all -> 0x0127 }
            r2.L$3 = r0     // Catch:{ all -> 0x0127 }
            r2.L$4 = r10     // Catch:{ all -> 0x0127 }
            r2.I$0 = r11     // Catch:{ all -> 0x0127 }
            r2.label = r5     // Catch:{ all -> 0x0127 }
            java.lang.Object r2 = r9.a((h.c.b<? super java.lang.Boolean>) r2)     // Catch:{ all -> 0x0127 }
            if (r2 != r3) goto L_0x0102
            return r3
        L_0x0102:
            r2 = r0
            r5 = r4
            c.c.a.a.b.a.a.b.g r0 = r9.f4493e     // Catch:{ all -> 0x004c }
            int r0 = r0.b()     // Catch:{ all -> 0x004c }
            boolean r0 = r9.b(r0)     // Catch:{ all -> 0x004c }
            if (r0 == 0) goto L_0x0117
            if (r10 == 0) goto L_0x0117
            c.c.a.a.b.a.a.b.g r0 = r9.f4493e     // Catch:{ all -> 0x004c }
            r0.a(r10)     // Catch:{ all -> 0x004c }
        L_0x0117:
            c.c.a.a.b.a.a.b.g r0 = r9.f4493e     // Catch:{ SQLiteFullException -> 0x011d }
            r0.b(r2)     // Catch:{ SQLiteFullException -> 0x011d }
            goto L_0x0123
        L_0x011d:
            r0 = move-exception
            c.c.a.c.c.a r3 = c.c.a.c.c.a.f4699b     // Catch:{ all -> 0x004c }
            r3.b(r0)     // Catch:{ all -> 0x004c }
        L_0x0123:
            r5.a(r7)
            return r2
        L_0x0127:
            r0 = move-exception
        L_0x0128:
            r4.a(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.b.a.a.a.a(c.c.a.a.a.a, h.c.b):java.lang.Object");
    }

    public final boolean b(int i2) {
        return i2 > this.f4491c;
    }

    public final boolean b() {
        return ((Boolean) this.f4496h.a("actionLogNotificationEnabled", false)).booleanValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(h.c.b<? super java.lang.Boolean> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$sendSavedActions$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$sendSavedActions$1 r0 = (com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$sendSavedActions$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$sendSavedActions$1 r0 = new com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository$sendSavedActions$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r1 = r0.L$1
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.a.b.a.a.a r0 = (c.c.a.a.b.a.a.a) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x005d
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r5)
            c.c.a.a.b.a.a.b.g r5 = r4.f4493e
            java.util.List r5 = r5.c()
            boolean r2 = r5.isEmpty()
            if (r2 == 0) goto L_0x004d
            java.lang.Boolean r5 = h.c.b.a.a.a((boolean) r3)
            return r5
        L_0x004d:
            c.c.a.a.b.a.a.c.a r2 = r4.f4494f
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r5 = r2.a((java.util.List<c.c.a.a.b.a.a.a.a>) r5, (h.c.b<? super com.farsitel.bazaar.data.entity.Either<java.lang.Integer>>) r0)
            if (r5 != r1) goto L_0x005c
            return r1
        L_0x005c:
            r0 = r4
        L_0x005d:
            com.farsitel.bazaar.data.entity.Either r5 = (com.farsitel.bazaar.data.entity.Either) r5
            boolean r1 = r5 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r1 == 0) goto L_0x0078
            r1 = r5
            com.farsitel.bazaar.data.entity.Either$Success r1 = (com.farsitel.bazaar.data.entity.Either.Success) r1
            java.lang.Object r1 = r1.getValue()
            java.lang.Number r1 = (java.lang.Number) r1
            int r1 = r1.intValue()
            if (r1 != 0) goto L_0x0078
            c.c.a.a.b.a.a.b.g r5 = r0.f4493e
            r5.a()
            goto L_0x009e
        L_0x0078:
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r0 == 0) goto L_0x009d
            c.c.a.c.c.a r0 = c.c.a.c.c.a.f4699b
            java.lang.Throwable r1 = new java.lang.Throwable
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unable to send saved action logs: "
            r2.append(r3)
            com.farsitel.bazaar.data.entity.Either$Failure r5 = (com.farsitel.bazaar.data.entity.Either.Failure) r5
            com.farsitel.bazaar.data.entity.ErrorModel r5 = r5.getError()
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r1.<init>(r5)
            r0.b(r1)
        L_0x009d:
            r3 = 0
        L_0x009e:
            java.lang.Boolean r5 = h.c.b.a.a.a((boolean) r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.b.a.a.a.a(h.c.b):java.lang.Object");
    }

    public final boolean a(c.c.a.a.b.a.a.a.a aVar) {
        return aVar != null && System.currentTimeMillis() - aVar.g() > ((long) this.f4492d);
    }

    public final boolean a(int i2) {
        return i2 > a();
    }

    public final int a() {
        return ((Number) this.f4496h.a("actionsCountSendLimit", 100)).intValue();
    }
}
