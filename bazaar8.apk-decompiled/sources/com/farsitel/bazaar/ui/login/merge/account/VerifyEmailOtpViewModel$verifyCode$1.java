package com.farsitel.bazaar.ui.login.merge.account;

import c.c.a.e.d.a.a;
import c.c.a.n.p.a.a.p;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpViewModel$verifyCode$1", f = "VerifyEmailOtpViewModel.kt", l = {34}, m = "invokeSuspend")
/* compiled from: VerifyEmailOtpViewModel.kt */
final class VerifyEmailOtpViewModel$verifyCode$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $code;
    public final /* synthetic */ String $email;
    public int label;
    public H p$;
    public final /* synthetic */ p this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VerifyEmailOtpViewModel$verifyCode$1(p pVar, String str, String str2, b bVar) {
        super(2, bVar);
        this.this$0 = pVar;
        this.$email = str;
        this.$code = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VerifyEmailOtpViewModel$verifyCode$1 verifyEmailOtpViewModel$verifyCode$1 = new VerifyEmailOtpViewModel$verifyCode$1(this.this$0, this.$email, this.$code, bVar);
        verifyEmailOtpViewModel$verifyCode$1.p$ = (H) obj;
        return verifyEmailOtpViewModel$verifyCode$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VerifyEmailOtpViewModel$verifyCode$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f6727f;
            String str = this.$email;
            String str2 = this.$code;
            this.label = 1;
            obj = a3.b(str, str2, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        p pVar = this.this$0;
        if (either instanceof Either.Success) {
            pVar.a((None) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            pVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
