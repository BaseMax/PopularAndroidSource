package h.j;

import h.a.l;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;

/* compiled from: _Sequences.kt */
public class o extends l {
    public static final <T> d<T> a(d<? extends T> dVar, b<? super T, Boolean> bVar) {
        j.b(dVar, "$this$filter");
        j.b(bVar, "predicate");
        return new c(dVar, true, bVar);
    }

    public static final <T, R> d<R> b(d<? extends T> dVar, b<? super T, ? extends R> bVar) {
        j.b(dVar, "$this$map");
        j.b(bVar, "transform");
        return new q(dVar, bVar);
    }

    public static final <T> List<T> c(d<? extends T> dVar) {
        j.b(dVar, "$this$toList");
        return l.b(d(dVar));
    }

    public static final <T> List<T> d(d<? extends T> dVar) {
        j.b(dVar, "$this$toMutableList");
        ArrayList arrayList = new ArrayList();
        a(dVar, arrayList);
        return arrayList;
    }

    public static final <T> d<T> a(d<? extends T> dVar, Comparator<? super T> comparator) {
        j.b(dVar, "$this$sortedWith");
        j.b(comparator, "comparator");
        return new n(dVar, comparator);
    }

    public static final <T> Iterable<T> b(d<? extends T> dVar) {
        j.b(dVar, "$this$asIterable");
        return new m(dVar);
    }

    public static final <T, C extends Collection<? super T>> C a(d<? extends T> dVar, C c2) {
        j.b(dVar, "$this$toCollection");
        j.b(c2, "destination");
        for (Object add : dVar) {
            c2.add(add);
        }
        return c2;
    }

    public static final <T, A extends Appendable> A a(d<? extends T> dVar, A a2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b<? super T, ? extends CharSequence> bVar) {
        j.b(dVar, "$this$joinTo");
        j.b(a2, "buffer");
        j.b(charSequence, "separator");
        j.b(charSequence2, "prefix");
        j.b(charSequence3, "postfix");
        j.b(charSequence4, "truncated");
        a2.append(charSequence2);
        int i3 = 0;
        for (Object next : dVar) {
            i3++;
            if (i3 > 1) {
                a2.append(charSequence);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            h.k.j.a(a2, next, bVar);
        }
        if (i2 >= 0 && i3 > i2) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    public static /* synthetic */ String a(d dVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b bVar, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = "";
        CharSequence charSequence6 = (i3 & 2) != 0 ? charSequence5 : charSequence2;
        if ((i3 & 4) == 0) {
            charSequence5 = charSequence3;
        }
        int i4 = (i3 & 8) != 0 ? -1 : i2;
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i3 & 32) != 0) {
            bVar = null;
        }
        return a(dVar, charSequence, charSequence6, charSequence5, i4, charSequence7, bVar);
    }

    public static final <T> String a(d<? extends T> dVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b<? super T, ? extends CharSequence> bVar) {
        j.b(dVar, "$this$joinToString");
        j.b(charSequence, "separator");
        j.b(charSequence2, "prefix");
        j.b(charSequence3, "postfix");
        j.b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        a(dVar, sb, charSequence, charSequence2, charSequence3, i2, charSequence4, bVar);
        String sb2 = sb.toString();
        j.a((Object) sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }
}
