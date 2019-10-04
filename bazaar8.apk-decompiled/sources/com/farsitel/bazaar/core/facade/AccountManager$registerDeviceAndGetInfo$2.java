package com.farsitel.bazaar.core.facade;

import c.c.a.e.d.a.a;
import c.c.a.e.g.f;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.facade.AccountManager$registerDeviceAndGetInfo$2", f = "AccountManager.kt", l = {116}, m = "invokeSuspend")
/* compiled from: AccountManager.kt */
final class AccountManager$registerDeviceAndGetInfo$2 extends SuspendLambda implements c<H, b<? super Either<? extends f>>, Object> {
    public final /* synthetic */ String $gcmId;
    public final /* synthetic */ String $systemLanguage;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.d.c.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccountManager$registerDeviceAndGetInfo$2(c.c.a.d.c.b bVar, String str, String str2, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$gcmId = str;
        this.$systemLanguage = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AccountManager$registerDeviceAndGetInfo$2 accountManager$registerDeviceAndGetInfo$2 = new AccountManager$registerDeviceAndGetInfo$2(this.this$0, this.$gcmId, this.$systemLanguage, bVar);
        accountManager$registerDeviceAndGetInfo$2.p$ = (H) obj;
        return accountManager$registerDeviceAndGetInfo$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AccountManager$registerDeviceAndGetInfo$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f4758b;
            String str = this.$gcmId;
            String str2 = this.$systemLanguage;
            this.label = 1;
            obj = a3.a(str, str2, this);
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
