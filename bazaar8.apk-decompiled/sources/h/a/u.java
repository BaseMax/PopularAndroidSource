package h.a;

import h.f.a.b;
import h.f.b.j;
import h.j.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.TypeCastException;

/* compiled from: _Collections.kt */
public class u extends s {
    public static final <T> List<T> a(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        j.b(iterable, "$this$sortedWith");
        j.b(comparator, "comparator");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return h(iterable);
            }
            Object[] array = collection.toArray(new Object[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } else if (array != null) {
                h.a((T[]) array, comparator);
                return h.a(array);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else {
            List<T> i2 = i(iterable);
            p.a(i2, comparator);
            return i2;
        }
    }

    public static final <T> T b(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$first");
        if (iterable instanceof List) {
            return f((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T c(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$firstOrNull");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        return it.next();
    }

    public static final <T> List<T> d(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$reversed");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return h(iterable);
        }
        List<T> i2 = i(iterable);
        s.e(i2);
        return i2;
    }

    public static final <T> T e(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$single");
        if (iterable instanceof List) {
            return j((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            if (!it.hasNext()) {
                return next;
            }
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T f(List<? extends T> list) {
        j.b(list, "$this$first");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T> T g(List<? extends T> list) {
        j.b(list, "$this$firstOrNull");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> T h(List<? extends T> list) {
        j.b(list, "$this$last");
        if (!list.isEmpty()) {
            return list.get(l.a(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T> T i(List<? extends T> list) {
        j.b(list, "$this$lastOrNull");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static final <T> T j(List<? extends T> list) {
        j.b(list, "$this$single");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        } else if (size == 1) {
            return list.get(0);
        } else {
            throw new IllegalArgumentException("List has more than one element.");
        }
    }

    public static final <T> Set<T> k(Iterable<? extends T> iterable) {
        Set<T> set;
        j.b(iterable, "$this$toSet");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                set = D.a();
            } else if (size != 1) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(A.a(collection.size()));
                a(iterable, linkedHashSet);
                set = linkedHashSet;
            } else {
                set = C.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            }
            return set;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        a(iterable, linkedHashSet2);
        return D.a(linkedHashSet2);
    }

    public static final long g(Iterable<Long> iterable) {
        j.b(iterable, "$this$sum");
        long j2 = 0;
        for (Long longValue : iterable) {
            j2 += longValue.longValue();
        }
        return j2;
    }

    public static final <T> List<T> i(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$toMutableList");
        if (iterable instanceof Collection) {
            return a((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        a(iterable, arrayList);
        return arrayList;
    }

    public static final <T extends Comparable<? super T>> List<T> f(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$sorted");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return h(iterable);
            }
            Object[] array = collection.toArray(new Comparable[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } else if (array != null) {
                Comparable[] comparableArr = (Comparable[]) array;
                if (comparableArr != null) {
                    h.b(comparableArr);
                    return h.a(comparableArr);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else {
            List<T> i2 = i(iterable);
            p.c(i2);
            return i2;
        }
    }

    public static final <T> List<T> h(Iterable<? extends T> iterable) {
        List<T> list;
        j.b(iterable, "$this$toList");
        if (!(iterable instanceof Collection)) {
            return l.b(i(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            list = l.a();
        } else if (size != 1) {
            list = a(collection);
        } else {
            list = k.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        return list;
    }

    public static final <T> Set<T> j(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$toMutableSet");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static final <T> List<T> b(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        j.b(collection, "$this$plus");
        j.b(iterable, "elements");
        if (iterable instanceof Collection) {
            Collection collection2 = (Collection) iterable;
            ArrayList arrayList = new ArrayList(collection.size() + collection2.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        q.a(arrayList2, iterable);
        return arrayList2;
    }

    public static final <T, C extends Collection<? super T>> C a(Iterable<? extends T> iterable, C c2) {
        j.b(iterable, "$this$toCollection");
        j.b(c2, "destination");
        for (Object add : iterable) {
            c2.add(add);
        }
        return c2;
    }

    public static final <T> T c(List<? extends T> list, int i2) {
        j.b(list, "$this$getOrNull");
        if (i2 < 0 || i2 > l.a(list)) {
            return null;
        }
        return list.get(i2);
    }

    public static final <T> List<T> a(Collection<? extends T> collection) {
        j.b(collection, "$this$toMutableList");
        return new ArrayList(collection);
    }

    public static /* synthetic */ Appendable a(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b bVar, int i3, Object obj) {
        CharSequence charSequence5 = (i3 & 2) != 0 ? ", " : charSequence;
        CharSequence charSequence6 = "";
        CharSequence charSequence7 = (i3 & 4) != 0 ? charSequence6 : charSequence2;
        if ((i3 & 8) == 0) {
            charSequence6 = charSequence3;
        }
        a(iterable, appendable, charSequence5, charSequence7, charSequence6, (i3 & 16) != 0 ? -1 : i2, (i3 & 32) != 0 ? "..." : charSequence4, (i3 & 64) != 0 ? null : bVar);
        return appendable;
    }

    public static final <T, A extends Appendable> A a(Iterable<? extends T> iterable, A a2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b<? super T, ? extends CharSequence> bVar) {
        j.b(iterable, "$this$joinTo");
        j.b(a2, "buffer");
        j.b(charSequence, "separator");
        j.b(charSequence2, "prefix");
        j.b(charSequence3, "postfix");
        j.b(charSequence4, "truncated");
        a2.append(charSequence2);
        int i3 = 0;
        for (Object next : iterable) {
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

    public static /* synthetic */ String a(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b bVar, int i3, Object obj) {
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
        return a(iterable, charSequence, charSequence6, charSequence5, i4, charSequence7, bVar);
    }

    public static final <T> String a(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b<? super T, ? extends CharSequence> bVar) {
        j.b(iterable, "$this$joinToString");
        j.b(charSequence, "separator");
        j.b(charSequence2, "prefix");
        j.b(charSequence3, "postfix");
        j.b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        a(iterable, sb, charSequence, charSequence2, charSequence3, i2, charSequence4, bVar);
        String sb2 = sb.toString();
        j.a((Object) sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    public static final <T> d<T> a(Iterable<? extends T> iterable) {
        j.b(iterable, "$this$asSequence");
        return new t(iterable);
    }
}
