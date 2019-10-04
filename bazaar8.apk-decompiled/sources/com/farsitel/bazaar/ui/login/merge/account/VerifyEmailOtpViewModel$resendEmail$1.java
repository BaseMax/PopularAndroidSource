package com.farsitel.bazaar.ui.login.merge.account;

import b.r.t;
import c.c.a.e.d.a.a;
import c.c.a.n.p.a.a.p;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpViewModel$resendEmail$1", f = "VerifyEmailOtpViewModel.kt", l = {50}, m = "invokeSuspend")
/* compiled from: VerifyEmailOtpViewModel.kt */
final class VerifyEmailOtpViewModel$resendEmail$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $email;
    public int label;
    public H p$;
    public final /* synthetic */ p this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VerifyEmailOtpViewModel$resendEmail$1(p pVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = pVar;
        this.$email = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VerifyEmailOtpViewModel$resendEmail$1 verifyEmailOtpViewModel$resendEmail$1 = new VerifyEmailOtpViewModel$resendEmail$1(this.this$0, this.$email, bVar);
        verifyEmailOtpViewModel$resendEmail$1.p$ = (H) obj;
        return verifyEmailOtpViewModel$resendEmail$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VerifyEmailOtpViewModel$resendEmail$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            t b2 = this.this$0.f6726e;
            Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            b2.b(resource);
            a a3 = this.this$0.f6727f;
            String str = this.$email;
            this.label = 1;
            obj = a3.b(str, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        if (either instanceof Either.Success) {
            long r0 = ((WaitingTime) ((Either.Success) either).getValue()).m7unboximpl();
            t b3 = this.this$0.f6726e;
            Resource resource2 = new Resource(ResourceState.Success.f12179a, h.c.b.a.a.a(r0), null, 4, null);
            b3.b(resource2);
        } else if (either instanceof Either.Failure) {
            ErrorModel error = ((Either.Failure) either).getError();
            t b4 = this.this$0.f6726e;
            Resource resource3 = new Resource(ResourceState.Error.f12177a, null, error, 2, null);
            b4.b(resource3);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
