package ir.cafebazaar.inline.network;

import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import com.farsitel.bazaar.data.entity.Either;
import f.a.a.c.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "ir.cafebazaar.inline.network.InlineNetwork$getInlineAppInfo$1", f = "InlineNetwork.kt", l = {21}, m = "invokeSuspend")
/* compiled from: InlineNetwork.kt */
final class InlineNetwork$getInlineAppInfo$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ f.a.a.c.b $callback;
    public final /* synthetic */ String $kashanId;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    @d(c = "ir.cafebazaar.inline.network.InlineNetwork$getInlineAppInfo$1$1", f = "InlineNetwork.kt", l = {21}, m = "invokeSuspend")
    /* renamed from: ir.cafebazaar.inline.network.InlineNetwork$getInlineAppInfo$1$1  reason: invalid class name */
    /* compiled from: InlineNetwork.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends InlineAppInfo>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ InlineNetwork$getInlineAppInfo$1 this$0;

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
                c.c.a.e.d.k.c a3 = this.this$0.this$0.f13943b;
                String str = this.this$0.$kashanId;
                this.label = 1;
                obj = a3.a(str, (b<? super Either<InlineAppInfo>>) this);
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
    public InlineNetwork$getInlineAppInfo$1(a aVar, String str, f.a.a.c.b bVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = aVar;
        this.$kashanId = str;
        this.$callback = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        InlineNetwork$getInlineAppInfo$1 inlineNetwork$getInlineAppInfo$1 = new InlineNetwork$getInlineAppInfo$1(this.this$0, this.$kashanId, this.$callback, bVar);
        inlineNetwork$getInlineAppInfo$1.p$ = (H) obj;
        return inlineNetwork$getInlineAppInfo$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((InlineNetwork$getInlineAppInfo$1) a(obj, (b) obj2)).d(h.f14579a);
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
        if (either instanceof Either.Success) {
            this.$callback.a((InlineAppInfo) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            this.$callback.a(((Either.Failure) either).getError().getMessage());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
