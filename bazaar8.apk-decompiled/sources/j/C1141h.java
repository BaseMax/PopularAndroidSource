package j;

import java.util.concurrent.TimeUnit;

/* renamed from: j.h  reason: case insensitive filesystem */
/* compiled from: CacheControl */
public final class C1141h {

    /* renamed from: a  reason: collision with root package name */
    public static final C1141h f15635a;

    /* renamed from: b  reason: collision with root package name */
    public static final C1141h f15636b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f15637c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f15638d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15639e;

    /* renamed from: f  reason: collision with root package name */
    public final int f15640f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f15641g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f15642h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f15643i;

    /* renamed from: j  reason: collision with root package name */
    public final int f15644j;

    /* renamed from: k  reason: collision with root package name */
    public final int f15645k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f15646l;
    public final boolean m;
    public final boolean n;
    public String o;

    /* renamed from: j.h$a */
    /* compiled from: CacheControl */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f15647a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f15648b;

        /* renamed from: c  reason: collision with root package name */
        public int f15649c = -1;

        /* renamed from: d  reason: collision with root package name */
        public int f15650d = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f15651e = -1;

        /* renamed from: f  reason: collision with root package name */
        public boolean f15652f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f15653g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f15654h;

        public a a(int i2, TimeUnit timeUnit) {
            if (i2 >= 0) {
                long seconds = timeUnit.toSeconds((long) i2);
                this.f15650d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i2);
        }

        public a b() {
            this.f15647a = true;
            return this;
        }

        public a c() {
            this.f15648b = true;
            return this;
        }

        public a d() {
            this.f15652f = true;
            return this;
        }

        public C1141h a() {
            return new C1141h(this);
        }
    }

    static {
        a aVar = new a();
        aVar.b();
        f15635a = aVar.a();
        a aVar2 = new a();
        aVar2.d();
        aVar2.a(Integer.MAX_VALUE, TimeUnit.SECONDS);
        f15636b = aVar2.a();
    }

    public C1141h(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, String str) {
        this.f15637c = z;
        this.f15638d = z2;
        this.f15639e = i2;
        this.f15640f = i3;
        this.f15641g = z3;
        this.f15642h = z4;
        this.f15643i = z5;
        this.f15644j = i4;
        this.f15645k = i5;
        this.f15646l = z6;
        this.m = z7;
        this.n = z8;
        this.o = str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static j.C1141h a(j.C r22) {
        /*
            r0 = r22
            int r1 = r22.b()
            r6 = 0
            r7 = 1
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = -1
            r12 = -1
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = -1
            r17 = -1
            r18 = 0
            r19 = 0
            r20 = 0
        L_0x001a:
            if (r6 >= r1) goto L_0x0146
            java.lang.String r2 = r0.a((int) r6)
            java.lang.String r4 = r0.b((int) r6)
            java.lang.String r3 = "Cache-Control"
            boolean r3 = r2.equalsIgnoreCase(r3)
            if (r3 == 0) goto L_0x0031
            if (r8 == 0) goto L_0x002f
            goto L_0x0039
        L_0x002f:
            r8 = r4
            goto L_0x003a
        L_0x0031:
            java.lang.String r3 = "Pragma"
            boolean r2 = r2.equalsIgnoreCase(r3)
            if (r2 == 0) goto L_0x013f
        L_0x0039:
            r7 = 0
        L_0x003a:
            r2 = 0
        L_0x003b:
            int r3 = r4.length()
            if (r2 >= r3) goto L_0x013f
            java.lang.String r3 = "=,;"
            int r3 = j.a.c.f.a((java.lang.String) r4, (int) r2, (java.lang.String) r3)
            java.lang.String r2 = r4.substring(r2, r3)
            java.lang.String r2 = r2.trim()
            int r5 = r4.length()
            if (r3 == r5) goto L_0x0099
            char r5 = r4.charAt(r3)
            r0 = 44
            if (r5 == r0) goto L_0x0099
            char r0 = r4.charAt(r3)
            r5 = 59
            if (r0 != r5) goto L_0x0066
            goto L_0x0099
        L_0x0066:
            int r3 = r3 + 1
            int r0 = j.a.c.f.b(r4, r3)
            int r3 = r4.length()
            if (r0 >= r3) goto L_0x0089
            char r3 = r4.charAt(r0)
            r5 = 34
            if (r3 != r5) goto L_0x0089
            int r0 = r0 + 1
            java.lang.String r3 = "\""
            int r3 = j.a.c.f.a((java.lang.String) r4, (int) r0, (java.lang.String) r3)
            java.lang.String r0 = r4.substring(r0, r3)
            r5 = 1
            int r3 = r3 + r5
            goto L_0x009d
        L_0x0089:
            r5 = 1
            java.lang.String r3 = ",;"
            int r3 = j.a.c.f.a((java.lang.String) r4, (int) r0, (java.lang.String) r3)
            java.lang.String r0 = r4.substring(r0, r3)
            java.lang.String r0 = r0.trim()
            goto L_0x009d
        L_0x0099:
            r5 = 1
            int r3 = r3 + 1
            r0 = 0
        L_0x009d:
            java.lang.String r5 = "no-cache"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00a9
            r5 = -1
            r9 = 1
            goto L_0x013a
        L_0x00a9:
            java.lang.String r5 = "no-store"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00b5
            r5 = -1
            r10 = 1
            goto L_0x013a
        L_0x00b5:
            java.lang.String r5 = "max-age"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00c5
            r5 = -1
            int r0 = j.a.c.f.a((java.lang.String) r0, (int) r5)
            r11 = r0
            goto L_0x013a
        L_0x00c5:
            java.lang.String r5 = "s-maxage"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00d5
            r5 = -1
            int r0 = j.a.c.f.a((java.lang.String) r0, (int) r5)
            r12 = r0
            goto L_0x013a
        L_0x00d5:
            java.lang.String r5 = "private"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00e0
            r5 = -1
            r13 = 1
            goto L_0x013a
        L_0x00e0:
            java.lang.String r5 = "public"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00eb
            r5 = -1
            r14 = 1
            goto L_0x013a
        L_0x00eb:
            java.lang.String r5 = "must-revalidate"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x00f6
            r5 = -1
            r15 = 1
            goto L_0x013a
        L_0x00f6:
            java.lang.String r5 = "max-stale"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x0109
            r2 = 2147483647(0x7fffffff, float:NaN)
            int r0 = j.a.c.f.a((java.lang.String) r0, (int) r2)
            r16 = r0
            r5 = -1
            goto L_0x013a
        L_0x0109:
            java.lang.String r5 = "min-fresh"
            boolean r5 = r5.equalsIgnoreCase(r2)
            if (r5 == 0) goto L_0x0119
            r5 = -1
            int r0 = j.a.c.f.a((java.lang.String) r0, (int) r5)
            r17 = r0
            goto L_0x013a
        L_0x0119:
            r5 = -1
            java.lang.String r0 = "only-if-cached"
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 == 0) goto L_0x0125
            r18 = 1
            goto L_0x013a
        L_0x0125:
            java.lang.String r0 = "no-transform"
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 == 0) goto L_0x0130
            r19 = 1
            goto L_0x013a
        L_0x0130:
            java.lang.String r0 = "immutable"
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 == 0) goto L_0x013a
            r20 = 1
        L_0x013a:
            r0 = r22
            r2 = r3
            goto L_0x003b
        L_0x013f:
            r5 = -1
            int r6 = r6 + 1
            r0 = r22
            goto L_0x001a
        L_0x0146:
            if (r7 != 0) goto L_0x014b
            r21 = 0
            goto L_0x014d
        L_0x014b:
            r21 = r8
        L_0x014d:
            j.h r0 = new j.h
            r8 = r0
            r8.<init>(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.C1141h.a(j.C):j.h");
    }

    public boolean b() {
        return this.f15641g;
    }

    public boolean c() {
        return this.f15642h;
    }

    public int d() {
        return this.f15639e;
    }

    public int e() {
        return this.f15644j;
    }

    public int f() {
        return this.f15645k;
    }

    public boolean g() {
        return this.f15643i;
    }

    public boolean h() {
        return this.f15637c;
    }

    public boolean i() {
        return this.f15638d;
    }

    public boolean j() {
        return this.f15646l;
    }

    public String toString() {
        String str = this.o;
        if (str != null) {
            return str;
        }
        String a2 = a();
        this.o = a2;
        return a2;
    }

    public C1141h(a aVar) {
        this.f15637c = aVar.f15647a;
        this.f15638d = aVar.f15648b;
        this.f15639e = aVar.f15649c;
        this.f15640f = -1;
        this.f15641g = false;
        this.f15642h = false;
        this.f15643i = false;
        this.f15644j = aVar.f15650d;
        this.f15645k = aVar.f15651e;
        this.f15646l = aVar.f15652f;
        this.m = aVar.f15653g;
        this.n = aVar.f15654h;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        if (this.f15637c) {
            sb.append("no-cache, ");
        }
        if (this.f15638d) {
            sb.append("no-store, ");
        }
        if (this.f15639e != -1) {
            sb.append("max-age=");
            sb.append(this.f15639e);
            sb.append(", ");
        }
        if (this.f15640f != -1) {
            sb.append("s-maxage=");
            sb.append(this.f15640f);
            sb.append(", ");
        }
        if (this.f15641g) {
            sb.append("private, ");
        }
        if (this.f15642h) {
            sb.append("public, ");
        }
        if (this.f15643i) {
            sb.append("must-revalidate, ");
        }
        if (this.f15644j != -1) {
            sb.append("max-stale=");
            sb.append(this.f15644j);
            sb.append(", ");
        }
        if (this.f15645k != -1) {
            sb.append("min-fresh=");
            sb.append(this.f15645k);
            sb.append(", ");
        }
        if (this.f15646l) {
            sb.append("only-if-cached, ");
        }
        if (this.m) {
            sb.append("no-transform, ");
        }
        if (this.n) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }
}
