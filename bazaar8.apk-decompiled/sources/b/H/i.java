package b.H;

import android.annotation.SuppressLint;

/* compiled from: Operation */
public interface i {
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: a  reason: collision with root package name */
    public static final a.c f1647a = new a.c();
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: b  reason: collision with root package name */
    public static final a.b f1648b = new a.b();

    /* compiled from: Operation */
    public static abstract class a {

        /* renamed from: b.H.i$a$a  reason: collision with other inner class name */
        /* compiled from: Operation */
        public static final class C0019a extends a {

            /* renamed from: a  reason: collision with root package name */
            public final Throwable f1649a;

            public C0019a(Throwable th) {
                this.f1649a = th;
            }

            public Throwable a() {
                return this.f1649a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", new Object[]{this.f1649a.getMessage()});
            }
        }

        /* compiled from: Operation */
        public static final class b extends a {
            public String toString() {
                return "IN_PROGRESS";
            }

            public b() {
            }
        }

        /* compiled from: Operation */
        public static final class c extends a {
            public String toString() {
                return "SUCCESS";
            }

            public c() {
            }
        }
    }
}
