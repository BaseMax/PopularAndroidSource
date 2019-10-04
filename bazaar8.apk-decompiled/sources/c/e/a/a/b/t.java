package c.e.a.a.b;

/* compiled from: AuxEffectInfo */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final int f7501a;

    /* renamed from: b  reason: collision with root package name */
    public final float f7502b;

    public t(int i2, float f2) {
        this.f7501a = i2;
        this.f7502b = f2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (!(this.f7501a == tVar.f7501a && Float.compare(tVar.f7502b, this.f7502b) == 0)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f7501a) * 31) + Float.floatToIntBits(this.f7502b);
    }
}
