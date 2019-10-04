package a.a.a;

import java.io.Serializable;

public final class c implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final double f5a;

    /* renamed from: b  reason: collision with root package name */
    private final double f6b;

    public c(double d, double d2) {
        this.f6b = d;
        this.f5a = d2;
        if (Math.abs(d) > 90.0d || Math.abs(d2) > 180.0d) {
            throw new IllegalArgumentException("The supplied coordinates " + this + " are out of range.");
        }
    }

    public c(c cVar) {
        this(cVar.f6b, cVar.f5a);
    }

    public final double getLatitude() {
        return this.f6b;
    }

    public final double getLongitude() {
        return this.f5a;
    }

    public final String toString() {
        return String.format("(" + this.f6b + "," + this.f5a + ")", new Object[0]);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (this.f6b == cVar.f6b && this.f5a == cVar.f5a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f6b);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f5a);
        return ((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 1302) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }
}
