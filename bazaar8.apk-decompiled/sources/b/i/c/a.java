package b.i.c;

import android.graphics.Color;

/* compiled from: ColorUtils */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<double[]> f2619a = new ThreadLocal<>();

    public static int a(int i2, int i3) {
        return 255 - (((255 - i3) * (255 - i2)) / 255);
    }

    public static int b(int i2, int i3) {
        int alpha = Color.alpha(i3);
        int alpha2 = Color.alpha(i2);
        int a2 = a(alpha2, alpha);
        return Color.argb(a2, a(Color.red(i2), alpha2, Color.red(i3), alpha, a2), a(Color.green(i2), alpha2, Color.green(i3), alpha, a2), a(Color.blue(i2), alpha2, Color.blue(i3), alpha, a2));
    }

    public static int c(int i2, int i3) {
        if (i3 >= 0 && i3 <= 255) {
            return (i2 & 16777215) | (i3 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }

    public static int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            return 0;
        }
        return (((i2 * 255) * i3) + ((i4 * i5) * (255 - i3))) / (i6 * 255);
    }

    public static double a(int i2) {
        double[] a2 = a();
        a(i2, a2);
        return a2[1] / 100.0d;
    }

    public static void a(int i2, double[] dArr) {
        a(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
    }

    public static void a(int i2, int i3, int i4, double[] dArr) {
        double d2;
        double d3;
        double d4;
        double[] dArr2 = dArr;
        if (dArr2.length == 3) {
            double d5 = (double) i2;
            Double.isNaN(d5);
            double d6 = d5 / 255.0d;
            if (d6 < 0.04045d) {
                d2 = d6 / 12.92d;
            } else {
                d2 = Math.pow((d6 + 0.055d) / 1.055d, 2.4d);
            }
            double d7 = d2;
            double d8 = (double) i3;
            Double.isNaN(d8);
            double d9 = d8 / 255.0d;
            if (d9 < 0.04045d) {
                d3 = d9 / 12.92d;
            } else {
                d3 = Math.pow((d9 + 0.055d) / 1.055d, 2.4d);
            }
            double d10 = d3;
            double d11 = (double) i4;
            Double.isNaN(d11);
            double d12 = d11 / 255.0d;
            if (d12 < 0.04045d) {
                d4 = d12 / 12.92d;
            } else {
                d4 = Math.pow((d12 + 0.055d) / 1.055d, 2.4d);
            }
            dArr2[0] = ((0.4124d * d7) + (0.3576d * d10) + (0.1805d * d4)) * 100.0d;
            dArr2[1] = ((0.2126d * d7) + (0.7152d * d10) + (0.0722d * d4)) * 100.0d;
            dArr2[2] = ((d7 * 0.0193d) + (d10 * 0.1192d) + (d4 * 0.9505d)) * 100.0d;
            return;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    public static double[] a() {
        double[] dArr = f2619a.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        f2619a.set(dArr2);
        return dArr2;
    }
}
