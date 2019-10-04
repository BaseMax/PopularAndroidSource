package h.k;

import h.f.a.b;

/* compiled from: StringBuilder.kt */
public class j extends i {
    public static final <T> void a(Appendable appendable, T t, b<? super T, ? extends CharSequence> bVar) {
        h.f.b.j.b(appendable, "$this$appendElement");
        if (bVar != null) {
            appendable.append((CharSequence) bVar.a(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }
}
