package i.a.b;

/* compiled from: Channel.kt */
public final class l {
    public static /* synthetic */ j a(int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        return a(i2);
    }

    public static final <E> j<E> a(int i2) {
        if (i2 == -2) {
            return new g(j.f14713c.a());
        }
        if (i2 == -1) {
            return new q();
        }
        if (i2 == 0) {
            return new v();
        }
        if (i2 != Integer.MAX_VALUE) {
            return new g(i2);
        }
        return new r();
    }
}
