package c.e.a.a.p;

import c.e.a.a.o.v;

/* compiled from: DolbyVisionConfig */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final int f9697a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9698b;

    /* renamed from: c  reason: collision with root package name */
    public final String f9699c;

    public j(int i2, int i3, String str) {
        this.f9697a = i2;
        this.f9698b = i3;
        this.f9699c = str;
    }

    public static j a(v vVar) {
        String str;
        vVar.f(2);
        int u = vVar.u();
        int i2 = u >> 1;
        int u2 = ((vVar.u() >> 3) & 31) | ((u & 1) << 5);
        if (i2 == 4 || i2 == 5) {
            str = "dvhe";
        } else if (i2 == 8) {
            str = "hev1";
        } else if (i2 != 9) {
            return null;
        } else {
            str = "avc3";
        }
        return new j(i2, u2, str + ".0" + i2 + ".0" + u2);
    }
}
