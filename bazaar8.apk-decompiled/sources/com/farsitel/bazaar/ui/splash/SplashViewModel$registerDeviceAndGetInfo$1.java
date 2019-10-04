package com.farsitel.bazaar.ui.splash;

import b.r.t;
import c.c.a.e.d.a.a;
import c.c.a.e.g.f;
import c.c.a.n.y.e;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.splash.SplashViewModel$registerDeviceAndGetInfo$1", f = "SplashViewModel.kt", l = {37}, m = "invokeSuspend")
/* compiled from: SplashViewModel.kt */
final class SplashViewModel$registerDeviceAndGetInfo$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ e this$0;

    @d(c = "com.farsitel.bazaar.ui.splash.SplashViewModel$registerDeviceAndGetInfo$1$1", f = "SplashViewModel.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.splash.SplashViewModel$registerDeviceAndGetInfo$1$1  reason: invalid class name */
    /* compiled from: SplashViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends f>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SplashViewModel$registerDeviceAndGetInfo$1 this$0;

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
                h.e.a(obj);
                H h2 = this.p$;
                a a3 = this.this$0.this$0.f7098f;
                String k2 = this.this$0.this$0.f7097e.k();
                String l2 = this.this$0.this$0.f7097e.l();
                this.label = 1;
                obj = a3.a(k2, l2, this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                h.e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SplashViewModel$registerDeviceAndGetInfo$1(e eVar, b bVar) {
        super(2, bVar);
        this.this$0 = eVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SplashViewModel$registerDeviceAndGetInfo$1 splashViewModel$registerDeviceAndGetInfo$1 = new SplashViewModel$registerDeviceAndGetInfo$1(this.this$0, bVar);
        splashViewModel$registerDeviceAndGetInfo$1.p$ = (H) obj;
        return splashViewModel$registerDeviceAndGetInfo$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SplashViewModel$registerDeviceAndGetInfo$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            h.e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r8 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r8, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            h.e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        if (either instanceof Either.Success) {
            f fVar = (f) ((Either.Success) either).getValue();
            t b2 = this.this$0.f7096d;
            Resource resource = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
            b2.b(resource);
            this.this$0.f7098f.A();
        } else if (either instanceof Either.Failure) {
            ErrorModel error = ((Either.Failure) either).getError();
            t b3 = this.this$0.f7096d;
            Resource resource2 = new Resource(ResourceState.Error.f12177a, null, error, 2, null);
            b3.b(resource2);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
