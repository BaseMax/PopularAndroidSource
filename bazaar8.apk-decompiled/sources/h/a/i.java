package h.a;

import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: _Arrays.kt */
public class i extends h {
    public static final char a(char[] cArr) {
        j.b(cArr, "$this$single");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        } else if (length == 1) {
            return cArr[0];
        } else {
            throw new IllegalArgumentException("Array has more than one element.");
        }
    }

    public static final <T> boolean b(T[] tArr, T t) {
        j.b(tArr, "$this$contains");
        return c(tArr, t) >= 0;
    }

    public static final <T> int c(T[] tArr, T t) {
        j.b(tArr, "$this$indexOf");
        int i2 = 0;
        if (t == null) {
            int length = tArr.length;
            while (i2 < length) {
                if (tArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
        } else {
            int length2 = tArr.length;
            while (i2 < length2) {
                if (j.a((Object) t, (Object) tArr[i2])) {
                    return i2;
                }
                i2++;
            }
        }
        return -1;
    }

    public static final <T> List<T> d(T[] tArr) {
        j.b(tArr, "$this$toList");
        int length = tArr.length;
        if (length == 0) {
            return l.a();
        }
        if (length != 1) {
            return e(tArr);
        }
        return k.a(tArr[0]);
    }

    public static final <T> List<T> e(T[] tArr) {
        j.b(tArr, "$this$toMutableList");
        return new ArrayList(l.b(tArr));
    }

    public static final <T> T[] b(T[] tArr, Comparator<? super T> comparator) {
        j.b(tArr, "$this$sortedArrayWith");
        j.b(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] copyOf = Arrays.copyOf(tArr, tArr.length);
        j.a((Object) copyOf, "java.util.Arrays.copyOf(this, size)");
        h.a(copyOf, comparator);
        return copyOf;
    }

    public static final <T, A extends Appendable> A a(T[] tArr, A a2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b<? super T, ? extends CharSequence> bVar) {
        j.b(tArr, "$this$joinTo");
        j.b(a2, "buffer");
        j.b(charSequence, "separator");
        j.b(charSequence2, "prefix");
        j.b(charSequence3, "postfix");
        j.b(charSequence4, "truncated");
        a2.append(charSequence2);
        int i3 = 0;
        for (T t : tArr) {
            i3++;
            if (i3 > 1) {
                a2.append(charSequence);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            h.k.j.a(a2, t, bVar);
        }
        if (i2 >= 0 && i3 > i2) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    public static final <T> T c(T[] tArr) {
        j.b(tArr, "$this$singleOrNull");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final <T> List<T> c(T[] tArr, Comparator<? super T> comparator) {
        j.b(tArr, "$this$sortedWith");
        j.b(comparator, "comparator");
        return h.a(b(tArr, comparator));
    }

    public static /* synthetic */ String a(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b bVar, int i3, Object obj) {
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
        return a(objArr, charSequence, charSequence6, charSequence5, i4, charSequence7, bVar);
    }

    public static final <T> String a(T[] tArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, b<? super T, ? extends CharSequence> bVar) {
        j.b(tArr, "$this$joinToString");
        j.b(charSequence, "separator");
        j.b(charSequence2, "prefix");
        j.b(charSequence3, "postfix");
        j.b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        a(tArr, sb, charSequence, charSequence2, charSequence3, i2, charSequence4, bVar);
        String sb2 = sb.toString();
        j.a((Object) sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }
}
