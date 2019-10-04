package com.farsitel.bazaar.work;

import androidx.work.ListenableWorker;
import c.c.a.e.d.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.RegisterDeviceWorker$registerDevice$1", f = "RegisterDeviceWorker.kt", l = {25}, m = "invokeSuspend")
/* compiled from: RegisterDeviceWorker.kt */
final class RegisterDeviceWorker$registerDevice$1 extends SuspendLambda implements c<H, b<? super ListenableWorker.a>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ RegisterDeviceWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RegisterDeviceWorker$registerDevice$1(RegisterDeviceWorker registerDeviceWorker, b bVar) {
        super(2, bVar);
        this.this$0 = registerDeviceWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        RegisterDeviceWorker$registerDevice$1 registerDeviceWorker$registerDevice$1 = new RegisterDeviceWorker$registerDevice$1(this.this$0, bVar);
        registerDeviceWorker$registerDevice$1.p$ = (H) obj;
        return registerDeviceWorker$registerDevice$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((RegisterDeviceWorker$registerDevice$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        ListenableWorker.a aVar;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f12477h;
            String k2 = this.this$0.f12478i.k();
            String l2 = this.this$0.f12478i.l();
            this.label = 1;
            if (a3.a(k2, l2, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            try {
                e.a(obj);
            } catch (Exception e2) {
                c.c.a.c.c.a.f4699b.a(new Throwable("Unable to register device.", e2));
                aVar = ListenableWorker.a.a();
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        aVar = ListenableWorker.a.c();
        return aVar;
    }
}
