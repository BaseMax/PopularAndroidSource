package com.farsitel.bazaar.ui.login;

import b.r.t;
import c.c.a.n.p.A;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.login.VerifyOtpViewModel$resendSms$1", f = "VerifyOtpViewModel.kt", l = {60}, m = "invokeSuspend")
/* compiled from: VerifyOtpViewModel.kt */
final class VerifyOtpViewModel$resendSms$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $phoneNumber;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VerifyOtpViewModel$resendSms$1(A a2, String str, b bVar) {
        super(2, bVar);
        this.this$0 = a2;
        this.$phoneNumber = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VerifyOtpViewModel$resendSms$1 verifyOtpViewModel$resendSms$1 = new VerifyOtpViewModel$resendSms$1(this.this$0, this.$phoneNumber, bVar);
        verifyOtpViewModel$resendSms$1.p$ = (H) obj;
        return verifyOtpViewModel$resendSms$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VerifyOtpViewModel$resendSms$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            t b2 = this.this$0.f6697e;
            Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            b2.b(resource);
            c.c.a.d.c.b a3 = this.this$0.f6698f;
            String str = this.$phoneNumber;
            AnonymousClass1 r3 = new h.f.a.b<WaitingTime, h>(this) {
                public final /* synthetic */ VerifyOtpViewModel$resendSms$1 this$0;

                {
                    this.this$0 = r1;
                }

                public /* bridge */ /* synthetic */ Object a(Object obj) {
                    a(((WaitingTime) obj).m7unboximpl());
                    return h.f14579a;
                }

                public final void a(long j2) {
                    t b2 = this.this$0.this$0.f6697e;
                    Resource resource = new Resource(ResourceState.Success.f12179a, Long.valueOf(j2), null, 4, null);
                    b2.b(resource);
                }
            };
            AnonymousClass2 r4 = new h.f.a.b<ErrorModel, h>(this) {
                public final /* synthetic */ VerifyOtpViewModel$resendSms$1 this$0;

                {
                    this.this$0 = r1;
                }

                public /* bridge */ /* synthetic */ Object a(Object obj) {
                    a((ErrorModel) obj);
                    return h.f14579a;
                }

                public final void a(ErrorModel errorModel) {
                    j.b(errorModel, "throwable");
                    t b2 = this.this$0.this$0.f6697e;
                    Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
                    b2.b(resource);
                }
            };
            this.label = 1;
            if (a3.a(str, r3, r4, this) == a2) {
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
