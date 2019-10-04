package c.c.a.e.d.m;

/* compiled from: PaymentEntities.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final long f5231a;

    public /* synthetic */ a(long j2) {
        this.f5231a = j2;
    }

    public static final /* synthetic */ a a(long j2) {
        return new a(j2);
    }

    public static boolean a(long j2, Object obj) {
        if (obj instanceof a) {
            if (j2 == ((a) obj).a()) {
                return true;
            }
        }
        return false;
    }

    public static long b(long j2) {
        return j2;
    }

    public static int c(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static String d(long j2) {
        return "CreditBalance(value=" + j2 + ")";
    }

    public final /* synthetic */ long a() {
        return this.f5231a;
    }

    public boolean equals(Object obj) {
        return a(this.f5231a, obj);
    }

    public int hashCode() {
        return c(this.f5231a);
    }

    public String toString() {
        return d(this.f5231a);
    }
}
