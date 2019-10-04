package com.farsitel.bazaar.ui.login;

import c.c.a.e.d.a.a;
import c.c.a.n.p.m;
import com.farsitel.bazaar.data.entity.Either;
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

@d(c = "com.farsitel.bazaar.ui.login.RegisterViewModel$register$1", f = "RegisterViewModel.kt", l = {43}, m = "invokeSuspend")
/* compiled from: RegisterViewModel.kt */
final class RegisterViewModel$register$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $phoneNumber;
    public int label;
    public H p$;
    public final /* synthetic */ m this$0;

    @d(c = "com.farsitel.bazaar.ui.login.RegisterViewModel$register$1$1", f = "RegisterViewModel.kt", l = {44}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.login.RegisterViewModel$register$1$1  reason: invalid class name */
    /* compiled from: RegisterViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ RegisterViewModel$register$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                a a3 = this.this$0.this$0.f6748f;
                String str = this.this$0.$phoneNumber;
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
            Either either = (Either) obj;
            m mVar = this.this$0.this$0;
            if (either instanceof Either.Success) {
                mVar.a(((WaitingTime) ((Either.Success) either).getValue()).m7unboximpl());
            } else if (either instanceof Either.Failure) {
                mVar.a(((Either.Failure) either).getError());
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RegisterViewModel$register$1(m mVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = mVar;
        this.$phoneNumber = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        RegisterViewModel$register$1 registerViewModel$register$1 = new RegisterViewModel$register$1(this.this$0, this.$phoneNumber, bVar);
        registerViewModel$register$1.p$ = (H) obj;
        return registerViewModel$register$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((RegisterViewModel$register$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (c.c.a.c.a.a.a(r4, this) == a2) {
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
