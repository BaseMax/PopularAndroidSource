package kotlin.coroutines;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: CoroutineContextImpl.kt */
final class CombinedContext$toString$1 extends Lambda implements c<String, e.b, String> {

    /* renamed from: a  reason: collision with root package name */
    public static final CombinedContext$toString$1 f15782a = new CombinedContext$toString$1();

    public CombinedContext$toString$1() {
        super(2);
    }

    /* renamed from: a */
    public final String b(String str, e.b bVar) {
        j.b(str, "acc");
        j.b(bVar, "element");
        if (str.length() == 0) {
            return bVar.toString();
        }
        return str + ", " + bVar;
    }
}
