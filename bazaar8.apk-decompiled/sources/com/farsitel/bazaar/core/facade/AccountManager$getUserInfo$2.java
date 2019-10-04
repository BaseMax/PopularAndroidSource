package com.farsitel.bazaar.core.facade;

import c.c.a.e.d.a.a;
import c.c.a.e.d.a.b.b.f;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.facade.AccountManager$getUserInfo$2", f = "AccountManager.kt", l = {90}, m = "invokeSuspend")
/* compiled from: AccountManager.kt */
final class AccountManager$getUserInfo$2 extends SuspendLambda implements c<H, b<? super Either<? extends f>>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.d.c.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccountManager$getUserInfo$2(c.c.a.d.c.b bVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AccountManager$getUserInfo$2 accountManager$getUserInfo$2 = new AccountManager$getUserInfo$2(this.this$0, bVar);
        accountManager$getUserInfo$2.p$ = (H) obj;
        return accountManager$getUserInfo$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AccountManager$getUserInfo$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f4758b;
            this.label = 1;
            obj = a3.a((b<? super Either<f>>) this);
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
