package kotlin;

import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: Result.kt */
public final class Result<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final a f15776a = new a(null);
    public final Object value;

    /* compiled from: Result.kt */
    public static final class Failure implements Serializable {
        public final Throwable exception;

        public Failure(Throwable th) {
            j.b(th, "exception");
            this.exception = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Failure) && j.a((Object) this.exception, (Object) ((Failure) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    /* compiled from: Result.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public static Object a(Object obj) {
        return obj;
    }

    public static boolean a(Object obj, Object obj2) {
        return (obj2 instanceof Result) && j.a(obj, ((Result) obj2).a());
    }

    public static final Throwable b(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).exception;
        }
        return null;
    }

    public static int c(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static final boolean d(Object obj) {
        return obj instanceof Failure;
    }

    public static final boolean e(Object obj) {
        return !(obj instanceof Failure);
    }

    public static String f(Object obj) {
        if (obj instanceof Failure) {
            return obj.toString();
        }
        return "Success(" + obj + ')';
    }

    public final /* synthetic */ Object a() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return a(this.value, obj);
    }

    public int hashCode() {
        return c(this.value);
    }

    public String toString() {
        return f(this.value);
    }
}
