package c.e.a.b.g.f;

import java.util.Arrays;

public final class Yc {

    /* renamed from: a  reason: collision with root package name */
    public final int f10294a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f10295b;

    public Yc(int i2, byte[] bArr) {
        this.f10294a = i2;
        this.f10295b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Yc)) {
            return false;
        }
        Yc yc = (Yc) obj;
        return this.f10294a == yc.f10294a && Arrays.equals(this.f10295b, yc.f10295b);
    }

    public final int hashCode() {
        return ((this.f10294a + 527) * 31) + Arrays.hashCode(this.f10295b);
    }
}
