package kotlinx.coroutines.internal;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import i.a.La;
import kotlin.jvm.internal.Lambda;

/* compiled from: ThreadContext.kt */
final class ThreadContextKt$findOne$1 extends Lambda implements c<La<?>, e.b, La<?>> {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadContextKt$findOne$1 f15800a = new ThreadContextKt$findOne$1();

    public ThreadContextKt$findOne$1() {
        super(2);
    }

    /* renamed from: a */
    public final La<?> b(La<?> la, e.b bVar) {
        j.b(bVar, "element");
        if (la != null) {
            return la;
        }
        if (!(bVar instanceof La)) {
            bVar = null;
        }
        return (La) bVar;
    }
}
