package com.farsitel.bazaar.ui.settings;

import c.c.a.n.x.a;
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

@d(c = "com.farsitel.bazaar.ui.settings.SettingViewModel$clearSearchHistory$1", f = "SettingViewModel.kt", l = {32}, m = "invokeSuspend")
/* compiled from: SettingViewModel.kt */
final class SettingViewModel$clearSearchHistory$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    @d(c = "com.farsitel.bazaar.ui.settings.SettingViewModel$clearSearchHistory$1$1", f = "SettingViewModel.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.settings.SettingViewModel$clearSearchHistory$1$1  reason: invalid class name */
    /* compiled from: SettingViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends None>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SettingViewModel$clearSearchHistory$1 this$0;

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
                c.c.a.e.d.s.c a3 = this.this$0.this$0.f7058e;
                this.label = 1;
                obj = a3.a(this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SettingViewModel$clearSearchHistory$1(a aVar, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SettingViewModel$clearSearchHistory$1 settingViewModel$clearSearchHistory$1 = new SettingViewModel$clearSearchHistory$1(this.this$0, bVar);
        settingViewModel$clearSearchHistory$1.p$ = (H) obj;
        return settingViewModel$clearSearchHistory$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SettingViewModel$clearSearchHistory$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        a aVar = this.this$0;
        if (either instanceof Either.Success) {
            aVar.a((None) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            aVar.a((Throwable) ((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
