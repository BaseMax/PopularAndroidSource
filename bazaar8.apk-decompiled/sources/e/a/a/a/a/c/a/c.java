package e.a.a.a.a.c.a;

/* compiled from: ExponentialBackoff */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final long f13723a;

    /* renamed from: b  reason: collision with root package name */
    public final int f13724b;

    public c(long j2, int i2) {
        this.f13723a = j2;
        this.f13724b = i2;
    }

    public long getDelayMillis(int i2) {
        double d2 = (double) this.f13723a;
        double pow = Math.pow((double) this.f13724b, (double) i2);
        Double.isNaN(d2);
        return (long) (d2 * pow);
    }
}
