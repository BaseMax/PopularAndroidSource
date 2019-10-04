package com.farsitel.bazaar.ui.profile;

import b.r.t;
import c.c.a.e.d.m.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.profile.ProfileViewModel$loadCredit$1", f = "ProfileViewModel.kt", l = {52}, m = "invokeSuspend")
/* compiled from: ProfileViewModel.kt */
final class ProfileViewModel$loadCredit$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.t.h this$0;

    @d(c = "com.farsitel.bazaar.ui.profile.ProfileViewModel$loadCredit$1$1", f = "ProfileViewModel.kt", l = {53}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.profile.ProfileViewModel$loadCredit$1$1  reason: invalid class name */
    /* compiled from: ProfileViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ ProfileViewModel$loadCredit$1 this$0;

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
                c.c.a.e.d.m.d h3 = this.this$0.this$0.n;
                this.label = 1;
                obj = h3.a((b<? super Either<a>>) this);
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
                long a3 = ((a) ((Either.Success) either).getValue()).a();
                t f2 = this.this$0.this$0.f6956j;
                Resource resource = new Resource(ResourceState.Success.f12179a, h.c.b.a.a.a(a3), null, 4, null);
                f2.a(resource);
            } else if (either instanceof Either.Failure) {
                ErrorModel error = ((Either.Failure) either).getError();
                t f3 = this.this$0.this$0.f6956j;
                Resource resource2 = new Resource(ResourceState.Error.f12177a, null, error, 2, null);
                f3.a(resource2);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ProfileViewModel$loadCredit$1(c.c.a.n.t.h hVar, b bVar) {
        super(2, bVar);
        this.this$0 = hVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        ProfileViewModel$loadCredit$1 profileViewModel$loadCredit$1 = new ProfileViewModel$loadCredit$1(this.this$0, bVar);
        profileViewModel$loadCredit$1.p$ = (H) obj;
        return profileViewModel$loadCredit$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((ProfileViewModel$loadCredit$1) a(obj, (b) obj2)).d(h.f14579a);
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
