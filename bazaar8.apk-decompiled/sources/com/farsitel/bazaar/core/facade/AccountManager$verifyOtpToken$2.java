package com.farsitel.bazaar.core.facade;

import c.c.a.e.d.a.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.LoginResponse;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$2", f = "AccountManager.kt", l = {55}, m = "invokeSuspend")
/* compiled from: AccountManager.kt */
final class AccountManager$verifyOtpToken$2 extends SuspendLambda implements c<H, b<? super Either<? extends LoginResponse>>, Object> {
    public final /* synthetic */ String $otpCode;
    public final /* synthetic */ String $userName;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.d.c.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccountManager$verifyOtpToken$2(c.c.a.d.c.b bVar, String str, String str2, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$userName = str;
        this.$otpCode = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AccountManager$verifyOtpToken$2 accountManager$verifyOtpToken$2 = new AccountManager$verifyOtpToken$2(this.this$0, this.$userName, this.$otpCode, bVar);
        accountManager$verifyOtpToken$2.p$ = (H) obj;
        return accountManager$verifyOtpToken$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AccountManager$verifyOtpToken$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f4758b;
            String str = this.$userName;
            String str2 = this.$otpCode;
            this.label = 1;
            obj = a3.c(str, str2, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
