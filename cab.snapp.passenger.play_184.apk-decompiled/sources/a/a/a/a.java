package a.a.a;

import java.io.Serializable;

public final class a implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private double f1a;

    /* renamed from: b  reason: collision with root package name */
    private double f2b;
    private double c;
    private double d;

    public a(c cVar, c cVar2) {
        this(cVar.getLatitude(), cVar2.getLatitude(), cVar.getLongitude(), cVar2.getLongitude());
    }

    public a(double d2, double d3, double d4, double d5) {
        this.c = Math.min(d4, d5);
        this.d = Math.max(d4, d5);
        this.f1a = Math.min(d2, d3);
        this.f2b = Math.max(d2, d3);
    }

    public a(a aVar) {
        this(aVar.f1a, aVar.f2b, aVar.c, aVar.d);
    }

    public final c getUpperLeft() {
        return new c(this.f2b, this.c);
    }

    public final c getLowerRight() {
        return new c(this.f1a, this.d);
    }

    public final double getLatitudeSize() {
        return this.f2b - this.f1a;
    }

    public final double getLongitudeSize() {
        return this.d - this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f1a == aVar.f1a && this.c == aVar.c && this.f2b == aVar.f2b && this.d == aVar.d;
        }
    }

    public final int hashCode() {
        return ((((((a(this.f1a) + 629) * 37) + a(this.f2b)) * 37) + a(this.c)) * 37) + a(this.d);
    }

    private static int a(double d2) {
        long doubleToLongBits = Double.doubleToLongBits(d2);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public final boolean contains(c cVar) {
        return cVar.getLatitude() >= this.f1a && cVar.getLongitude() >= this.c && cVar.getLatitude() <= this.f2b && cVar.getLongitude() <= this.d;
    }

    public final boolean intersects(a aVar) {
        return aVar.c <= this.d && aVar.d >= this.c && aVar.f1a <= this.f2b && aVar.f2b >= this.f1a;
    }

    public final String toString() {
        return getUpperLeft() + " -> " + getLowerRight();
    }

    public final c getCenterPoint() {
        return new c((this.f1a + this.f2b) / 2.0d, (this.c + this.d) / 2.0d);
    }

    public final void expandToInclude(a aVar) {
        double d2 = aVar.c;
        if (d2 < this.c) {
            this.c = d2;
        }
        double d3 = aVar.d;
        if (d3 > this.d) {
            this.d = d3;
        }
        double d4 = aVar.f1a;
        if (d4 < this.f1a) {
            this.f1a = d4;
        }
        double d5 = aVar.f2b;
        if (d5 > this.f2b) {
            this.f2b = d5;
        }
    }

    public final double getMinLon() {
        return this.c;
    }

    public final double getMinLat() {
        return this.f1a;
    }

    public final double getMaxLat() {
        return this.f2b;
    }

    public final double getMaxLon() {
        return this.d;
    }
}
