package com.farsitel.bazaar.core.facade;

import c.c.a.e.d.a.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.facade.AccountManager$getOtpToken$2", f = "AccountManager.kt", l = {45}, m = "invokeSuspend")
/* compiled from: AccountManager.kt */
final class AccountManager$getOtpToken$2 extends SuspendLambda implements c<H, b<? super Either<? extends WaitingTime>>, Object> {
    public final /* synthetic */ String $userName;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.d.c.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccountManager$getOtpToken$2(c.c.a.d.c.b bVar, String str, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$userName = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AccountManager$getOtpToken$2 accountManager$getOtpToken$2 = new AccountManager$getOtpToken$2(this.this$0, this.$userName, bVar);
        accountManager$getOtpToken$2.p$ = (H) obj;
        return accountManager$getOtpToken$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AccountManager$getOtpToken$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f4758b;
            String str = this.$userName;
            this.label = 1;
            obj = a3.c(str, this);
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
