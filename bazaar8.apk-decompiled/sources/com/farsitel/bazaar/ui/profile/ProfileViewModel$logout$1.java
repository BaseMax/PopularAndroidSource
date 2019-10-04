package com.farsitel.bazaar.ui.profile;

import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1", f = "ProfileViewModel.kt", l = {67}, m = "invokeSuspend")
/* compiled from: ProfileViewModel.kt */
final class ProfileViewModel$logout$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.t.h this$0;

    @d(c = "com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1$1", f = "ProfileViewModel.kt", l = {71, 74}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1$1  reason: invalid class name */
    /* compiled from: ProfileViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ ProfileViewModel$logout$1 this$0;

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

        /* JADX WARNING: Removed duplicated region for block: B:16:0x0077  */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0097  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.lang.Object d(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = h.c.a.b.a()
                int r1 = r7.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L_0x001e
                if (r1 == r3) goto L_0x001a
                if (r1 != r2) goto L_0x0012
                h.e.a((java.lang.Object) r8)
                goto L_0x0071
            L_0x0012:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L_0x001a:
                h.e.a((java.lang.Object) r8)
                goto L_0x0055
            L_0x001e:
                h.e.a((java.lang.Object) r8)
                i.a.H r8 = r7.p$
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.e.d.r.b.b r8 = r8.o
                r8.a()
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.e.d.r.a.b r8 = r8.p
                r8.a()
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.e.d.d.b r8 = r8.q
                r8.a()
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.e.d.m.d r8 = r8.n
                r7.label = r3
                java.lang.Object r8 = r8.d(r7)
                if (r8 != r0) goto L_0x0055
                return r0
            L_0x0055:
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.p.I r8 = r8.r
                r8.c()
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.e.d.a.a r8 = r8.f6958l
                r7.label = r2
                java.lang.Object r8 = r8.b((h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>>) r7)
                if (r8 != r0) goto L_0x0071
                return r0
            L_0x0071:
                com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
                boolean r0 = r8 instanceof com.farsitel.bazaar.data.entity.Either.Success
                if (r0 == 0) goto L_0x0097
                com.farsitel.bazaar.data.entity.Either$Success r8 = (com.farsitel.bazaar.data.entity.Either.Success) r8
                java.lang.Object r8 = r8.getValue()
                com.farsitel.bazaar.data.entity.None r8 = (com.farsitel.bazaar.data.entity.None) r8
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                b.r.t r8 = r8.f6957k
                com.farsitel.bazaar.core.model.Resource r6 = new com.farsitel.bazaar.core.model.Resource
                com.farsitel.bazaar.core.model.ResourceState$Success r1 = com.farsitel.bazaar.core.model.ResourceState.Success.f12179a
                r2 = 0
                r3 = 0
                r4 = 6
                r5 = 0
                r0 = r6
                r0.<init>(r1, r2, r3, r4, r5)
                r8.a(r6)
                goto L_0x00b7
            L_0x0097:
                boolean r0 = r8 instanceof com.farsitel.bazaar.data.entity.Either.Failure
                if (r0 == 0) goto L_0x00c5
                com.farsitel.bazaar.data.entity.Either$Failure r8 = (com.farsitel.bazaar.data.entity.Either.Failure) r8
                com.farsitel.bazaar.data.entity.ErrorModel r3 = r8.getError()
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                b.r.t r8 = r8.f6957k
                com.farsitel.bazaar.core.model.Resource r6 = new com.farsitel.bazaar.core.model.Resource
                com.farsitel.bazaar.core.model.ResourceState$Error r1 = com.farsitel.bazaar.core.model.ResourceState.Error.f12177a
                r2 = 0
                r4 = 2
                r5 = 0
                r0 = r6
                r0.<init>(r1, r2, r3, r4, r5)
                r8.a(r6)
            L_0x00b7:
                com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1 r8 = r7.this$0
                c.c.a.n.t.h r8 = r8.this$0
                c.c.a.d.c.b r8 = r8.m
                r8.g()
                h.h r8 = h.h.f14579a
                return r8
            L_0x00c5:
                kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
                r8.<init>()
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.profile.ProfileViewModel$logout$1.AnonymousClass1.d(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ProfileViewModel$logout$1(c.c.a.n.t.h hVar, b bVar) {
        super(2, bVar);
        this.this$0 = hVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        ProfileViewModel$logout$1 profileViewModel$logout$1 = new ProfileViewModel$logout$1(this.this$0, bVar);
        profileViewModel$logout$1.p$ = (H) obj;
        return profileViewModel$logout$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((ProfileViewModel$logout$1) a(obj, (b) obj2)).d(h.f14579a);
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
