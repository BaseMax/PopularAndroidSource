package com.farsitel.bazaar.core.facade;

import c.c.a.e.d.m.a;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.facade.AccountManager$mergeAccount$2", f = "AccountManager.kt", l = {75}, m = "invokeSuspend")
/* compiled from: AccountManager.kt */
final class AccountManager$mergeAccount$2 extends SuspendLambda implements c<H, b<? super Either<? extends a>>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.d.c.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccountManager$mergeAccount$2(c.c.a.d.c.b bVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AccountManager$mergeAccount$2 accountManager$mergeAccount$2 = new AccountManager$mergeAccount$2(this.this$0, bVar);
        accountManager$mergeAccount$2.p$ = (H) obj;
        return accountManager$mergeAccount$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AccountManager$mergeAccount$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.a.a a3 = this.this$0.f4758b;
            this.label = 1;
            obj = a3.c((b<? super Either<a>>) this);
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
