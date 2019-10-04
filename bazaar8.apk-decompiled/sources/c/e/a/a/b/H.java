package c.e.a.a.b;

import c.e.a.a.o.I;

/* compiled from: WavUtil */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public static final int f7416a = I.b("RIFF");

    /* renamed from: b  reason: collision with root package name */
    public static final int f7417b = I.b("WAVE");

    /* renamed from: c  reason: collision with root package name */
    public static final int f7418c = I.b("fmt ");

    /* renamed from: d  reason: collision with root package name */
    public static final int f7419d = I.b("data");

    public static int a(int i2, int i3) {
        if (i2 != 1) {
            int i4 = 0;
            if (i2 == 3) {
                if (i3 == 32) {
                    i4 = 4;
                }
                return i4;
            } else if (i2 != 65534) {
                if (i2 != 6) {
                    return i2 != 7 ? 0 : 268435456;
                }
                return 536870912;
            }
        }
        return I.c(i3);
    }
}
