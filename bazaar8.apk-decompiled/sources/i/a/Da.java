package i.a;

import h.f.b.j;
import i.a.c.i;
import i.a.c.k;
import kotlin.TypeCastException;

/* compiled from: JobSupport.kt */
public final class Da extends i implements C1116ma {
    public final String a(String str) {
        j.b(str, "state");
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        Object e2 = e();
        if (e2 != null) {
            boolean z = true;
            for (k kVar = (k) e2; !j.a((Object) kVar, (Object) this); kVar = kVar.g()) {
                if (kVar instanceof wa) {
                    wa waVar = (wa) kVar;
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(waVar);
                }
            }
            sb.append("]");
            String sb2 = sb.toString();
            j.a((Object) sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    public Da b() {
        return this;
    }

    public boolean s() {
        return true;
    }

    public String toString() {
        return K.c() ? a("Active") : super.toString();
    }
}
