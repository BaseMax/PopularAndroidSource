package c.e.a.a.k.h;

import android.text.TextUtils;
import c.e.a.a.o.C0740h;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: CssParser */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f9245a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: b  reason: collision with root package name */
    public final v f9246b = new v();

    /* renamed from: c  reason: collision with root package name */
    public final StringBuilder f9247c = new StringBuilder();

    public static void a(v vVar, d dVar, StringBuilder sb) {
        f(vVar);
        String a2 = a(vVar, sb);
        if (!"".equals(a2) && ":".equals(b(vVar, sb))) {
            f(vVar);
            String c2 = c(vVar, sb);
            if (c2 != null && !"".equals(c2)) {
                int c3 = vVar.c();
                String b2 = b(vVar, sb);
                if (!";".equals(b2)) {
                    if ("}".equals(b2)) {
                        vVar.e(c3);
                    }
                }
                if ("color".equals(a2)) {
                    dVar.b(C0740h.a(c2));
                } else if ("background-color".equals(a2)) {
                    dVar.a(C0740h.a(c2));
                } else if ("text-decoration".equals(a2)) {
                    if ("underline".equals(c2)) {
                        dVar.c(true);
                    }
                } else if ("font-family".equals(a2)) {
                    dVar.a(c2);
                } else if ("font-weight".equals(a2)) {
                    if ("bold".equals(c2)) {
                        dVar.a(true);
                    }
                } else if ("font-style".equals(a2) && "italic".equals(c2)) {
                    dVar.b(true);
                }
            }
        }
    }

    public static String b(v vVar, StringBuilder sb) {
        f(vVar);
        if (vVar.a() == 0) {
            return null;
        }
        String a2 = a(vVar, sb);
        if (!"".equals(a2)) {
            return a2;
        }
        return "" + ((char) vVar.u());
    }

    public static String d(v vVar, StringBuilder sb) {
        f(vVar);
        if (vVar.a() < 5 || !"::cue".equals(vVar.b(5))) {
            return null;
        }
        int c2 = vVar.c();
        String b2 = b(vVar, sb);
        if (b2 == null) {
            return null;
        }
        if ("{".equals(b2)) {
            vVar.e(c2);
            return "";
        }
        String d2 = "(".equals(b2) ? d(vVar) : null;
        String b3 = b(vVar, sb);
        if (!")".equals(b3) || b3 == null) {
            return null;
        }
        return d2;
    }

    public static void e(v vVar) {
        do {
        } while (!TextUtils.isEmpty(vVar.k()));
    }

    public static void f(v vVar) {
        while (true) {
            boolean z = true;
            while (vVar.a() > 0 && z) {
                if (!b(vVar) && !a(vVar)) {
                    z = false;
                }
            }
            return;
        }
    }

    public d c(v vVar) {
        this.f9247c.setLength(0);
        int c2 = vVar.c();
        e(vVar);
        this.f9246b.a(vVar.f9634a, vVar.c());
        this.f9246b.e(c2);
        String d2 = d(this.f9246b, this.f9247c);
        if (d2 == null || !"{".equals(b(this.f9246b, this.f9247c))) {
            return null;
        }
        d dVar = new d();
        a(dVar, d2);
        String str = null;
        boolean z = false;
        while (!z) {
            int c3 = this.f9246b.c();
            str = b(this.f9246b, this.f9247c);
            boolean z2 = str == null || "}".equals(str);
            if (!z2) {
                this.f9246b.e(c3);
                a(this.f9246b, dVar, this.f9247c);
            }
            z = z2;
        }
        if ("}".equals(str)) {
            return dVar;
        }
        return null;
    }

    public static boolean b(v vVar) {
        char a2 = a(vVar, vVar.c());
        if (a2 != 9 && a2 != 10 && a2 != 12 && a2 != 13 && a2 != ' ') {
            return false;
        }
        vVar.f(1);
        return true;
    }

    public static String d(v vVar) {
        int c2 = vVar.c();
        int d2 = vVar.d();
        boolean z = false;
        while (c2 < d2 && !z) {
            int i2 = c2 + 1;
            z = ((char) vVar.f9634a[c2]) == ')';
            c2 = i2;
        }
        return vVar.b((c2 - 1) - vVar.c()).trim();
    }

    public static String c(v vVar, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int c2 = vVar.c();
            String b2 = b(vVar, sb);
            if (b2 == null) {
                return null;
            }
            if ("}".equals(b2) || ";".equals(b2)) {
                vVar.e(c2);
                z = true;
            } else {
                sb2.append(b2);
            }
        }
        return sb2.toString();
    }

    public static char a(v vVar, int i2) {
        return (char) vVar.f9634a[i2];
    }

    public static boolean a(v vVar) {
        int c2 = vVar.c();
        int d2 = vVar.d();
        byte[] bArr = vVar.f9634a;
        if (c2 + 2 <= d2) {
            int i2 = c2 + 1;
            if (bArr[c2] == 47) {
                int i3 = i2 + 1;
                if (bArr[i2] == 42) {
                    while (true) {
                        int i4 = i3 + 1;
                        if (i4 >= d2) {
                            vVar.f(d2 - vVar.c());
                            return true;
                        } else if (((char) bArr[i3]) == '*' && ((char) bArr[i4]) == '/') {
                            i3 = i4 + 1;
                            d2 = i3;
                        } else {
                            i3 = i4;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static String a(v vVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int c2 = vVar.c();
        int d2 = vVar.d();
        while (c2 < d2 && !z) {
            char c3 = (char) vVar.f9634a[c2];
            if ((c3 < 'A' || c3 > 'Z') && ((c3 < 'a' || c3 > 'z') && !((c3 >= '0' && c3 <= '9') || c3 == '#' || c3 == '-' || c3 == '.' || c3 == '_'))) {
                z = true;
            } else {
                c2++;
                sb.append(c3);
            }
        }
        vVar.f(c2 - vVar.c());
        return sb.toString();
    }

    public final void a(d dVar, String str) {
        if (!"".equals(str)) {
            int indexOf = str.indexOf(91);
            if (indexOf != -1) {
                Matcher matcher = f9245a.matcher(str.substring(indexOf));
                if (matcher.matches()) {
                    dVar.d(matcher.group(1));
                }
                str = str.substring(0, indexOf);
            }
            String[] a2 = I.a(str, "\\.");
            String str2 = a2[0];
            int indexOf2 = str2.indexOf(35);
            if (indexOf2 != -1) {
                dVar.c(str2.substring(0, indexOf2));
                dVar.b(str2.substring(indexOf2 + 1));
            } else {
                dVar.c(str2);
            }
            if (a2.length > 1) {
                dVar.a((String[]) Arrays.copyOfRange(a2, 1, a2.length));
            }
        }
    }
}
