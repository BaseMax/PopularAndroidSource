package h.k;

import h.a.h;
import h.a.i;
import h.a.k;
import h.a.m;
import h.a.u;
import h.f;
import h.f.b.j;
import h.h.b;
import h.h.d;
import h.h.g;
import h.j.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

/* compiled from: Strings.kt */
public class n extends m {
    public static final d b(CharSequence charSequence) {
        j.b(charSequence, "$this$indices");
        return new d(0, charSequence.length() - 1);
    }

    public static final int c(CharSequence charSequence) {
        j.b(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    public static final h.j.d<String> d(CharSequence charSequence) {
        j.b(charSequence, "$this$lineSequence");
        return b(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, (Object) null);
    }

    public static final List<String> e(CharSequence charSequence) {
        j.b(charSequence, "$this$lines");
        return o.c(d(charSequence));
    }

    public static final CharSequence f(CharSequence charSequence) {
        j.b(charSequence, "$this$trim");
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z = false;
        while (i2 <= length) {
            boolean a2 = a.a(charSequence.charAt(!z ? i2 : length));
            if (!z) {
                if (!a2) {
                    z = true;
                } else {
                    i2++;
                }
            } else if (!a2) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }

    public static final String a(CharSequence charSequence, d dVar) {
        j.b(charSequence, "$this$substring");
        j.b(dVar, "range");
        return charSequence.subSequence(dVar.d().intValue(), dVar.c().intValue() + 1).toString();
    }

    public static /* synthetic */ String b(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return c(str, str2, str3);
    }

    public static final String c(String str, String str2, String str3) {
        j.b(str, "$this$substringBefore");
        j.b(str2, "delimiter");
        j.b(str3, "missingDelimiterValue");
        int a2 = a((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (a2 == -1) {
            return str3;
        }
        String substring = str.substring(0, a2);
        j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String a(String str, char c2, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return a(str, c2, str2);
    }

    public static final String b(String str, String str2, String str3) {
        j.b(str, "$this$substringAfter");
        j.b(str2, "delimiter");
        j.b(str3, "missingDelimiterValue");
        int a2 = a((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (a2 == -1) {
            return str3;
        }
        String substring = str.substring(a2 + str2.length(), str.length());
        j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String a(String str, char c2, String str2) {
        j.b(str, "$this$substringBefore");
        j.b(str2, "missingDelimiterValue");
        int a2 = a((CharSequence) str, c2, 0, false, 6, (Object) null);
        if (a2 == -1) {
            return str2;
        }
        String substring = str.substring(0, a2);
        j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final Pair<Integer, String> b(CharSequence charSequence, Collection<String> collection, int i2, boolean z, boolean z2) {
        T t;
        T t2;
        Pair<Integer, String> pair = null;
        if (z || collection.size() != 1) {
            b dVar = !z2 ? new d(g.a(i2, 0), charSequence.length()) : g.c(g.b(i2, c(charSequence)), 0);
            if (charSequence instanceof String) {
                int first = dVar.getFirst();
                int last = dVar.getLast();
                int a2 = dVar.a();
                if (a2 < 0 ? first >= last : first <= last) {
                    while (true) {
                        Iterator<T> it = collection.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                t2 = null;
                                break;
                            }
                            t2 = it.next();
                            String str = (String) t2;
                            if (m.a(str, 0, (String) charSequence, first, str.length(), z)) {
                                break;
                            }
                        }
                        String str2 = (String) t2;
                        if (str2 == null) {
                            if (first == last) {
                                break;
                            }
                            first += a2;
                        } else {
                            return f.a(Integer.valueOf(first), str2);
                        }
                    }
                }
            } else {
                int first2 = dVar.getFirst();
                int last2 = dVar.getLast();
                int a3 = dVar.a();
                if (a3 < 0 ? first2 >= last2 : first2 <= last2) {
                    while (true) {
                        Iterator<T> it2 = collection.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                t = null;
                                break;
                            }
                            t = it2.next();
                            String str3 = (String) t;
                            if (a((CharSequence) str3, 0, charSequence, first2, str3.length(), z)) {
                                break;
                            }
                        }
                        String str4 = (String) t;
                        if (str4 == null) {
                            if (first2 == last2) {
                                break;
                            }
                            first2 += a3;
                        } else {
                            return f.a(Integer.valueOf(first2), str4);
                        }
                    }
                }
            }
            return null;
        }
        String str5 = (String) u.e(collection);
        int a4 = !z2 ? a(charSequence, str5, i2, false, 4, (Object) null) : b(charSequence, str5, i2, false, 4, (Object) null);
        if (a4 >= 0) {
            pair = f.a(Integer.valueOf(a4), str5);
        }
        return pair;
    }

    public static /* synthetic */ String a(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return b(str, str2, str3);
    }

    public static final boolean a(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4, boolean z) {
        j.b(charSequence, "$this$regionMatchesImpl");
        j.b(charSequence2, "other");
        if (i3 < 0 || i2 < 0 || i2 > charSequence.length() - i4 || i3 > charSequence2.length() - i4) {
            return false;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            if (!b.a(charSequence.charAt(i2 + i5), charSequence2.charAt(i3 + i5), z)) {
                return false;
            }
        }
        return true;
    }

    public static final int a(CharSequence charSequence, char[] cArr, int i2, boolean z) {
        boolean z2;
        j.b(charSequence, "$this$indexOfAny");
        j.b(cArr, "chars");
        if (z || cArr.length != 1 || !(charSequence instanceof String)) {
            int a2 = g.a(i2, 0);
            int c2 = c(charSequence);
            if (a2 <= c2) {
                while (true) {
                    char charAt = charSequence.charAt(a2);
                    int length = cArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            z2 = false;
                            break;
                        } else if (b.a(cArr[i3], charAt, z)) {
                            z2 = true;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (!z2) {
                        if (a2 == c2) {
                            break;
                        }
                        a2++;
                    } else {
                        return a2;
                    }
                }
            }
            return -1;
        }
        return ((String) charSequence).indexOf(i.a(cArr), i2);
    }

    public static /* synthetic */ int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2, int i4, Object obj) {
        return a(charSequence, charSequence2, i2, i3, z, (i4 & 16) != 0 ? false : z2);
    }

    public static final int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2) {
        b bVar;
        if (!z2) {
            bVar = new d(g.a(i2, 0), g.b(i3, charSequence.length()));
        } else {
            bVar = g.c(g.b(i2, c(charSequence)), g.a(i3, 0));
        }
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int first = bVar.getFirst();
            int last = bVar.getLast();
            int a2 = bVar.a();
            if (a2 < 0 ? first >= last : first <= last) {
                while (true) {
                    if (!a(charSequence2, 0, charSequence, first, charSequence2.length(), z)) {
                        if (first == last) {
                            break;
                        }
                        first += a2;
                    } else {
                        return first;
                    }
                }
            }
        } else {
            int first2 = bVar.getFirst();
            int last2 = bVar.getLast();
            int a3 = bVar.a();
            if (a3 < 0 ? first2 >= last2 : first2 <= last2) {
                while (true) {
                    if (!m.a((String) charSequence2, 0, (String) charSequence, first2, charSequence2.length(), z)) {
                        if (first2 == last2) {
                            break;
                        }
                        first2 += a3;
                    } else {
                        return first2;
                    }
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ int b(CharSequence charSequence, String str, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = c(charSequence);
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return b(charSequence, str, i2, z);
    }

    public static final int b(CharSequence charSequence, String str, int i2, boolean z) {
        j.b(charSequence, "$this$lastIndexOf");
        j.b(str, "string");
        if (z || !(charSequence instanceof String)) {
            return a(charSequence, (CharSequence) str, i2, 0, z, true);
        }
        return ((String) charSequence).lastIndexOf(str, i2);
    }

    public static /* synthetic */ h.j.d b(CharSequence charSequence, String[] strArr, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return b(charSequence, strArr, z, i2);
    }

    public static /* synthetic */ int a(CharSequence charSequence, char c2, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return a(charSequence, c2, i2, z);
    }

    public static final h.j.d<String> b(CharSequence charSequence, String[] strArr, boolean z, int i2) {
        j.b(charSequence, "$this$splitToSequence");
        j.b(strArr, "delimiters");
        return o.b(a(charSequence, strArr, 0, z, i2, 2, (Object) null), new StringsKt__StringsKt$splitToSequence$1(charSequence));
    }

    public static final int a(CharSequence charSequence, char c2, int i2, boolean z) {
        j.b(charSequence, "$this$indexOf");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(c2, i2);
        }
        return a(charSequence, new char[]{c2}, i2, z);
    }

    public static /* synthetic */ int a(CharSequence charSequence, String str, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return a(charSequence, str, i2, z);
    }

    public static final int a(CharSequence charSequence, String str, int i2, boolean z) {
        j.b(charSequence, "$this$indexOf");
        j.b(str, "string");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i2);
        }
        return a(charSequence, str, i2, charSequence.length(), z, false, 16, null);
    }

    public static /* synthetic */ boolean a(CharSequence charSequence, CharSequence charSequence2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return a(charSequence, charSequence2, z);
    }

    public static final boolean a(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        j.b(charSequence, "$this$contains");
        j.b(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (a(charSequence, (String) charSequence2, 0, z, 2, (Object) null) >= 0) {
                return true;
            }
        } else {
            if (a(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= 0) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ h.j.d a(CharSequence charSequence, char[] cArr, int i2, boolean z, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z = false;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        return a(charSequence, cArr, i2, z, i3);
    }

    public static final h.j.d<d> a(CharSequence charSequence, char[] cArr, int i2, boolean z, int i3) {
        if (i3 >= 0) {
            return new e(charSequence, i2, i3, new StringsKt__StringsKt$rangesDelimitedBy$2(cArr, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i3 + '.').toString());
    }

    public static /* synthetic */ h.j.d a(CharSequence charSequence, String[] strArr, int i2, boolean z, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z = false;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        return a(charSequence, strArr, i2, z, i3);
    }

    public static final h.j.d<d> a(CharSequence charSequence, String[] strArr, int i2, boolean z, int i3) {
        if (i3 >= 0) {
            return new e(charSequence, i2, i3, new StringsKt__StringsKt$rangesDelimitedBy$4(h.a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i3 + '.').toString());
    }

    public static /* synthetic */ List a(CharSequence charSequence, String[] strArr, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return a(charSequence, strArr, z, i2);
    }

    public static final List<String> a(CharSequence charSequence, String[] strArr, boolean z, int i2) {
        j.b(charSequence, "$this$split");
        j.b(strArr, "delimiters");
        if (strArr.length == 1) {
            boolean z2 = false;
            String str = strArr[0];
            if (str.length() == 0) {
                z2 = true;
            }
            if (!z2) {
                return a(charSequence, str, z, i2);
            }
        }
        Iterable<d> b2 = o.b(a(charSequence, strArr, 0, z, i2, 2, (Object) null));
        ArrayList arrayList = new ArrayList(m.a(b2, 10));
        for (d a2 : b2) {
            arrayList.add(a(charSequence, a2));
        }
        return arrayList;
    }

    public static /* synthetic */ List a(CharSequence charSequence, char[] cArr, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return a(charSequence, cArr, z, i2);
    }

    public static final List<String> a(CharSequence charSequence, char[] cArr, boolean z, int i2) {
        j.b(charSequence, "$this$split");
        j.b(cArr, "delimiters");
        if (cArr.length == 1) {
            return a(charSequence, String.valueOf(cArr[0]), z, i2);
        }
        Iterable<d> b2 = o.b(a(charSequence, cArr, 0, z, i2, 2, (Object) null));
        ArrayList arrayList = new ArrayList(m.a(b2, 10));
        for (d a2 : b2) {
            arrayList.add(a(charSequence, a2));
        }
        return arrayList;
    }

    public static final List<String> a(CharSequence charSequence, String str, boolean z, int i2) {
        int i3 = 0;
        if (i2 >= 0) {
            int a2 = a(charSequence, str, 0, z);
            if (a2 == -1 || i2 == 1) {
                return k.a(charSequence.toString());
            }
            boolean z2 = i2 > 0;
            int i4 = 10;
            if (z2) {
                i4 = g.b(i2, 10);
            }
            ArrayList arrayList = new ArrayList(i4);
            do {
                arrayList.add(charSequence.subSequence(i3, a2).toString());
                i3 = str.length() + a2;
                if (z2 && arrayList.size() == i2 - 1) {
                    break;
                }
                a2 = a(charSequence, str, i3, z);
            } while (a2 != -1);
            arrayList.add(charSequence.subSequence(i3, charSequence.length()).toString());
            return arrayList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }
}
