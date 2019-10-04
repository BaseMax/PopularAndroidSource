package a.a.a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class b implements Serializable, Comparable<b> {
    public static final long FIRST_BIT_FLAGGED = Long.MIN_VALUE;
    private static final int[] c = {16, 8, 4, 2, 1};
    private static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final Map<Character, Integer> e = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    protected long f3a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected byte f4b = 0;
    private c f;
    private a g;

    private static long a(long j, int i) {
        long j2 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            if ((j & Long.MIN_VALUE) == Long.MIN_VALUE) {
                j2 |= 1;
            }
            j2 <<= 1;
            j <<= 2;
        }
        return j2 >>> 1;
    }

    private static long a(long j, long j2) {
        return j & (-1 >>> ((int) (64 - j2)));
    }

    public final boolean enclosesCircleAroundPoint(c cVar, double d2) {
        return false;
    }

    static {
        int length = d.length;
        for (int i = 0; i < length; i++) {
            e.put(Character.valueOf(d[i]), Integer.valueOf(i));
        }
    }

    protected b() {
    }

    public static b withCharacterPrecision(double d2, double d3, int i) {
        if (i <= 12) {
            int i2 = i * 5;
            b bVar = new b(d2, d3, i2 <= 60 ? i2 : 60);
            return bVar;
        }
        throw new IllegalArgumentException("A geohash can only be 12 character long.");
    }

    public static b withBitPrecision(double d2, double d3, int i) {
        if (i > 64) {
            throw new IllegalArgumentException("A Geohash can only be 64 bits long!");
        } else if (Math.abs(d2) > 90.0d || Math.abs(d3) > 180.0d) {
            throw new IllegalArgumentException("Can't have lat/lon values out of (-90,90)/(-180/180)");
        } else {
            b bVar = new b(d2, d3, i);
            return bVar;
        }
    }

    public static b fromBinaryString(String str) {
        b bVar = new b();
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == '1') {
                bVar.d();
            } else if (str.charAt(i) == '0') {
                bVar.e();
            } else {
                throw new IllegalArgumentException(str + " is not a valid geohash as a binary string");
            }
        }
        bVar.f3a <<= 64 - bVar.f4b;
        return a(bVar.a(), bVar.b());
    }

    public static b fromGeohashString(String str) {
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        b bVar = new b();
        int i = 0;
        boolean z = true;
        while (i < str.length()) {
            int intValue = e.get(Character.valueOf(str.charAt(i))).intValue();
            boolean z2 = z;
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = c[i2];
                if (z2) {
                    a(bVar, dArr2, (i3 & intValue) != 0);
                } else {
                    a(bVar, dArr, (i3 & intValue) != 0);
                }
                z2 = !z2;
            }
            i++;
            z = z2;
        }
        bVar.f = new c((dArr[0] + dArr[1]) / 2.0d, (dArr2[0] + dArr2[1]) / 2.0d);
        a(bVar, dArr, dArr2);
        bVar.f3a <<= 64 - bVar.f4b;
        return bVar;
    }

    public static b fromLongValue(long j, int i) {
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        b bVar = new b();
        String binaryString = Long.toBinaryString(j);
        while (binaryString.length() < 64) {
            binaryString = "0".concat(String.valueOf(binaryString));
        }
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            if (z) {
                a(bVar, dArr2, binaryString.charAt(i2) != '0');
            } else {
                a(bVar, dArr, binaryString.charAt(i2) != '0');
            }
            z = !z;
        }
        bVar.f = new c((dArr[0] + dArr[1]) / 2.0d, (dArr2[0] + dArr2[1]) / 2.0d);
        a(bVar, dArr, dArr2);
        bVar.f3a <<= 64 - bVar.f4b;
        return bVar;
    }

    public static String geoHashStringWithCharacterPrecision(double d2, double d3, int i) {
        return withCharacterPrecision(d2, d3, i).toBase32();
    }

    private b(double d2, double d3, int i) {
        this.f = new c(d2, d3);
        int min = Math.min(i, 64);
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        boolean z = true;
        while (this.f4b < min) {
            if (z) {
                a(d3, dArr2);
            } else {
                a(d2, dArr);
            }
            z = !z;
        }
        a(this, dArr, dArr2);
        this.f3a <<= 64 - min;
    }

    private static void a(b bVar, double[] dArr, double[] dArr2) {
        bVar.g = new a(new c(dArr[0], dArr2[0]), new c(dArr[1], dArr2[1]));
    }

    public final b next(int i) {
        return fromOrd(ord() + ((long) i), this.f4b);
    }

    public final b next() {
        return next(1);
    }

    public final b prev() {
        return next(-1);
    }

    public final long ord() {
        return this.f3a >>> (64 - this.f4b);
    }

    public final int getCharacterPrecision() {
        byte b2 = this.f4b;
        if (b2 % 5 == 0) {
            return b2 / 5;
        }
        throw new IllegalStateException("precision of GeoHash is not divisble by 5: ".concat(String.valueOf(this)));
    }

    public static b fromOrd(long j, int i) {
        return fromLongValue(j << (64 - i), i);
    }

    public static long stepsBetween(b bVar, b bVar2) {
        if (bVar.significantBits() == bVar2.significantBits()) {
            return bVar2.ord() - bVar.ord();
        }
        throw new IllegalArgumentException("It is only valid to compare the number of steps between two hashes if they have the same number of significant bits");
    }

    private void a(double d2, double[] dArr) {
        double d3 = (dArr[0] + dArr[1]) / 2.0d;
        if (d2 >= d3) {
            d();
            dArr[0] = d3;
            return;
        }
        e();
        dArr[1] = d3;
    }

    private static void a(b bVar, double[] dArr, boolean z) {
        double d2 = (dArr[0] + dArr[1]) / 2.0d;
        if (z) {
            bVar.d();
            dArr[0] = d2;
            return;
        }
        bVar.e();
        dArr[1] = d2;
    }

    public final b[] getAdjacent() {
        b northernNeighbour = getNorthernNeighbour();
        b easternNeighbour = getEasternNeighbour();
        b southernNeighbour = getSouthernNeighbour();
        return new b[]{northernNeighbour, northernNeighbour.getEasternNeighbour(), easternNeighbour, southernNeighbour.getEasternNeighbour(), southernNeighbour, southernNeighbour.getWesternNeighbour(), getWesternNeighbour(), northernNeighbour.getWesternNeighbour()};
    }

    public final int significantBits() {
        return this.f4b;
    }

    public final long longValue() {
        return this.f3a;
    }

    public final String toBase32() {
        if (this.f4b % 5 == 0) {
            StringBuilder sb = new StringBuilder();
            long j = this.f3a;
            double d2 = (double) this.f4b;
            Double.isNaN(d2);
            int ceil = (int) Math.ceil(d2 / 5.0d);
            for (int i = 0; i < ceil; i++) {
                sb.append(d[(int) ((-576460752303423488L & j) >>> 59)]);
                j <<= 5;
            }
            return sb.toString();
        }
        throw new IllegalStateException("Cannot convert a geohash to base32 if the precision is not a multiple of 5.");
    }

    public final boolean within(b bVar) {
        long j = this.f3a;
        byte b2 = bVar.f4b;
        return (j & (b2 == 0 ? 0 : -9223372036854775808 >> (b2 - 1))) == bVar.f3a;
    }

    public final boolean contains(c cVar) {
        return this.g.contains(cVar);
    }

    public final c getPoint() {
        return this.f;
    }

    public final c getBoundingBoxCenterPoint() {
        return this.g.getCenterPoint();
    }

    public final a getBoundingBox() {
        return this.g;
    }

    private static b a(long[] jArr, long[] jArr2) {
        b bVar = new b();
        jArr[0] = jArr[0] << ((int) (64 - jArr[1]));
        jArr2[0] = jArr2[0] << ((int) (64 - jArr2[1]));
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        boolean z = false;
        for (int i = 0; ((long) i) < jArr[1] + jArr2[1]; i++) {
            if (z) {
                a(bVar, dArr, (jArr[0] & Long.MIN_VALUE) == Long.MIN_VALUE);
                jArr[0] = jArr[0] << 1;
            } else {
                a(bVar, dArr2, (jArr2[0] & Long.MIN_VALUE) == Long.MIN_VALUE);
                jArr2[0] = jArr2[0] << 1;
            }
            z = !z;
        }
        bVar.f3a <<= 64 - bVar.f4b;
        a(bVar, dArr, dArr2);
        bVar.f = bVar.g.getCenterPoint();
        return bVar;
    }

    public final b getNorthernNeighbour() {
        long[] a2 = a();
        long[] b2 = b();
        a2[0] = a2[0] + 1;
        a2[0] = a(a2[0], a2[1]);
        return a(a2, b2);
    }

    public final b getSouthernNeighbour() {
        long[] a2 = a();
        long[] b2 = b();
        a2[0] = a2[0] - 1;
        a2[0] = a(a2[0], a2[1]);
        return a(a2, b2);
    }

    public final b getEasternNeighbour() {
        long[] a2 = a();
        long[] b2 = b();
        b2[0] = b2[0] + 1;
        b2[0] = a(b2[0], b2[1]);
        return a(a2, b2);
    }

    public final b getWesternNeighbour() {
        long[] a2 = a();
        long[] b2 = b();
        b2[0] = b2[0] - 1;
        b2[0] = a(b2[0], b2[1]);
        return a(a2, b2);
    }

    private long[] a() {
        return new long[]{a(this.f3a << 1, c()[0]), (long) c()[0]};
    }

    private long[] b() {
        return new long[]{a(this.f3a, c()[1]), (long) c()[1]};
    }

    private int[] c() {
        byte b2 = this.f4b;
        if (b2 % 2 == 0) {
            return new int[]{b2 / 2, b2 / 2};
        }
        return new int[]{b2 / 2, (b2 / 2) + 1};
    }

    private void d() {
        this.f4b = (byte) (this.f4b + 1);
        this.f3a <<= 1;
        this.f3a |= 1;
    }

    private void e() {
        this.f4b = (byte) (this.f4b + 1);
        this.f3a <<= 1;
    }

    public final String toString() {
        if (this.f4b % 5 == 0) {
            return String.format("%s -> %s -> %s", new Object[]{Long.toBinaryString(this.f3a), this.g, toBase32()});
        }
        return String.format("%s -> %s, bits: %d", new Object[]{Long.toBinaryString(this.f3a), this.g, Byte.valueOf(this.f4b)});
    }

    public final String toBinaryString() {
        StringBuilder sb = new StringBuilder();
        long j = this.f3a;
        for (int i = 0; i < this.f4b; i++) {
            if ((j & Long.MIN_VALUE) == Long.MIN_VALUE) {
                sb.append('1');
            } else {
                sb.append('0');
            }
            j <<= 1;
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (bVar.f4b == this.f4b && bVar.f3a == this.f3a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f3a;
        return ((((int) (j ^ (j >>> 32))) + 527) * 31) + this.f4b;
    }

    public final int compareTo(b bVar) {
        int i = ((this.f3a ^ Long.MIN_VALUE) > (Long.MIN_VALUE ^ bVar.f3a) ? 1 : ((this.f3a ^ Long.MIN_VALUE) == (Long.MIN_VALUE ^ bVar.f3a) ? 0 : -1));
        if (i != 0) {
            return i;
        }
        return Integer.compare(this.f4b, bVar.f4b);
    }
}
