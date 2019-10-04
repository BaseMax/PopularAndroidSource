package i.a;

import h.e;
import h.f.b.j;
import kotlin.Result;

/* renamed from: i.a.w  reason: case insensitive filesystem */
/* compiled from: CompletedExceptionally.kt */
public final class C1130w {
    public static final <T> Object a(Object obj) {
        if (Result.e(obj)) {
            e.a(obj);
            return obj;
        }
        Throwable b2 = Result.b(obj);
        if (b2 != null) {
            return new C1129v(b2, false, 2, null);
        }
        j.a();
        throw null;
    }
}
