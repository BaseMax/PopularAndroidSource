package c.c.a.d.c;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.e.d.a.a;
import c.c.a.e.d.a.c;
import com.farsitel.bazaar.common.model.user.User;
import h.f.b.j;

/* compiled from: AccountManager.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final t<User> f4757a = new t<>();

    /* renamed from: b  reason: collision with root package name */
    public final a f4758b;

    /* renamed from: c  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4759c;

    /* renamed from: d  reason: collision with root package name */
    public final c f4760d;

    public b(a aVar, c.c.a.e.d.u.a aVar2, c cVar) {
        j.b(aVar, "accountRepository");
        j.b(aVar2, "settingsRepository");
        j.b(cVar, "tokenRepository");
        this.f4758b = aVar;
        this.f4759c = aVar2;
        this.f4760d = cVar;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v3, resolved type: h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h>} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0073  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object b(h.f.a.a<h.h> r8, h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h> r9, h.c.b<? super h.h> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$1
            if (r0 == 0) goto L_0x0013
            r0 = r10
            com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$1 r0 = (com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$1 r0 = new com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$1
            r0.<init>(r7, r10)
        L_0x0018:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L_0x0073
            if (r2 == r5) goto L_0x0062
            if (r2 == r4) goto L_0x004c
            if (r2 != r3) goto L_0x0044
            java.lang.Object r8 = r0.L$4
            com.farsitel.bazaar.data.entity.ErrorModel r8 = (com.farsitel.bazaar.data.entity.ErrorModel) r8
            java.lang.Object r9 = r0.L$3
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            java.lang.Object r9 = r0.L$2
            h.f.a.b r9 = (h.f.a.b) r9
            java.lang.Object r1 = r0.L$1
            h.f.a.a r1 = (h.f.a.a) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.d.c.b r0 = (c.c.a.d.c.b) r0
            h.e.a((java.lang.Object) r10)
            goto L_0x00d4
        L_0x0044:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L_0x004c:
            long r8 = r0.J$0
            java.lang.Object r8 = r0.L$3
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            java.lang.Object r8 = r0.L$2
            h.f.a.b r8 = (h.f.a.b) r8
            java.lang.Object r8 = r0.L$1
            h.f.a.a r8 = (h.f.a.a) r8
            java.lang.Object r8 = r0.L$0
            c.c.a.d.c.b r8 = (c.c.a.d.c.b) r8
            h.e.a((java.lang.Object) r10)
            goto L_0x00b2
        L_0x0062:
            java.lang.Object r8 = r0.L$2
            r9 = r8
            h.f.a.b r9 = (h.f.a.b) r9
            java.lang.Object r8 = r0.L$1
            h.f.a.a r8 = (h.f.a.a) r8
            java.lang.Object r2 = r0.L$0
            c.c.a.d.c.b r2 = (c.c.a.d.c.b) r2
            h.e.a((java.lang.Object) r10)
            goto L_0x008c
        L_0x0073:
            h.e.a((java.lang.Object) r10)
            com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$2 r10 = new com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$2
            r2 = 0
            r10.<init>(r7, r2)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r5
            java.lang.Object r10 = c.c.a.c.a.a.a(r10, r0)
            if (r10 != r1) goto L_0x008b
            return r1
        L_0x008b:
            r2 = r7
        L_0x008c:
            com.farsitel.bazaar.data.entity.Either r10 = (com.farsitel.bazaar.data.entity.Either) r10
            boolean r5 = r10 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x00b3
            r3 = r10
            com.farsitel.bazaar.data.entity.Either$Success r3 = (com.farsitel.bazaar.data.entity.Either.Success) r3
            java.lang.Object r3 = r3.getValue()
            c.c.a.e.d.m.a r3 = (c.c.a.e.d.m.a) r3
            long r5 = r3.a()
            r0.L$0 = r2
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.J$0 = r5
            r0.label = r4
            java.lang.Object r10 = r2.a(r8, r9, r0)
            if (r10 != r1) goto L_0x00b2
            return r1
        L_0x00b2:
            return r10
        L_0x00b3:
            boolean r4 = r10 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r4 == 0) goto L_0x00da
            r4 = r10
            com.farsitel.bazaar.data.entity.Either$Failure r4 = (com.farsitel.bazaar.data.entity.Either.Failure) r4
            com.farsitel.bazaar.data.entity.ErrorModel r4 = r4.getError()
            c.c.a.e.d.a.a r5 = r2.f4758b
            r0.L$0 = r2
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.L$4 = r4
            r0.label = r3
            java.lang.Object r8 = r5.b((h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>>) r0)
            if (r8 != r1) goto L_0x00d3
            return r1
        L_0x00d3:
            r8 = r4
        L_0x00d4:
            r9.a(r8)
            h.h r8 = h.h.f14579a
            return r8
        L_0x00da:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.c.b.b(h.f.a.a, h.f.a.b, h.c.b):java.lang.Object");
    }

    public final LiveData<User> c() {
        return this.f4757a;
    }

    public final void d() {
        g();
    }

    public final boolean e() {
        return this.f4758b.t();
    }

    public final boolean f() {
        return this.f4760d.c();
    }

    public final void g() {
        this.f4757a.a(new User(f(), a(), this.f4758b.i(), b()));
    }

    public final String a() {
        return this.f4758b.h();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v8, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v2, resolved type: h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v9, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v3, resolved type: h.f.a.b<? super com.farsitel.bazaar.data.entity.WaitingTime, h.h>} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r5, h.f.a.b<? super com.farsitel.bazaar.data.entity.WaitingTime, h.h> r6, h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h> r7, h.c.b<? super h.h> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$1
            if (r0 == 0) goto L_0x0013
            r0 = r8
            com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$1 r0 = (com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$1 r0 = new com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$1
            r0.<init>(r4, r8)
        L_0x0018:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0043
            if (r2 != r3) goto L_0x003b
            java.lang.Object r5 = r0.L$3
            r7 = r5
            h.f.a.b r7 = (h.f.a.b) r7
            java.lang.Object r5 = r0.L$2
            r6 = r5
            h.f.a.b r6 = (h.f.a.b) r6
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.d.c.b r5 = (c.c.a.d.c.b) r5
            h.e.a((java.lang.Object) r8)
            goto L_0x005d
        L_0x003b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0043:
            h.e.a((java.lang.Object) r8)
            com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$2 r8 = new com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$2
            r2 = 0
            r8.<init>(r4, r5, r2)
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.L$3 = r7
            r0.label = r3
            java.lang.Object r8 = c.c.a.c.a.a.a(r8, r0)
            if (r8 != r1) goto L_0x005d
            return r1
        L_0x005d:
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            boolean r5 = r8 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x006d
            com.farsitel.bazaar.data.entity.Either$Success r8 = (com.farsitel.bazaar.data.entity.Either.Success) r8
            java.lang.Object r5 = r8.getValue()
            r6.a(r5)
            goto L_0x007a
        L_0x006d:
            boolean r5 = r8 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r5 == 0) goto L_0x007d
            com.farsitel.bazaar.data.entity.Either$Failure r8 = (com.farsitel.bazaar.data.entity.Either.Failure) r8
            com.farsitel.bazaar.data.entity.ErrorModel r5 = r8.getError()
            r7.a(r5)
        L_0x007a:
            h.h r5 = h.h.f14579a
            return r5
        L_0x007d:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.c.b.a(java.lang.String, h.f.a.b, h.f.a.b, h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v2, resolved type: h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v2, resolved type: h.f.a.a<h.h>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v8, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v2, resolved type: com.farsitel.bazaar.common.model.login.LoginType} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v9, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v2, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r10, java.lang.String r11, com.farsitel.bazaar.common.model.login.LoginType r12, h.f.a.a<h.h> r13, h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h> r14, h.c.b<? super h.h> r15) {
        /*
            r9 = this;
            boolean r0 = r15 instanceof com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$1
            if (r0 == 0) goto L_0x0013
            r0 = r15
            com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$1 r0 = (com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$1 r0 = new com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$1
            r0.<init>(r9, r15)
        L_0x0018:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L_0x009d
            if (r2 == r5) goto L_0x007d
            if (r2 == r4) goto L_0x0058
            if (r2 != r3) goto L_0x0050
            java.lang.Object r10 = r0.L$7
            com.farsitel.bazaar.data.entity.LoginResponse r10 = (com.farsitel.bazaar.data.entity.LoginResponse) r10
            java.lang.Object r10 = r0.L$6
            com.farsitel.bazaar.data.entity.Either r10 = (com.farsitel.bazaar.data.entity.Either) r10
            java.lang.Object r10 = r0.L$5
            h.f.a.b r10 = (h.f.a.b) r10
            java.lang.Object r10 = r0.L$4
            h.f.a.a r10 = (h.f.a.a) r10
            java.lang.Object r10 = r0.L$3
            com.farsitel.bazaar.common.model.login.LoginType r10 = (com.farsitel.bazaar.common.model.login.LoginType) r10
            java.lang.Object r10 = r0.L$2
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r10 = r0.L$1
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r10 = r0.L$0
            c.c.a.d.c.b r10 = (c.c.a.d.c.b) r10
            h.e.a((java.lang.Object) r15)
            goto L_0x0105
        L_0x0050:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L_0x0058:
            java.lang.Object r10 = r0.L$7
            com.farsitel.bazaar.data.entity.LoginResponse r10 = (com.farsitel.bazaar.data.entity.LoginResponse) r10
            java.lang.Object r10 = r0.L$6
            com.farsitel.bazaar.data.entity.Either r10 = (com.farsitel.bazaar.data.entity.Either) r10
            java.lang.Object r10 = r0.L$5
            h.f.a.b r10 = (h.f.a.b) r10
            java.lang.Object r10 = r0.L$4
            h.f.a.a r10 = (h.f.a.a) r10
            java.lang.Object r10 = r0.L$3
            com.farsitel.bazaar.common.model.login.LoginType r10 = (com.farsitel.bazaar.common.model.login.LoginType) r10
            java.lang.Object r10 = r0.L$2
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r10 = r0.L$1
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r10 = r0.L$0
            c.c.a.d.c.b r10 = (c.c.a.d.c.b) r10
            h.e.a((java.lang.Object) r15)
            goto L_0x011f
        L_0x007d:
            java.lang.Object r10 = r0.L$5
            r14 = r10
            h.f.a.b r14 = (h.f.a.b) r14
            java.lang.Object r10 = r0.L$4
            r13 = r10
            h.f.a.a r13 = (h.f.a.a) r13
            java.lang.Object r10 = r0.L$3
            r12 = r10
            com.farsitel.bazaar.common.model.login.LoginType r12 = (com.farsitel.bazaar.common.model.login.LoginType) r12
            java.lang.Object r10 = r0.L$2
            r11 = r10
            java.lang.String r11 = (java.lang.String) r11
            java.lang.Object r10 = r0.L$1
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r2 = r0.L$0
            c.c.a.d.c.b r2 = (c.c.a.d.c.b) r2
            h.e.a((java.lang.Object) r15)
            goto L_0x00bc
        L_0x009d:
            h.e.a((java.lang.Object) r15)
            com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$2 r15 = new com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$2
            r2 = 0
            r15.<init>(r9, r10, r11, r2)
            r0.L$0 = r9
            r0.L$1 = r10
            r0.L$2 = r11
            r0.L$3 = r12
            r0.L$4 = r13
            r0.L$5 = r14
            r0.label = r5
            java.lang.Object r15 = c.c.a.c.a.a.a(r15, r0)
            if (r15 != r1) goto L_0x00bb
            return r1
        L_0x00bb:
            r2 = r9
        L_0x00bc:
            com.farsitel.bazaar.data.entity.Either r15 = (com.farsitel.bazaar.data.entity.Either) r15
            boolean r6 = r15 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r6 == 0) goto L_0x0120
            r6 = r15
            com.farsitel.bazaar.data.entity.Either$Success r6 = (com.farsitel.bazaar.data.entity.Either.Success) r6
            java.lang.Object r6 = r6.getValue()
            com.farsitel.bazaar.data.entity.LoginResponse r6 = (com.farsitel.bazaar.data.entity.LoginResponse) r6
            c.c.a.e.d.a.c r7 = r2.f4760d
            java.lang.String r8 = r6.getRefreshToken()
            r7.b(r8)
            c.c.a.e.d.a.c r7 = r2.f4760d
            java.lang.String r8 = r6.getAccessToken()
            r7.a(r8)
            c.c.a.e.d.a.a r7 = r2.f4758b
            r7.b((java.lang.String) r10)
            int[] r7 = c.c.a.d.c.a.f4756a
            int r8 = r12.ordinal()
            r7 = r7[r8]
            if (r7 == r5) goto L_0x0106
            r0.L$0 = r2
            r0.L$1 = r10
            r0.L$2 = r11
            r0.L$3 = r12
            r0.L$4 = r13
            r0.L$5 = r14
            r0.L$6 = r15
            r0.L$7 = r6
            r0.label = r3
            java.lang.Object r15 = r2.a(r13, r14, r0)
            if (r15 != r1) goto L_0x0105
            return r1
        L_0x0105:
            return r15
        L_0x0106:
            r0.L$0 = r2
            r0.L$1 = r10
            r0.L$2 = r11
            r0.L$3 = r12
            r0.L$4 = r13
            r0.L$5 = r14
            r0.L$6 = r15
            r0.L$7 = r6
            r0.label = r4
            java.lang.Object r15 = r2.b(r13, r14, r0)
            if (r15 != r1) goto L_0x011f
            return r1
        L_0x011f:
            return r15
        L_0x0120:
            boolean r10 = r15 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r10 == 0) goto L_0x0130
            com.farsitel.bazaar.data.entity.Either$Failure r15 = (com.farsitel.bazaar.data.entity.Either.Failure) r15
            com.farsitel.bazaar.data.entity.ErrorModel r10 = r15.getError()
            r14.a(r10)
            h.h r10 = h.h.f14579a
            return r10
        L_0x0130:
            kotlin.NoWhenBranchMatchedException r10 = new kotlin.NoWhenBranchMatchedException
            r10.<init>()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.c.b.a(java.lang.String, java.lang.String, com.farsitel.bazaar.common.model.login.LoginType, h.f.a.a, h.f.a.b, h.c.b):java.lang.Object");
    }

    public final String b() {
        return this.f4758b.k();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v14, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v12, resolved type: h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h>} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object a(h.f.a.a<h.h> r8, h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h> r9, h.c.b<? super h.h> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$1
            if (r0 == 0) goto L_0x0013
            r0 = r10
            com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$1 r0 = (com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$1 r0 = new com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$1
            r0.<init>(r7, r10)
        L_0x0018:
            r6 = r0
            java.lang.Object r10 = r6.result
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r6.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L_0x0076
            if (r1 == r4) goto L_0x0065
            if (r1 == r3) goto L_0x004d
            if (r1 != r2) goto L_0x0045
            java.lang.Object r8 = r6.L$4
            com.farsitel.bazaar.data.entity.ErrorModel r8 = (com.farsitel.bazaar.data.entity.ErrorModel) r8
            java.lang.Object r9 = r6.L$3
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            java.lang.Object r9 = r6.L$2
            h.f.a.b r9 = (h.f.a.b) r9
            java.lang.Object r0 = r6.L$1
            h.f.a.a r0 = (h.f.a.a) r0
            java.lang.Object r0 = r6.L$0
            c.c.a.d.c.b r0 = (c.c.a.d.c.b) r0
            h.e.a((java.lang.Object) r10)
            goto L_0x00f9
        L_0x0045:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L_0x004d:
            java.lang.Object r8 = r6.L$4
            c.c.a.e.d.a.b.b.f r8 = (c.c.a.e.d.a.b.b.f) r8
            java.lang.Object r8 = r6.L$3
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            java.lang.Object r8 = r6.L$2
            h.f.a.b r8 = (h.f.a.b) r8
            java.lang.Object r8 = r6.L$1
            h.f.a.a r8 = (h.f.a.a) r8
            java.lang.Object r8 = r6.L$0
            c.c.a.d.c.b r8 = (c.c.a.d.c.b) r8
            h.e.a((java.lang.Object) r10)
            goto L_0x00d2
        L_0x0065:
            java.lang.Object r8 = r6.L$2
            r9 = r8
            h.f.a.b r9 = (h.f.a.b) r9
            java.lang.Object r8 = r6.L$1
            h.f.a.a r8 = (h.f.a.a) r8
            java.lang.Object r1 = r6.L$0
            c.c.a.d.c.b r1 = (c.c.a.d.c.b) r1
            h.e.a((java.lang.Object) r10)
            goto L_0x008f
        L_0x0076:
            h.e.a((java.lang.Object) r10)
            com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$2 r10 = new com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$2
            r1 = 0
            r10.<init>(r7, r1)
            r6.L$0 = r7
            r6.L$1 = r8
            r6.L$2 = r9
            r6.label = r4
            java.lang.Object r10 = c.c.a.c.a.a.a(r10, r6)
            if (r10 != r0) goto L_0x008e
            return r0
        L_0x008e:
            r1 = r7
        L_0x008f:
            r4 = r8
            r5 = r9
            com.farsitel.bazaar.data.entity.Either r10 = (com.farsitel.bazaar.data.entity.Either) r10
            boolean r8 = r10 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r8 == 0) goto L_0x00d3
            r8 = r10
            com.farsitel.bazaar.data.entity.Either$Success r8 = (com.farsitel.bazaar.data.entity.Either.Success) r8
            java.lang.Object r8 = r8.getValue()
            c.c.a.e.d.a.b.b.f r8 = (c.c.a.e.d.a.b.b.f) r8
            c.c.a.e.d.a.a r9 = r1.f4758b
            java.lang.String r2 = r8.b()
            r9.c((java.lang.String) r2)
            c.c.a.e.d.a.a r9 = r1.f4758b
            java.lang.String r2 = r8.a()
            r9.a((java.lang.String) r2)
            c.c.a.e.d.u.a r9 = r1.f4759c
            java.lang.String r2 = r9.k()
            c.c.a.e.d.u.a r9 = r1.f4759c
            java.lang.String r9 = r9.l()
            r6.L$0 = r1
            r6.L$1 = r4
            r6.L$2 = r5
            r6.L$3 = r10
            r6.L$4 = r8
            r6.label = r3
            r3 = r9
            java.lang.Object r10 = r1.a(r2, r3, r4, r5, r6)
            if (r10 != r0) goto L_0x00d2
            return r0
        L_0x00d2:
            return r10
        L_0x00d3:
            boolean r8 = r10 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r8 == 0) goto L_0x00ff
            r8 = r10
            com.farsitel.bazaar.data.entity.Either$Failure r8 = (com.farsitel.bazaar.data.entity.Either.Failure) r8
            com.farsitel.bazaar.data.entity.ErrorModel r8 = r8.getError()
            c.c.a.c.c.a r9 = c.c.a.c.c.a.f4699b
            r9.a((java.lang.Throwable) r8)
            c.c.a.e.d.a.a r9 = r1.f4758b
            r6.L$0 = r1
            r6.L$1 = r4
            r6.L$2 = r5
            r6.L$3 = r10
            r6.L$4 = r8
            r6.label = r2
            java.lang.Object r9 = r9.b((h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>>) r6)
            if (r9 != r0) goto L_0x00f8
            return r0
        L_0x00f8:
            r9 = r5
        L_0x00f9:
            r9.a(r8)
            h.h r8 = h.h.f14579a
            return r8
        L_0x00ff:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.c.b.a(h.f.a.a, h.f.a.b, h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v9, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v2, resolved type: h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v10, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v2, resolved type: h.f.a.a<h.h>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v11, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v4, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object a(java.lang.String r7, java.lang.String r8, h.f.a.a<h.h> r9, h.f.a.b<? super com.farsitel.bazaar.data.entity.ErrorModel, h.h> r10, h.c.b<? super h.h> r11) {
        /*
            r6 = this;
            boolean r0 = r11 instanceof com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$1
            if (r0 == 0) goto L_0x0013
            r0 = r11
            com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$1 r0 = (com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$1 r0 = new com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$1
            r0.<init>(r6, r11)
        L_0x0018:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x006c
            if (r2 == r4) goto L_0x0051
            if (r2 != r3) goto L_0x0049
            java.lang.Object r7 = r0.L$6
            com.farsitel.bazaar.data.entity.ErrorModel r7 = (com.farsitel.bazaar.data.entity.ErrorModel) r7
            java.lang.Object r8 = r0.L$5
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            java.lang.Object r8 = r0.L$4
            h.f.a.b r8 = (h.f.a.b) r8
            java.lang.Object r9 = r0.L$3
            h.f.a.a r9 = (h.f.a.a) r9
            java.lang.Object r9 = r0.L$2
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r9 = r0.L$1
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r9 = r0.L$0
            c.c.a.d.c.b r9 = (c.c.a.d.c.b) r9
            h.e.a((java.lang.Object) r11)
            goto L_0x00c9
        L_0x0049:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L_0x0051:
            java.lang.Object r7 = r0.L$4
            r10 = r7
            h.f.a.b r10 = (h.f.a.b) r10
            java.lang.Object r7 = r0.L$3
            r9 = r7
            h.f.a.a r9 = (h.f.a.a) r9
            java.lang.Object r7 = r0.L$2
            r8 = r7
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r7 = r0.L$1
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r2 = r0.L$0
            c.c.a.d.c.b r2 = (c.c.a.d.c.b) r2
            h.e.a((java.lang.Object) r11)
            goto L_0x0089
        L_0x006c:
            h.e.a((java.lang.Object) r11)
            com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$2 r11 = new com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$2
            r2 = 0
            r11.<init>(r6, r7, r8, r2)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.L$3 = r9
            r0.L$4 = r10
            r0.label = r4
            java.lang.Object r11 = c.c.a.c.a.a.a(r11, r0)
            if (r11 != r1) goto L_0x0088
            return r1
        L_0x0088:
            r2 = r6
        L_0x0089:
            com.farsitel.bazaar.data.entity.Either r11 = (com.farsitel.bazaar.data.entity.Either) r11
            boolean r4 = r11 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r4 == 0) goto L_0x009e
            com.farsitel.bazaar.data.entity.Either$Success r11 = (com.farsitel.bazaar.data.entity.Either.Success) r11
            java.lang.Object r7 = r11.getValue()
            c.c.a.e.g.f r7 = (c.c.a.e.g.f) r7
            r2.g()
            r9.invoke()
            goto L_0x00cc
        L_0x009e:
            boolean r4 = r11 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r4 == 0) goto L_0x00cf
            r4 = r11
            com.farsitel.bazaar.data.entity.Either$Failure r4 = (com.farsitel.bazaar.data.entity.Either.Failure) r4
            com.farsitel.bazaar.data.entity.ErrorModel r4 = r4.getError()
            c.c.a.c.c.a r5 = c.c.a.c.c.a.f4699b
            r5.a((java.lang.Throwable) r4)
            c.c.a.e.d.a.a r5 = r2.f4758b
            r0.L$0 = r2
            r0.L$1 = r7
            r0.L$2 = r8
            r0.L$3 = r9
            r0.L$4 = r10
            r0.L$5 = r11
            r0.L$6 = r4
            r0.label = r3
            java.lang.Object r7 = r5.b((h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>>) r0)
            if (r7 != r1) goto L_0x00c7
            return r1
        L_0x00c7:
            r8 = r10
            r7 = r4
        L_0x00c9:
            r8.a(r7)
        L_0x00cc:
            h.h r7 = h.h.f14579a
            return r7
        L_0x00cf:
            kotlin.NoWhenBranchMatchedException r7 = new kotlin.NoWhenBranchMatchedException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.c.b.a(java.lang.String, java.lang.String, h.f.a.a, h.f.a.b, h.c.b):java.lang.Object");
    }
}
