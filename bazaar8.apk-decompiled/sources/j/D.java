package j;

import j.a.e;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import k.g;

/* compiled from: HttpUrl */
public final class D {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f15118a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    public final String f15119b;

    /* renamed from: c  reason: collision with root package name */
    public final String f15120c;

    /* renamed from: d  reason: collision with root package name */
    public final String f15121d;

    /* renamed from: e  reason: collision with root package name */
    public final String f15122e;

    /* renamed from: f  reason: collision with root package name */
    public final int f15123f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f15124g;

    /* renamed from: h  reason: collision with root package name */
    public final List<String> f15125h;

    /* renamed from: i  reason: collision with root package name */
    public final String f15126i;

    /* renamed from: j  reason: collision with root package name */
    public final String f15127j;

    /* compiled from: HttpUrl */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f15128a;

        /* renamed from: b  reason: collision with root package name */
        public String f15129b = "";

        /* renamed from: c  reason: collision with root package name */
        public String f15130c = "";

        /* renamed from: d  reason: collision with root package name */
        public String f15131d;

        /* renamed from: e  reason: collision with root package name */
        public int f15132e = -1;

        /* renamed from: f  reason: collision with root package name */
        public final List<String> f15133f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        public List<String> f15134g;

        /* renamed from: h  reason: collision with root package name */
        public String f15135h;

        public a() {
            this.f15133f.add("");
        }

        public a a(int i2) {
            if (i2 <= 0 || i2 > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i2);
            }
            this.f15132e = i2;
            return this;
        }

        public a b(String str) {
            if (str != null) {
                String a2 = a(str, 0, str.length());
                if (a2 != null) {
                    this.f15131d = a2;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new NullPointerException("host == null");
        }

        public final boolean c(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        public a d() {
            int size = this.f15133f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f15133f.set(i2, D.a(this.f15133f.get(i2), "[]", true, true, false, true));
            }
            List<String> list = this.f15134g;
            if (list != null) {
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    String str = this.f15134g.get(i3);
                    if (str != null) {
                        this.f15134g.set(i3, D.a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f15135h;
            if (str2 != null) {
                this.f15135h = D.a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public a e(String str) {
            if (str != null) {
                this.f15130c = D.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("password == null");
        }

        public a f(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f15128a = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.f15128a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        public a g(String str) {
            if (str != null) {
                this.f15129b = D.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("username == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f15128a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f15129b.isEmpty() || !this.f15130c.isEmpty()) {
                sb.append(this.f15129b);
                if (!this.f15130c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f15130c);
                }
                sb.append('@');
            }
            String str2 = this.f15131d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f15131d);
                    sb.append(']');
                } else {
                    sb.append(this.f15131d);
                }
            }
            if (!(this.f15132e == -1 && this.f15128a == null)) {
                int b2 = b();
                String str3 = this.f15128a;
                if (str3 == null || b2 != D.a(str3)) {
                    sb.append(':');
                    sb.append(b2);
                }
            }
            D.b(sb, this.f15133f);
            if (this.f15134g != null) {
                sb.append('?');
                D.a(sb, this.f15134g);
            }
            if (this.f15135h != null) {
                sb.append('#');
                sb.append(this.f15135h);
            }
            return sb.toString();
        }

        public final void c() {
            List<String> list = this.f15133f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f15133f.isEmpty()) {
                this.f15133f.add("");
                return;
            }
            List<String> list2 = this.f15133f;
            list2.set(list2.size() - 1, "");
        }

        public static int e(String str, int i2, int i3) {
            if (i3 - i2 < 2) {
                return -1;
            }
            char charAt = str.charAt(i2);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i2++;
                    if (i2 >= i3) {
                        break;
                    }
                    char charAt2 = str.charAt(i2);
                    if ((charAt2 < 'a' || charAt2 > 'z') && ((charAt2 < 'A' || charAt2 > 'Z') && !((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '+' || charAt2 == '-' || charAt2 == '.'))) {
                        if (charAt2 == ':') {
                            return i2;
                        }
                    }
                }
            }
            return -1;
        }

        public a a(String str) {
            this.f15134g = str != null ? D.d(D.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public int b() {
            int i2 = this.f15132e;
            return i2 != -1 ? i2 : D.a(this.f15128a);
        }

        public static int c(String str, int i2, int i3) {
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt == ':') {
                    return i2;
                }
                if (charAt == '[') {
                    do {
                        i2++;
                        if (i2 >= i3) {
                            break;
                        }
                    } while (str.charAt(i2) != ']');
                }
                i2++;
            }
            return i3;
        }

        public a a(String str, String str2) {
            if (str != null) {
                if (this.f15134g == null) {
                    this.f15134g = new ArrayList();
                }
                this.f15134g.add(D.a(str, " \"'<>#&=", true, false, true, true));
                this.f15134g.add(str2 != null ? D.a(str2, " \"'<>#&=", true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        public a b(String str, String str2) {
            if (str != null) {
                if (this.f15134g == null) {
                    this.f15134g = new ArrayList();
                }
                this.f15134g.add(D.a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
                this.f15134g.add(str2 != null ? D.a(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("name == null");
        }

        public static int f(String str, int i2, int i3) {
            int i4 = 0;
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i4++;
                i2++;
            }
            return i4;
        }

        public static int b(String str, int i2, int i3) {
            try {
                int parseInt = Integer.parseInt(D.a(str, i2, i3, "", false, false, false, true, null));
                if (parseInt <= 0 || parseInt > 65535) {
                    return -1;
                }
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }

        public D a() {
            if (this.f15128a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.f15131d != null) {
                return new D(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
            	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
            */
        /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
        /* JADX WARNING: Removed duplicated region for block: B:18:0x0044 A[SYNTHETIC] */
        public final void d(java.lang.String r11, int r12, int r13) {
            /*
                r10 = this;
                if (r12 != r13) goto L_0x0003
                return
            L_0x0003:
                char r0 = r11.charAt(r12)
                r1 = 47
                java.lang.String r2 = ""
                r3 = 1
                if (r0 == r1) goto L_0x001e
                r1 = 92
                if (r0 != r1) goto L_0x0013
                goto L_0x001e
            L_0x0013:
                java.util.List<java.lang.String> r0 = r10.f15133f
                int r1 = r0.size()
                int r1 = r1 - r3
                r0.set(r1, r2)
                goto L_0x0029
            L_0x001e:
                java.util.List<java.lang.String> r0 = r10.f15133f
                r0.clear()
                java.util.List<java.lang.String> r0 = r10.f15133f
                r0.add(r2)
                goto L_0x0041
            L_0x0029:
                r6 = r12
                if (r6 >= r13) goto L_0x0044
                java.lang.String r12 = "/\\"
                int r12 = j.a.e.a((java.lang.String) r11, (int) r6, (int) r13, (java.lang.String) r12)
                if (r12 >= r13) goto L_0x0036
                r0 = 1
                goto L_0x0037
            L_0x0036:
                r0 = 0
            L_0x0037:
                r9 = 1
                r4 = r10
                r5 = r11
                r7 = r12
                r8 = r0
                r4.a(r5, r6, r7, r8, r9)
                if (r0 == 0) goto L_0x0029
            L_0x0041:
                int r12 = r12 + 1
                goto L_0x0029
            L_0x0044:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: j.D.a.d(java.lang.String, int, int):void");
        }

        public a a(D d2, String str) {
            int a2;
            int i2;
            D d3 = d2;
            String str2 = str;
            int b2 = e.b(str2, 0, str.length());
            int c2 = e.c(str2, b2, str.length());
            if (e(str2, b2, c2) != -1) {
                if (str.regionMatches(true, b2, "https:", 0, 6)) {
                    this.f15128a = "https";
                    b2 += 6;
                } else if (str.regionMatches(true, b2, "http:", 0, 5)) {
                    this.f15128a = "http";
                    b2 += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str2.substring(0, r12) + "'");
                }
            } else if (d3 != null) {
                this.f15128a = d3.f15119b;
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int f2 = f(str2, b2, c2);
            char c3 = '?';
            char c4 = '#';
            if (f2 >= 2 || d3 == null || !d3.f15119b.equals(this.f15128a)) {
                int i3 = b2 + f2;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    a2 = e.a(str2, i3, c2, "@/\\?#");
                    char charAt = a2 != c2 ? str2.charAt(a2) : 65535;
                    if (charAt == 65535 || charAt == c4 || charAt == '/' || charAt == '\\' || charAt == c3) {
                        int i4 = a2;
                        int c5 = c(str2, i3, i4);
                        int i5 = c5 + 1;
                    } else {
                        if (charAt == '@') {
                            if (!z) {
                                int a3 = e.a(str2, i3, a2, ':');
                                int i6 = a3;
                                String str3 = "%40";
                                i2 = a2;
                                String a4 = D.a(str, i3, a3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                if (z2) {
                                    a4 = this.f15129b + str3 + a4;
                                }
                                this.f15129b = a4;
                                if (i6 != i2) {
                                    this.f15130c = D.a(str, i6 + 1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                    z = true;
                                }
                                z2 = true;
                            } else {
                                i2 = a2;
                                this.f15130c += "%40" + D.a(str, i3, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            }
                            i3 = i2 + 1;
                        }
                        c3 = '?';
                        c4 = '#';
                    }
                }
                int i42 = a2;
                int c52 = c(str2, i3, i42);
                int i52 = c52 + 1;
                if (i52 < i42) {
                    this.f15131d = a(str2, i3, c52);
                    this.f15132e = b(str2, i52, i42);
                    if (this.f15132e == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str2.substring(i52, i42) + '\"');
                    }
                } else {
                    this.f15131d = a(str2, i3, c52);
                    this.f15132e = D.a(this.f15128a);
                }
                if (this.f15131d != null) {
                    b2 = i42;
                } else {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str2.substring(i3, c52) + '\"');
                }
            } else {
                this.f15129b = d2.f();
                this.f15130c = d2.b();
                this.f15131d = d3.f15122e;
                this.f15132e = d3.f15123f;
                this.f15133f.clear();
                this.f15133f.addAll(d2.d());
                if (b2 == c2 || str2.charAt(b2) == '#') {
                    a(d2.e());
                }
            }
            int a5 = e.a(str2, b2, c2, "?#");
            d(str2, b2, a5);
            if (a5 < c2 && str2.charAt(a5) == '?') {
                int a6 = e.a(str2, a5, c2, '#');
                this.f15134g = D.d(D.a(str, a5 + 1, a6, " \"'<>#", true, false, true, true, null));
                a5 = a6;
            }
            if (a5 < c2 && str2.charAt(a5) == '#') {
                this.f15135h = D.a(str, 1 + a5, c2, "", true, false, false, false, null);
            }
            return this;
        }

        public final boolean d(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public final void a(String str, int i2, int i3, boolean z, boolean z2) {
            String a2 = D.a(str, i2, i3, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (!c(a2)) {
                if (d(a2)) {
                    c();
                    return;
                }
                List<String> list = this.f15133f;
                if (list.get(list.size() - 1).isEmpty()) {
                    List<String> list2 = this.f15133f;
                    list2.set(list2.size() - 1, a2);
                } else {
                    this.f15133f.add(a2);
                }
                if (z) {
                    this.f15133f.add("");
                }
            }
        }

        public static String a(String str, int i2, int i3) {
            return e.a(D.a(str, i2, i3, false));
        }
    }

    public D(a aVar) {
        this.f15119b = aVar.f15128a;
        this.f15120c = a(aVar.f15129b, false);
        this.f15121d = a(aVar.f15130c, false);
        this.f15122e = aVar.f15131d;
        this.f15123f = aVar.b();
        this.f15124g = a(aVar.f15133f, false);
        List<String> list = aVar.f15134g;
        String str = null;
        this.f15125h = list != null ? a(list, true) : null;
        String str2 = aVar.f15135h;
        this.f15126i = str2 != null ? a(str2, false) : str;
        this.f15127j = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public String b() {
        if (this.f15121d.isEmpty()) {
            return "";
        }
        int indexOf = this.f15127j.indexOf(64);
        return this.f15127j.substring(this.f15127j.indexOf(58, this.f15119b.length() + 3) + 1, indexOf);
    }

    public String c() {
        int indexOf = this.f15127j.indexOf(47, this.f15119b.length() + 3);
        String str = this.f15127j;
        return this.f15127j.substring(indexOf, e.a(str, indexOf, str.length(), "?#"));
    }

    public List<String> d() {
        int indexOf = this.f15127j.indexOf(47, this.f15119b.length() + 3);
        String str = this.f15127j;
        int a2 = e.a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < a2) {
            int i2 = indexOf + 1;
            int a3 = e.a(this.f15127j, i2, a2, '/');
            arrayList.add(this.f15127j.substring(i2, a3));
            indexOf = a3;
        }
        return arrayList;
    }

    public String e() {
        if (this.f15125h == null) {
            return null;
        }
        int indexOf = this.f15127j.indexOf(63) + 1;
        String str = this.f15127j;
        return this.f15127j.substring(indexOf, e.a(str, indexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        return (obj instanceof D) && ((D) obj).f15127j.equals(this.f15127j);
    }

    public String f() {
        if (this.f15120c.isEmpty()) {
            return "";
        }
        int length = this.f15119b.length() + 3;
        String str = this.f15127j;
        return this.f15127j.substring(length, e.a(str, length, str.length(), ":@"));
    }

    public String g() {
        return this.f15122e;
    }

    public boolean h() {
        return this.f15119b.equals("https");
    }

    public int hashCode() {
        return this.f15127j.hashCode();
    }

    public a i() {
        a aVar = new a();
        aVar.f15128a = this.f15119b;
        aVar.f15129b = f();
        aVar.f15130c = b();
        aVar.f15131d = this.f15122e;
        aVar.f15132e = this.f15123f != a(this.f15119b) ? this.f15123f : -1;
        aVar.f15133f.clear();
        aVar.f15133f.addAll(d());
        aVar.a(e());
        aVar.f15135h = a();
        return aVar;
    }

    public List<String> j() {
        return this.f15124g;
    }

    public int k() {
        return this.f15123f;
    }

    public String l() {
        if (this.f15125h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        a(sb, this.f15125h);
        return sb.toString();
    }

    public String m() {
        a c2 = c("/...");
        c2.g("");
        c2.e("");
        return c2.a().toString();
    }

    public String n() {
        return this.f15119b;
    }

    public URI o() {
        a i2 = i();
        i2.d();
        String aVar = i2.toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public String toString() {
        return this.f15127j;
    }

    public static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            String str = list.get(i2);
            String str2 = list.get(i2 + 1);
            if (i2 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    public a c(String str) {
        try {
            a aVar = new a();
            aVar.a(this, str);
            return aVar;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append('/');
            sb.append(list.get(i2));
        }
    }

    public D e(String str) {
        a c2 = c(str);
        if (c2 != null) {
            return c2.a();
        }
        return null;
    }

    public static List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 <= str.length()) {
            int indexOf = str.indexOf(38, i2);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i2);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i2, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i2, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i2 = indexOf + 1;
        }
        return arrayList;
    }

    public static D b(String str) {
        a aVar = new a();
        aVar.a((D) null, str);
        return aVar.a();
    }

    public String a() {
        if (this.f15126i == null) {
            return null;
        }
        return this.f15127j.substring(this.f15127j.indexOf(35) + 1);
    }

    public static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    public final List<String> a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            arrayList.add(str != null ? a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static String a(String str, int i2, int i3, boolean z) {
        for (int i4 = i2; i4 < i3; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '%' || (charAt == '+' && z)) {
                g gVar = new g();
                gVar.a(str, i2, i4);
                a(gVar, str, i4, i3, z);
                return gVar.t();
            }
        }
        return str.substring(i2, i3);
    }

    public static void a(g gVar, String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt == 37) {
                int i4 = i2 + 2;
                if (i4 < i3) {
                    int a2 = e.a(str.charAt(i2 + 1));
                    int a3 = e.a(str.charAt(i4));
                    if (!(a2 == -1 || a3 == -1)) {
                        gVar.writeByte((a2 << 4) + a3);
                        i2 = i4;
                        i2 += Character.charCount(codePointAt);
                    }
                    gVar.c(codePointAt);
                    i2 += Character.charCount(codePointAt);
                }
            }
            if (codePointAt == 43 && z) {
                gVar.writeByte(32);
                i2 += Character.charCount(codePointAt);
            }
            gVar.c(codePointAt);
            i2 += Character.charCount(codePointAt);
        }
    }

    public static boolean a(String str, int i2, int i3) {
        int i4 = i2 + 2;
        if (i4 >= i3 || str.charAt(i2) != '%' || e.a(str.charAt(i2 + 1)) == -1 || e.a(str.charAt(i4)) == -1) {
            return false;
        }
        return true;
    }

    public static String a(String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        String str3 = str;
        int i4 = i3;
        int i5 = i2;
        while (i5 < i4) {
            int codePointAt = str.codePointAt(i5);
            if (codePointAt < 32 || codePointAt == 127 || (codePointAt >= 128 && z4)) {
                String str4 = str2;
            } else {
                String str5 = str2;
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z && (!z2 || a(str, i5, i3)))) && (codePointAt != 43 || !z3))) {
                    i5 += Character.charCount(codePointAt);
                }
            }
            g gVar = new g();
            int i6 = i2;
            gVar.a(str, i2, i5);
            a(gVar, str, i5, i3, str2, z, z2, z3, z4, charset);
            return gVar.t();
        }
        int i7 = i2;
        return str.substring(i2, i3);
    }

    public static void a(g gVar, String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        g gVar2 = null;
        while (i2 < i3) {
            int codePointAt = str.codePointAt(i2);
            if (!z || !(codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13)) {
                if (codePointAt == 43 && z3) {
                    gVar.a(z ? "+" : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !a(str, i2, i3)))))) {
                    if (gVar2 == null) {
                        gVar2 = new g();
                    }
                    if (charset == null || charset.equals(e.f15418j)) {
                        gVar2.c(codePointAt);
                    } else {
                        gVar2.a(str, i2, Character.charCount(codePointAt) + i2, charset);
                    }
                    while (!gVar2.d()) {
                        byte readByte = gVar2.readByte() & 255;
                        gVar.writeByte(37);
                        gVar.writeByte((int) f15118a[(readByte >> 4) & 15]);
                        gVar.writeByte((int) f15118a[readByte & 15]);
                    }
                } else {
                    gVar.c(codePointAt);
                }
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    public static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, charset);
    }

    public static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }
}
