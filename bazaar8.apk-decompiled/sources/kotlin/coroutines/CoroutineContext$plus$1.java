package kotlin.coroutines;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: CoroutineContext.kt */
final class CoroutineContext$plus$1 extends Lambda implements c<e, e.b, e> {

    /* renamed from: a  reason: collision with root package name */
    public static final CoroutineContext$plus$1 f15783a = new CoroutineContext$plus$1();

    public CoroutineContext$plus$1() {
        super(2);
    }

    /* renamed from: a */
    public final e b(e eVar, e.b bVar) {
        j.b(eVar, "acc");
        j.b(bVar, "element");
        e minusKey = eVar.minusKey(bVar.getKey());
        if (minusKey == EmptyCoroutineContext.f15784a) {
            return bVar;
        }
        h.c.c cVar = (h.c.c) minusKey.get(h.c.c.f14536c);
        if (cVar == null) {
            return new CombinedContext(minusKey, bVar);
        }
        e minusKey2 = minusKey.minusKey(h.c.c.f14536c);
        if (minusKey2 == EmptyCoroutineContext.f15784a) {
            return new CombinedContext(bVar, cVar);
        }
        return new CombinedContext(new CombinedContext(minusKey2, bVar), cVar);
    }
}
