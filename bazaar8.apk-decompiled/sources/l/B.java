package l;

import j.A;
import j.C;
import j.D;
import j.F;
import j.G;
import j.L;
import j.O;
import java.util.regex.Pattern;
import k.g;
import k.h;

/* compiled from: RequestBuilder */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f15827a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f15828b = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: c  reason: collision with root package name */
    public final String f15829c;

    /* renamed from: d  reason: collision with root package name */
    public final D f15830d;

    /* renamed from: e  reason: collision with root package name */
    public String f15831e;

    /* renamed from: f  reason: collision with root package name */
    public D.a f15832f;

    /* renamed from: g  reason: collision with root package name */
    public final L.a f15833g = new L.a();

    /* renamed from: h  reason: collision with root package name */
    public F f15834h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f15835i;

    /* renamed from: j  reason: collision with root package name */
    public G.a f15836j;

    /* renamed from: k  reason: collision with root package name */
    public A.a f15837k;

    /* renamed from: l  reason: collision with root package name */
    public O f15838l;

    /* compiled from: RequestBuilder */
    private static class a extends O {

        /* renamed from: a  reason: collision with root package name */
        public final O f15839a;

        /* renamed from: b  reason: collision with root package name */
        public final F f15840b;

        public a(O o, F f2) {
            this.f15839a = o;
            this.f15840b = f2;
        }

        public long a() {
            return this.f15839a.a();
        }

        public F b() {
            return this.f15840b;
        }

        public void a(h hVar) {
            this.f15839a.a(hVar);
        }
    }

    public B(String str, D d2, String str2, C c2, F f2, boolean z, boolean z2, boolean z3) {
        this.f15829c = str;
        this.f15830d = d2;
        this.f15831e = str2;
        this.f15834h = f2;
        this.f15835i = z;
        if (c2 != null) {
            this.f15833g.a(c2);
        }
        if (z2) {
            this.f15837k = new A.a();
        } else if (z3) {
            this.f15836j = new G.a();
            this.f15836j.a(G.f15146e);
        }
    }

    public void a(Object obj) {
        this.f15831e = obj.toString();
    }

    public void b(String str, String str2, boolean z) {
        if (this.f15831e != null) {
            String a2 = a(str2, z);
            String str3 = this.f15831e;
            String replace = str3.replace("{" + str + "}", a2);
            if (!f15828b.matcher(replace).matches()) {
                this.f15831e = replace;
                return;
            }
            throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
        }
        throw new AssertionError();
    }

    public void c(String str, String str2, boolean z) {
        String str3 = this.f15831e;
        if (str3 != null) {
            this.f15832f = this.f15830d.c(str3);
            if (this.f15832f != null) {
                this.f15831e = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f15830d + ", Relative: " + this.f15831e);
            }
        }
        if (z) {
            this.f15832f.a(str, str2);
        } else {
            this.f15832f.b(str, str2);
        }
    }

    public void a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.f15834h = F.a(str2);
            } catch (IllegalArgumentException e2) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e2);
            }
        } else {
            this.f15833g.a(str, str2);
        }
    }

    public static String a(String str, boolean z) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                g gVar = new g();
                gVar.a(str, 0, i2);
                a(gVar, str, i2, length, z);
                return gVar.t();
            }
            i2 += Character.charCount(codePointAt);
        }
        return str;
    }

    public static void a(g gVar, String str, int i2, int i3, boolean z) {
        g gVar2 = null;
        while (i2 < i3) {
            int codePointAt = str.codePointAt(i2);
            if (!z || !(codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13)) {
                if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                    if (gVar2 == null) {
                        gVar2 = new g();
                    }
                    gVar2.c(codePointAt);
                    while (!gVar2.d()) {
                        byte readByte = gVar2.readByte() & 255;
                        gVar.writeByte(37);
                        gVar.writeByte((int) f15827a[(readByte >> 4) & 15]);
                        gVar.writeByte((int) f15827a[readByte & 15]);
                    }
                } else {
                    gVar.c(codePointAt);
                }
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    public void a(String str, String str2, boolean z) {
        if (z) {
            this.f15837k.b(str, str2);
        } else {
            this.f15837k.a(str, str2);
        }
    }

    public void a(C c2, O o) {
        this.f15836j.a(c2, o);
    }

    public void a(G.b bVar) {
        this.f15836j.a(bVar);
    }

    public void a(O o) {
        this.f15838l = o;
    }

    public L.a a() {
        D d2;
        D.a aVar = this.f15832f;
        if (aVar != null) {
            d2 = aVar.a();
        } else {
            d2 = this.f15830d.e(this.f15831e);
            if (d2 == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f15830d + ", Relative: " + this.f15831e);
            }
        }
        a aVar2 = this.f15838l;
        if (aVar2 == null) {
            A.a aVar3 = this.f15837k;
            if (aVar3 != null) {
                aVar2 = aVar3.a();
            } else {
                G.a aVar4 = this.f15836j;
                if (aVar4 != null) {
                    aVar2 = aVar4.a();
                } else if (this.f15835i) {
                    aVar2 = O.a((F) null, new byte[0]);
                }
            }
        }
        F f2 = this.f15834h;
        if (f2 != null) {
            if (aVar2 != null) {
                aVar2 = new a(aVar2, f2);
            } else {
                this.f15833g.a("Content-Type", f2.toString());
            }
        }
        L.a aVar5 = this.f15833g;
        aVar5.a(d2);
        aVar5.a(this.f15829c, aVar2);
        return aVar5;
    }
}
