package j.a.c;

import j.C;
import j.C1152t;
import j.D;
import j.L;
import j.P;
import j.a.e;
import j.r;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import okio.ByteString;

/* compiled from: HttpHeaders */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteString f15357a = ByteString.d("\"\\");

    /* renamed from: b  reason: collision with root package name */
    public static final ByteString f15358b = ByteString.d("\t ,=");

    public static long a(P p) {
        return a(p.x());
    }

    public static boolean b(C c2) {
        return c(c2).contains("*");
    }

    public static boolean c(P p) {
        return b(p.x());
    }

    public static Set<String> d(P p) {
        return c(p.x());
    }

    public static C e(P p) {
        return a(p.A().F().c(), p.x());
    }

    public static long a(C c2) {
        return a(c2.b("Content-Length"));
    }

    public static boolean b(P p) {
        if (p.F().e().equals("HEAD")) {
            return false;
        }
        int v = p.v();
        if (((v >= 100 && v < 200) || v == 204 || v == 304) && a(p) == -1 && !"chunked".equalsIgnoreCase(p.e("Transfer-Encoding"))) {
            return false;
        }
        return true;
    }

    public static Set<String> c(C c2) {
        Set<String> emptySet = Collections.emptySet();
        int b2 = c2.b();
        Set<String> set = emptySet;
        for (int i2 = 0; i2 < b2; i2++) {
            if ("Vary".equalsIgnoreCase(c2.a(i2))) {
                String b3 = c2.b(i2);
                if (set.isEmpty()) {
                    set = new TreeSet<>(String.CASE_INSENSITIVE_ORDER);
                }
                for (String trim : b3.split(",")) {
                    set.add(trim.trim());
                }
            }
        }
        return set;
    }

    public static long a(String str) {
        long j2 = -1;
        if (str == null) {
            return -1;
        }
        try {
            j2 = Long.parseLong(str);
        } catch (NumberFormatException unused) {
        }
        return j2;
    }

    public static boolean a(P p, C c2, L l2) {
        for (String next : d(p)) {
            if (!e.a((Object) c2.c(next), (Object) l2.b(next))) {
                return false;
            }
        }
        return true;
    }

    public static C a(C c2, C c3) {
        Set<String> c4 = c(c3);
        if (c4.isEmpty()) {
            return new C.a().a();
        }
        C.a aVar = new C.a();
        int b2 = c2.b();
        for (int i2 = 0; i2 < b2; i2++) {
            String a2 = c2.a(i2);
            if (c4.contains(a2)) {
                aVar.a(a2, c2.b(i2));
            }
        }
        return aVar.a();
    }

    public static int b(String str, int i2) {
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (charAt != ' ' && charAt != 9) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public static void a(C1152t tVar, D d2, C c2) {
        if (tVar != C1152t.f15709a) {
            List<r> a2 = r.a(d2, c2);
            if (!a2.isEmpty()) {
                tVar.a(d2, a2);
            }
        }
    }

    public static int a(String str, int i2, String str2) {
        while (i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            i2++;
        }
        return i2;
    }

    public static int a(String str, int i2) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            i2 = (int) parseLong;
            return i2;
        } catch (NumberFormatException unused) {
        }
    }
}
