package b.w;

/* compiled from: NavOptions */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public boolean f3336a;

    /* renamed from: b  reason: collision with root package name */
    public int f3337b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3338c;

    /* renamed from: d  reason: collision with root package name */
    public int f3339d;

    /* renamed from: e  reason: collision with root package name */
    public int f3340e;

    /* renamed from: f  reason: collision with root package name */
    public int f3341f;

    /* renamed from: g  reason: collision with root package name */
    public int f3342g;

    /* compiled from: NavOptions */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f3343a;

        /* renamed from: b  reason: collision with root package name */
        public int f3344b = -1;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3345c;

        /* renamed from: d  reason: collision with root package name */
        public int f3346d = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f3347e = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f3348f = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f3349g = -1;

        public a a(boolean z) {
            this.f3343a = z;
            return this;
        }

        public a b(int i2) {
            this.f3347e = i2;
            return this;
        }

        public a c(int i2) {
            this.f3348f = i2;
            return this;
        }

        public a d(int i2) {
            this.f3349g = i2;
            return this;
        }

        public a a(int i2, boolean z) {
            this.f3344b = i2;
            this.f3345c = z;
            return this;
        }

        public a a(int i2) {
            this.f3346d = i2;
            return this;
        }

        public w a() {
            w wVar = new w(this.f3343a, this.f3344b, this.f3345c, this.f3346d, this.f3347e, this.f3348f, this.f3349g);
            return wVar;
        }
    }

    public w(boolean z, int i2, boolean z2, int i3, int i4, int i5, int i6) {
        this.f3336a = z;
        this.f3337b = i2;
        this.f3338c = z2;
        this.f3339d = i3;
        this.f3340e = i4;
        this.f3341f = i5;
        this.f3342g = i6;
    }

    public int a() {
        return this.f3339d;
    }

    public int b() {
        return this.f3340e;
    }

    public int c() {
        return this.f3341f;
    }

    public int d() {
        return this.f3342g;
    }

    public int e() {
        return this.f3337b;
    }

    public boolean f() {
        return this.f3338c;
    }

    public boolean g() {
        return this.f3336a;
    }
}
