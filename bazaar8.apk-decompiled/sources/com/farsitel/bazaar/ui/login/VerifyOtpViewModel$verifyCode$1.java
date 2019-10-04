package com.farsitel.bazaar.ui.login;

import c.c.a.n.p.A;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.a;
import h.f.a.c;
import h.f.b.j;
import h.f.b.k;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.login.VerifyOtpViewModel$verifyCode$1", f = "VerifyOtpViewModel.kt", l = {38}, m = "invokeSuspend")
/* compiled from: VerifyOtpViewModel.kt */
final class VerifyOtpViewModel$verifyCode$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $code;
    public final /* synthetic */ LoginType $loginType;
    public final /* synthetic */ String $phoneNumber;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VerifyOtpViewModel$verifyCode$1(A a2, String str, String str2, LoginType loginType, b bVar) {
        super(2, bVar);
        this.this$0 = a2;
        this.$phoneNumber = str;
        this.$code = str2;
        this.$loginType = loginType;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VerifyOtpViewModel$verifyCode$1 verifyOtpViewModel$verifyCode$1 = new VerifyOtpViewModel$verifyCode$1(this.this$0, this.$phoneNumber, this.$code, this.$loginType, bVar);
        verifyOtpViewModel$verifyCode$1.p$ = (H) obj;
        return verifyOtpViewModel$verifyCode$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VerifyOtpViewModel$verifyCode$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.d.c.b a3 = this.this$0.f6698f;
            String str = this.$phoneNumber;
            String str2 = this.$code;
            LoginType loginType = this.$loginType;
            AnonymousClass1 r7 = new a<h>(this.this$0) {
                public final h.i.e e() {
                    return k.a(A.class);
                }

                public final String g() {
                    return "verifyCodeSuccess()V";
                }

                public final String getName() {
                    return "verifyCodeSuccess";
                }

                public final void invoke() {
                    ((A) this.receiver).h();
                }
            };
            AnonymousClass2 r8 = new h.f.a.b<ErrorModel, h>(this.this$0) {
                public /* bridge */ /* synthetic */ Object a(Object obj) {
                    a((ErrorModel) obj);
                    return h.f14579a;
                }

                public final h.i.e e() {
                    return k.a(A.class);
                }

                public final String g() {
                    return "verifyCodeError(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V";
                }

                public final String getName() {
                    return "verifyCodeError";
                }

                public final void a(ErrorModel errorModel) {
                    j.b(errorModel, "p1");
                    ((A) this.receiver).a(errorModel);
                }
            };
            this.label = 1;
            if (a3.a(str, str2, loginType, r7, r8, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
