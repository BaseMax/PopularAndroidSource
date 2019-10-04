package c.b.a.i.a;

/* compiled from: StateVerifier */
public abstract class g {

    /* compiled from: StateVerifier */
    private static class a extends g {

        /* renamed from: a  reason: collision with root package name */
        public volatile boolean f4424a;

        public a() {
            super();
        }

        public void a(boolean z) {
            this.f4424a = z;
        }

        public void b() {
            if (this.f4424a) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    public static g a() {
        return new a();
    }

    public abstract void a(boolean z);

    public abstract void b();

    public g() {
    }
}
