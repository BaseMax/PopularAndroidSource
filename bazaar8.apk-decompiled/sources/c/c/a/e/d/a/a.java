package c.c.a.e.d.a;

import c.c.a.e.d.a.b.b.f;
import c.c.a.e.d.m.a.c;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.LoginResponse;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: AccountRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final c.c.a.e.d.a.b.a f4905a;

    /* renamed from: b  reason: collision with root package name */
    public final c.c.a.e.d.a.a.a f4906b;

    /* renamed from: c  reason: collision with root package name */
    public final c f4907c;

    /* renamed from: d  reason: collision with root package name */
    public final c f4908d;

    /* renamed from: e  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4909e;

    /* renamed from: f  reason: collision with root package name */
    public final c.c.a.e.h.a.c f4910f;

    public a(c.c.a.e.d.a.b.a aVar, c.c.a.e.d.a.a.a aVar2, c cVar, c cVar2, c.c.a.e.d.u.a aVar3, c.c.a.e.h.a.c cVar3) {
        j.b(aVar, "accountRemoteDataSource");
        j.b(aVar2, "accountLocalDataSource");
        j.b(cVar, "paymentLocalDataSource");
        j.b(cVar2, "tokenRepository");
        j.b(aVar3, "settingsRepository");
        j.b(cVar3, "networkCache");
        this.f4905a = aVar;
        this.f4906b = aVar2;
        this.f4907c = cVar;
        this.f4908d = cVar2;
        this.f4909e = aVar3;
        this.f4910f = cVar3;
    }

    public final void A() {
        this.f4906b.A();
    }

    public final void B() {
        this.f4906b.B();
    }

    public final Object a(String str, b<? super Either<None>> bVar) {
        return this.f4905a.a(str, bVar);
    }

    public final void b(String str) {
        j.b(str, "phoneNumber");
        this.f4906b.d(str);
        this.f4906b.a(str);
    }

    public final void c(String str) {
        j.b(str, MetaDataStore.KEY_USER_NAME);
        this.f4906b.e(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.String r5, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.account.AccountRepository$setNickName$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.account.AccountRepository$setNickName$1 r0 = (com.farsitel.bazaar.data.feature.account.AccountRepository$setNickName$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.account.AccountRepository$setNickName$1 r0 = new com.farsitel.bazaar.data.feature.account.AccountRepository$setNickName$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.a.a r0 = (c.c.a.e.d.a.a) r0
            h.e.a((java.lang.Object) r6)
            goto L_0x004c
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.a.b.a r6 = r4.f4905a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.e(r5, r0)
            if (r6 != r1) goto L_0x004b
            return r1
        L_0x004b:
            r0 = r4
        L_0x004c:
            r1 = r6
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            boolean r1 = r1 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r1 == 0) goto L_0x0058
            c.c.a.e.d.a.a.a r0 = r0.f4906b
            r0.i((java.lang.String) r5)
        L_0x0058:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.a.d(java.lang.String, h.c.b):java.lang.Object");
    }

    public final long e() {
        return this.f4906b.h();
    }

    public final String f() {
        return this.f4906b.f();
    }

    public final String g() {
        return this.f4906b.i();
    }

    public final String h() {
        return this.f4906b.j();
    }

    public final String i() {
        return this.f4906b.k();
    }

    public final List<String> j() {
        return this.f4906b.b();
    }

    public final String k() {
        return this.f4906b.l();
    }

    public final String l() {
        return this.f4906b.m();
    }

    public final boolean m() {
        return this.f4906b.n();
    }

    public final boolean n() {
        return this.f4906b.o();
    }

    public final boolean o() {
        return this.f4906b.p();
    }

    public final boolean p() {
        return this.f4906b.q();
    }

    public final boolean q() {
        return this.f4906b.r();
    }

    public final boolean r() {
        return this.f4906b.s();
    }

    public final boolean s() {
        return this.f4906b.t();
    }

    public final boolean t() {
        return this.f4906b.u();
    }

    public final boolean u() {
        return this.f4908d.c();
    }

    public final boolean v() {
        return this.f4906b.v();
    }

    public final boolean w() {
        return this.f4906b.w();
    }

    public final boolean x() {
        return this.f4906b.x();
    }

    public final boolean y() {
        return this.f4906b.y();
    }

    public final void z() {
        String k2 = k();
        String i2 = i();
        boolean z = true;
        if (k2.length() > 0) {
            if (i2.length() != 0) {
                z = false;
            }
            if (z) {
                b(k2);
            }
        }
    }

    public final void a(String str) {
        j.b(str, "nickName");
        this.f4906b.i(str);
    }

    public final Object c(String str, b<? super Either<WaitingTime>> bVar) {
        return this.f4905a.c(str, bVar);
    }

    public final Object a(b<? super Either<f>> bVar) {
        return this.f4905a.a(bVar);
    }

    public final Object b(String str, b<? super Either<WaitingTime>> bVar) {
        return this.f4905a.b(str, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object c(h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.a>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.account.AccountRepository$mergeAccount$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.account.AccountRepository$mergeAccount$1 r0 = (com.farsitel.bazaar.data.feature.account.AccountRepository$mergeAccount$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.account.AccountRepository$mergeAccount$1 r0 = new com.farsitel.bazaar.data.feature.account.AccountRepository$mergeAccount$1
            r0.<init>(r5, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.a.a r0 = (c.c.a.e.d.a.a) r0
            h.e.a((java.lang.Object) r6)
            goto L_0x004e
        L_0x002d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L_0x0035:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.a.b.a r6 = r5.f4905a
            java.lang.String r2 = r5.g()
            java.lang.String r4 = r5.f()
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = r6.a(r2, r4, r0)
            if (r6 != r1) goto L_0x004d
            return r1
        L_0x004d:
            r0 = r5
        L_0x004e:
            r1 = r6
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            boolean r2 = r1 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r2 == 0) goto L_0x0066
            c.c.a.e.d.m.a.c r0 = r0.f4907c
            com.farsitel.bazaar.data.entity.Either$Success r1 = (com.farsitel.bazaar.data.entity.Either.Success) r1
            java.lang.Object r1 = r1.getValue()
            c.c.a.e.d.m.a r1 = (c.c.a.e.d.m.a) r1
            long r1 = r1.a()
            r0.a((long) r1)
        L_0x0066:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.a.c(h.c.b):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r5, java.lang.String r6, h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.g.f>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.farsitel.bazaar.data.feature.account.AccountRepository$registerDeviceAndGetInfo$1
            if (r0 == 0) goto L_0x0013
            r0 = r7
            com.farsitel.bazaar.data.feature.account.AccountRepository$registerDeviceAndGetInfo$1 r0 = (com.farsitel.bazaar.data.feature.account.AccountRepository$registerDeviceAndGetInfo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.account.AccountRepository$registerDeviceAndGetInfo$1 r0 = new com.farsitel.bazaar.data.feature.account.AccountRepository$registerDeviceAndGetInfo$1
            r0.<init>(r4, r7)
        L_0x0018:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x003d
            if (r2 != r3) goto L_0x0035
            java.lang.Object r5 = r0.L$2
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.e.d.a.a r5 = (c.c.a.e.d.a.a) r5
            h.e.a((java.lang.Object) r7)
            goto L_0x0052
        L_0x0035:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x003d:
            h.e.a((java.lang.Object) r7)
            c.c.a.e.d.a.b.a r7 = r4.f4905a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r7 = r7.b(r5, r6, r0)
            if (r7 != r1) goto L_0x0051
            return r1
        L_0x0051:
            r5 = r4
        L_0x0052:
            r6 = r7
            com.farsitel.bazaar.data.entity.Either r6 = (com.farsitel.bazaar.data.entity.Either) r6
            r5.a((com.farsitel.bazaar.data.entity.Either<c.c.a.e.g.f>) r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.a.a(java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v3, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(java.lang.String r5, java.lang.String r6, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.farsitel.bazaar.data.feature.account.AccountRepository$verifyEmailOtpToken$1
            if (r0 == 0) goto L_0x0013
            r0 = r7
            com.farsitel.bazaar.data.feature.account.AccountRepository$verifyEmailOtpToken$1 r0 = (com.farsitel.bazaar.data.feature.account.AccountRepository$verifyEmailOtpToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.account.AccountRepository$verifyEmailOtpToken$1 r0 = new com.farsitel.bazaar.data.feature.account.AccountRepository$verifyEmailOtpToken$1
            r0.<init>(r4, r7)
        L_0x0018:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x003e
            if (r2 != r3) goto L_0x0036
            java.lang.Object r5 = r0.L$2
            r6 = r5
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.a.a r0 = (c.c.a.e.d.a.a) r0
            h.e.a((java.lang.Object) r7)
            goto L_0x0053
        L_0x0036:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x003e:
            h.e.a((java.lang.Object) r7)
            c.c.a.e.d.a.b.a r7 = r4.f4905a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r7 = r7.c(r5, r6, r0)
            if (r7 != r1) goto L_0x0052
            return r1
        L_0x0052:
            r0 = r4
        L_0x0053:
            r1 = r7
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            boolean r1 = r1 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r1 == 0) goto L_0x0064
            c.c.a.e.d.a.a.a r1 = r0.f4906b
            r1.c((java.lang.String) r5)
            c.c.a.e.d.a.a.a r5 = r0.f4906b
            r5.b((java.lang.String) r6)
        L_0x0064:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.a.b(java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    public final int d() {
        return this.f4906b.e();
    }

    public final String a() {
        return this.f4906b.a();
    }

    public final Object c(String str, String str2, b<? super Either<LoginResponse>> bVar) {
        return this.f4905a.d(str, str2, bVar);
    }

    public final void a(Either<c.c.a.e.g.f> either) {
        if (either instanceof Either.Success) {
            this.f4906b.a((c.c.a.e.g.f) ((Either.Success) either).getValue());
            a(System.currentTimeMillis());
        }
    }

    public final String c() {
        if (this.f4909e.u()) {
            return this.f4906b.g();
        }
        return this.f4906b.d();
    }

    public final Object b(b<? super Either<None>> bVar) {
        String b2 = this.f4908d.b();
        this.f4910f.s();
        this.f4908d.d();
        this.f4906b.z();
        return this.f4905a.d(b2, bVar);
    }

    public final void a(long j2) {
        this.f4906b.a(j2);
    }

    public final int b() {
        return this.f4906b.c();
    }
}
