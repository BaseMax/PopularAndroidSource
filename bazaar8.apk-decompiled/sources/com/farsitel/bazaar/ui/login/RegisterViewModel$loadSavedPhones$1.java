package com.farsitel.bazaar.ui.login;

import c.c.a.c.a.a;
import c.c.a.n.p.m;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.login.RegisterViewModel$loadSavedPhones$1", f = "RegisterViewModel.kt", l = {33}, m = "invokeSuspend")
/* compiled from: RegisterViewModel.kt */
final class RegisterViewModel$loadSavedPhones$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ m this$0;

    @d(c = "com.farsitel.bazaar.ui.login.RegisterViewModel$loadSavedPhones$1$1", f = "RegisterViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.login.RegisterViewModel$loadSavedPhones$1$1  reason: invalid class name */
    /* compiled from: RegisterViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ RegisterViewModel$loadSavedPhones$1 this$0;

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
            h.c.a.b.a();
            if (this.label == 0) {
                e.a(obj);
                H h2 = this.p$;
                this.this$0.this$0.f6747e.a(this.this$0.this$0.f6748f.j());
                return h.f14579a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RegisterViewModel$loadSavedPhones$1(m mVar, b bVar) {
        super(2, bVar);
        this.this$0 = mVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        RegisterViewModel$loadSavedPhones$1 registerViewModel$loadSavedPhones$1 = new RegisterViewModel$loadSavedPhones$1(this.this$0, bVar);
        registerViewModel$loadSavedPhones$1.p$ = (H) obj;
        return registerViewModel$loadSavedPhones$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((RegisterViewModel$loadSavedPhones$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (a.a(r4, this) == a2) {
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
