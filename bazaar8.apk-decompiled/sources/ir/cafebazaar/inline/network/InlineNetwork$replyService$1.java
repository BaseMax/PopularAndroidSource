package ir.cafebazaar.inline.network;

import com.farsitel.bazaar.common.model.inline.InlineRelayService;
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

@d(c = "ir.cafebazaar.inline.network.InlineNetwork$replyService$1", f = "InlineNetwork.kt", l = {41}, m = "invokeSuspend")
/* compiled from: InlineNetwork.kt */
final class InlineNetwork$replyService$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ f.a.a.c.b $callback;
    public final /* synthetic */ InlineRelayService $payload;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    @d(c = "ir.cafebazaar.inline.network.InlineNetwork$replyService$1$1", f = "InlineNetwork.kt", l = {41}, m = "invokeSuspend")
    /* renamed from: ir.cafebazaar.inline.network.InlineNetwork$replyService$1$1  reason: invalid class name */
    /* compiled from: InlineNetwork.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends String>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ InlineNetwork$replyService$1 this$0;

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
                InlineRelayService inlineRelayService = this.this$0.$payload;
                this.label = 1;
                obj = a3.a(inlineRelayService, (b<? super Either<String>>) this);
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
    public InlineNetwork$replyService$1(a aVar, InlineRelayService inlineRelayService, f.a.a.c.b bVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = aVar;
        this.$payload = inlineRelayService;
        this.$callback = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        InlineNetwork$replyService$1 inlineNetwork$replyService$1 = new InlineNetwork$replyService$1(this.this$0, this.$payload, this.$callback, bVar);
        inlineNetwork$replyService$1.p$ = (H) obj;
        return inlineNetwork$replyService$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((InlineNetwork$replyService$1) a(obj, (b) obj2)).d(h.f14579a);
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
            this.$callback.a((String) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            this.$callback.a(((Either.Failure) either).getError().getMessage());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
