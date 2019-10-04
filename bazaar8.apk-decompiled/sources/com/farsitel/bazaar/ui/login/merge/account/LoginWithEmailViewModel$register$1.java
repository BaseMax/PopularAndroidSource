package com.farsitel.bazaar.ui.login.merge.account;

import c.c.a.e.d.a.a;
import c.c.a.n.p.a.a.e;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.login.merge.account.LoginWithEmailViewModel$register$1", f = "LoginWithEmailViewModel.kt", l = {31}, m = "invokeSuspend")
/* compiled from: LoginWithEmailViewModel.kt */
final class LoginWithEmailViewModel$register$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $email;
    public int label;
    public H p$;
    public final /* synthetic */ e this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LoginWithEmailViewModel$register$1(e eVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = eVar;
        this.$email = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        LoginWithEmailViewModel$register$1 loginWithEmailViewModel$register$1 = new LoginWithEmailViewModel$register$1(this.this$0, this.$email, bVar);
        loginWithEmailViewModel$register$1.p$ = (H) obj;
        return loginWithEmailViewModel$register$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((LoginWithEmailViewModel$register$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            h.e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f6711e;
            String str = this.$email;
            this.label = 1;
            obj = a3.b(str, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            h.e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        e eVar = this.this$0;
        if (either instanceof Either.Success) {
            eVar.a(((WaitingTime) ((Either.Success) either).getValue()).m7unboximpl());
        } else if (either instanceof Either.Failure) {
            eVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
