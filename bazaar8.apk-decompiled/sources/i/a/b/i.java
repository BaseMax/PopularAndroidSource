package i.a.b;

/* compiled from: BroadcastChannel.kt */
public final class i {
    public static final <E> h<E> a(int i2) {
        if (i2 == -2) {
            return new f(j.f14713c.a());
        }
        if (i2 == -1) {
            return new p();
        }
        if (i2 == 0) {
            throw new IllegalArgumentException("Unsupported 0 capacity for BroadcastChannel");
        } else if (i2 != Integer.MAX_VALUE) {
            return new f(i2);
        } else {
            throw new IllegalArgumentException("Unsupported UNLIMITED capacity for BroadcastChannel");
        }
    }
}
