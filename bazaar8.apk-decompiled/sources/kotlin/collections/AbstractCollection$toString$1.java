package kotlin.collections;

import h.a.C1084a;
import h.f.a.b;
import kotlin.jvm.internal.Lambda;

/* compiled from: AbstractCollection.kt */
final class AbstractCollection$toString$1 extends Lambda implements b<E, CharSequence> {
    public final /* synthetic */ C1084a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AbstractCollection$toString$1(C1084a aVar) {
        super(1);
        this.this$0 = aVar;
    }

    public final CharSequence a(E e2) {
        return e2 == this.this$0 ? "(this Collection)" : String.valueOf(e2);
    }
}
