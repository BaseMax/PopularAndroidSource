package j;

import j.a.e;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import k.h;
import okio.ByteString;

/* compiled from: MultipartBody */
public final class G extends O {

    /* renamed from: a  reason: collision with root package name */
    public static final F f15142a = F.a("multipart/mixed");

    /* renamed from: b  reason: collision with root package name */
    public static final F f15143b = F.a("multipart/alternative");

    /* renamed from: c  reason: collision with root package name */
    public static final F f15144c = F.a("multipart/digest");

    /* renamed from: d  reason: collision with root package name */
    public static final F f15145d = F.a("multipart/parallel");

    /* renamed from: e  reason: collision with root package name */
    public static final F f15146e = F.a("multipart/form-data");

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f15147f = {58, 32};

    /* renamed from: g  reason: collision with root package name */
    public static final byte[] f15148g = {13, 10};

    /* renamed from: h  reason: collision with root package name */
    public static final byte[] f15149h = {45, 45};

    /* renamed from: i  reason: collision with root package name */
    public final ByteString f15150i;

    /* renamed from: j  reason: collision with root package name */
    public final F f15151j;

    /* renamed from: k  reason: collision with root package name */
    public final F f15152k;

    /* renamed from: l  reason: collision with root package name */
    public final List<b> f15153l;
    public long m = -1;

    /* compiled from: MultipartBody */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final ByteString f15154a;

        /* renamed from: b  reason: collision with root package name */
        public F f15155b;

        /* renamed from: c  reason: collision with root package name */
        public final List<b> f15156c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a a(F f2) {
            if (f2 == null) {
                throw new NullPointerException("type == null");
            } else if (f2.b().equals("multipart")) {
                this.f15155b = f2;
                return this;
            } else {
                throw new IllegalArgumentException("multipart != " + f2);
            }
        }

        public a(String str) {
            this.f15155b = G.f15142a;
            this.f15156c = new ArrayList();
            this.f15154a = ByteString.d(str);
        }

        public a a(C c2, O o) {
            a(b.a(c2, o));
            return this;
        }

        public a a(b bVar) {
            if (bVar != null) {
                this.f15156c.add(bVar);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        public G a() {
            if (!this.f15156c.isEmpty()) {
                return new G(this.f15154a, this.f15155b, this.f15156c);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    /* compiled from: MultipartBody */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final C f15157a;

        /* renamed from: b  reason: collision with root package name */
        public final O f15158b;

        public b(C c2, O o) {
            this.f15157a = c2;
            this.f15158b = o;
        }

        public static b a(C c2, O o) {
            if (o == null) {
                throw new NullPointerException("body == null");
            } else if (c2 != null && c2.b("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            } else if (c2 == null || c2.b("Content-Length") == null) {
                return new b(c2, o);
            } else {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
        }
    }

    public G(ByteString byteString, F f2, List<b> list) {
        this.f15150i = byteString;
        this.f15151j = f2;
        this.f15152k = F.a(f2 + "; boundary=" + byteString.n());
        this.f15153l = e.a(list);
    }

    public long a() {
        long j2 = this.m;
        if (j2 != -1) {
            return j2;
        }
        long a2 = a(null, true);
        this.m = a2;
        return a2;
    }

    public F b() {
        return this.f15152k;
    }

    public void a(h hVar) {
        a(hVar, false);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v1, resolved type: k.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v0, resolved type: k.g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: k.g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v3, resolved type: k.h} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: k.g} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long a(k.h r13, boolean r14) {
        /*
            r12 = this;
            if (r14 == 0) goto L_0x0009
            k.g r13 = new k.g
            r13.<init>()
            r0 = r13
            goto L_0x000a
        L_0x0009:
            r0 = 0
        L_0x000a:
            java.util.List<j.G$b> r1 = r12.f15153l
            int r1 = r1.size()
            r2 = 0
            r3 = 0
            r4 = r3
            r3 = 0
        L_0x0015:
            if (r3 >= r1) goto L_0x00a7
            java.util.List<j.G$b> r6 = r12.f15153l
            java.lang.Object r6 = r6.get(r3)
            j.G$b r6 = (j.G.b) r6
            j.C r7 = r6.f15157a
            j.O r6 = r6.f15158b
            byte[] r8 = f15149h
            r13.write(r8)
            okio.ByteString r8 = r12.f15150i
            r13.a((okio.ByteString) r8)
            byte[] r8 = f15148g
            r13.write(r8)
            if (r7 == 0) goto L_0x0059
            int r8 = r7.b()
            r9 = 0
        L_0x0039:
            if (r9 >= r8) goto L_0x0059
            java.lang.String r10 = r7.a((int) r9)
            k.h r10 = r13.a((java.lang.String) r10)
            byte[] r11 = f15147f
            k.h r10 = r10.write(r11)
            java.lang.String r11 = r7.b((int) r9)
            k.h r10 = r10.a((java.lang.String) r11)
            byte[] r11 = f15148g
            r10.write(r11)
            int r9 = r9 + 1
            goto L_0x0039
        L_0x0059:
            j.F r7 = r6.b()
            if (r7 == 0) goto L_0x0072
            java.lang.String r8 = "Content-Type: "
            k.h r8 = r13.a((java.lang.String) r8)
            java.lang.String r7 = r7.toString()
            k.h r7 = r8.a((java.lang.String) r7)
            byte[] r8 = f15148g
            r7.write(r8)
        L_0x0072:
            long r7 = r6.a()
            r9 = -1
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 == 0) goto L_0x008c
            java.lang.String r9 = "Content-Length: "
            k.h r9 = r13.a((java.lang.String) r9)
            k.h r9 = r9.g(r7)
            byte[] r10 = f15148g
            r9.write(r10)
            goto L_0x0092
        L_0x008c:
            if (r14 == 0) goto L_0x0092
            r0.p()
            return r9
        L_0x0092:
            byte[] r9 = f15148g
            r13.write(r9)
            if (r14 == 0) goto L_0x009b
            long r4 = r4 + r7
            goto L_0x009e
        L_0x009b:
            r6.a(r13)
        L_0x009e:
            byte[] r6 = f15148g
            r13.write(r6)
            int r3 = r3 + 1
            goto L_0x0015
        L_0x00a7:
            byte[] r1 = f15149h
            r13.write(r1)
            okio.ByteString r1 = r12.f15150i
            r13.a((okio.ByteString) r1)
            byte[] r1 = f15149h
            r13.write(r1)
            byte[] r1 = f15148g
            r13.write(r1)
            if (r14 == 0) goto L_0x00c5
            long r13 = r0.size()
            long r4 = r4 + r13
            r0.p()
        L_0x00c5:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: j.G.a(k.h, boolean):long");
    }
}
