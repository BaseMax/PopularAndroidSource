package kotlinx.coroutines.internal;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import i.a.La;
import i.a.c.C;
import kotlin.jvm.internal.Lambda;

/* compiled from: ThreadContext.kt */
final class ThreadContextKt$restoreState$1 extends Lambda implements c<C, e.b, C> {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadContextKt$restoreState$1 f15801a = new ThreadContextKt$restoreState$1();

    public ThreadContextKt$restoreState$1() {
        super(2);
    }

    /* renamed from: a */
    public final C b(C c2, e.b bVar) {
        j.b(c2, "state");
        j.b(bVar, "element");
        if (bVar instanceof La) {
            ((La) bVar).a(c2.a(), c2.c());
        }
        return c2;
    }
}
