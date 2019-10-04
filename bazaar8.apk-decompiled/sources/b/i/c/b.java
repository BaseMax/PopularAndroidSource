package b.i.c;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

/* compiled from: PathParser */
public class b {

    /* compiled from: PathParser */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2636a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f2637b;
    }

    /* renamed from: b.i.c.b$b  reason: collision with other inner class name */
    /* compiled from: PathParser */
    public static class C0029b {

        /* renamed from: a  reason: collision with root package name */
        public char f2638a;

        /* renamed from: b  reason: collision with root package name */
        public float[] f2639b;

        public C0029b(char c2, float[] fArr) {
            this.f2638a = c2;
            this.f2639b = fArr;
        }

        public static void a(C0029b[] bVarArr, Path path) {
            float[] fArr = new float[6];
            char c2 = 'm';
            for (int i2 = 0; i2 < bVarArr.length; i2++) {
                a(path, fArr, c2, bVarArr[i2].f2638a, bVarArr[i2].f2639b);
                c2 = bVarArr[i2].f2638a;
            }
        }

        public C0029b(C0029b bVar) {
            this.f2638a = bVar.f2638a;
            float[] fArr = bVar.f2639b;
            this.f2639b = b.a(fArr, 0, fArr.length);
        }

        public void a(C0029b bVar, C0029b bVar2, float f2) {
            this.f2638a = bVar.f2638a;
            int i2 = 0;
            while (true) {
                float[] fArr = bVar.f2639b;
                if (i2 < fArr.length) {
                    this.f2639b[i2] = (fArr[i2] * (1.0f - f2)) + (bVar2.f2639b[i2] * f2);
                    i2++;
                } else {
                    return;
                }
            }
        }

        public static void a(Path path, float[] fArr, char c2, char c3, float[] fArr2) {
            int i2;
            int i3;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            Path path2 = path;
            char c4 = c3;
            float[] fArr3 = fArr2;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[2];
            float f15 = fArr[3];
            float f16 = fArr[4];
            float f17 = fArr[5];
            switch (c4) {
                case 'A':
                case 'a':
                    i2 = 7;
                    break;
                case 'C':
                case 'c':
                    i2 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i2 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i2 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path2.moveTo(f16, f17);
                    f12 = f16;
                    f14 = f12;
                    f13 = f17;
                    f15 = f13;
                    break;
            }
            i2 = 2;
            float f18 = f12;
            float f19 = f13;
            float f20 = f16;
            float f21 = f17;
            int i4 = 0;
            char c5 = c2;
            while (i4 < fArr3.length) {
                if (c4 != 'A') {
                    if (c4 == 'C') {
                        i3 = i4;
                        int i5 = i3 + 2;
                        int i6 = i3 + 3;
                        int i7 = i3 + 4;
                        int i8 = i3 + 5;
                        path.cubicTo(fArr3[i3 + 0], fArr3[i3 + 1], fArr3[i5], fArr3[i6], fArr3[i7], fArr3[i8]);
                        f18 = fArr3[i7];
                        float f22 = fArr3[i8];
                        float f23 = fArr3[i5];
                        float f24 = fArr3[i6];
                        f19 = f22;
                        f15 = f24;
                        f14 = f23;
                    } else if (c4 == 'H') {
                        i3 = i4;
                        int i9 = i3 + 0;
                        path2.lineTo(fArr3[i9], f19);
                        f18 = fArr3[i9];
                    } else if (c4 == 'Q') {
                        i3 = i4;
                        int i10 = i3 + 0;
                        int i11 = i3 + 1;
                        int i12 = i3 + 2;
                        int i13 = i3 + 3;
                        path2.quadTo(fArr3[i10], fArr3[i11], fArr3[i12], fArr3[i13]);
                        float f25 = fArr3[i10];
                        float f26 = fArr3[i11];
                        f18 = fArr3[i12];
                        f19 = fArr3[i13];
                        f14 = f25;
                        f15 = f26;
                    } else if (c4 == 'V') {
                        i3 = i4;
                        int i14 = i3 + 0;
                        path2.lineTo(f18, fArr3[i14]);
                        f19 = fArr3[i14];
                    } else if (c4 != 'a') {
                        if (c4 == 'c') {
                            int i15 = i4 + 2;
                            int i16 = i4 + 3;
                            int i17 = i4 + 4;
                            int i18 = i4 + 5;
                            path.rCubicTo(fArr3[i4 + 0], fArr3[i4 + 1], fArr3[i15], fArr3[i16], fArr3[i17], fArr3[i18]);
                            f5 = fArr3[i15] + f18;
                            f4 = fArr3[i16] + f19;
                            f18 += fArr3[i17];
                            f6 = fArr3[i18];
                            f19 += f6;
                            f14 = f5;
                            f15 = f4;
                        } else if (c4 != 'h') {
                            if (c4 != 'q') {
                                if (c4 == 'v') {
                                    int i19 = i4 + 0;
                                    path2.rLineTo(0.0f, fArr3[i19]);
                                    f7 = fArr3[i19];
                                } else if (c4 != 'L') {
                                    if (c4 == 'M') {
                                        int i20 = i4 + 0;
                                        f18 = fArr3[i20];
                                        int i21 = i4 + 1;
                                        f19 = fArr3[i21];
                                        if (i4 > 0) {
                                            path2.lineTo(fArr3[i20], fArr3[i21]);
                                        } else {
                                            path2.moveTo(fArr3[i20], fArr3[i21]);
                                        }
                                    } else if (c4 == 'S') {
                                        if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                            f18 = (f18 * 2.0f) - f14;
                                            f19 = (f19 * 2.0f) - f15;
                                        }
                                        float f27 = f19;
                                        int i22 = i4 + 0;
                                        int i23 = i4 + 1;
                                        int i24 = i4 + 2;
                                        int i25 = i4 + 3;
                                        path.cubicTo(f18, f27, fArr3[i22], fArr3[i23], fArr3[i24], fArr3[i25]);
                                        f5 = fArr3[i22];
                                        f4 = fArr3[i23];
                                        f18 = fArr3[i24];
                                        f19 = fArr3[i25];
                                        f14 = f5;
                                        f15 = f4;
                                    } else if (c4 == 'T') {
                                        if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                            f18 = (f18 * 2.0f) - f14;
                                            f19 = (f19 * 2.0f) - f15;
                                        }
                                        int i26 = i4 + 0;
                                        int i27 = i4 + 1;
                                        path2.quadTo(f18, f19, fArr3[i26], fArr3[i27]);
                                        float f28 = fArr3[i26];
                                        float f29 = fArr3[i27];
                                        f15 = f19;
                                        f14 = f18;
                                        i3 = i4;
                                        f18 = f28;
                                        f19 = f29;
                                    } else if (c4 == 'l') {
                                        int i28 = i4 + 0;
                                        int i29 = i4 + 1;
                                        path2.rLineTo(fArr3[i28], fArr3[i29]);
                                        f18 += fArr3[i28];
                                        f7 = fArr3[i29];
                                    } else if (c4 == 'm') {
                                        int i30 = i4 + 0;
                                        f18 += fArr3[i30];
                                        int i31 = i4 + 1;
                                        f19 += fArr3[i31];
                                        if (i4 > 0) {
                                            path2.rLineTo(fArr3[i30], fArr3[i31]);
                                        } else {
                                            path2.rMoveTo(fArr3[i30], fArr3[i31]);
                                        }
                                    } else if (c4 == 's') {
                                        if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                            float f30 = f18 - f14;
                                            f8 = f19 - f15;
                                            f9 = f30;
                                        } else {
                                            f9 = 0.0f;
                                            f8 = 0.0f;
                                        }
                                        int i32 = i4 + 0;
                                        int i33 = i4 + 1;
                                        int i34 = i4 + 2;
                                        int i35 = i4 + 3;
                                        path.rCubicTo(f9, f8, fArr3[i32], fArr3[i33], fArr3[i34], fArr3[i35]);
                                        f5 = fArr3[i32] + f18;
                                        f4 = fArr3[i33] + f19;
                                        f18 += fArr3[i34];
                                        f6 = fArr3[i35];
                                    } else if (c4 == 't') {
                                        if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                            f10 = f18 - f14;
                                            f11 = f19 - f15;
                                        } else {
                                            f11 = 0.0f;
                                            f10 = 0;
                                        }
                                        int i36 = i4 + 0;
                                        int i37 = i4 + 1;
                                        path2.rQuadTo(f10, f11, fArr3[i36], fArr3[i37]);
                                        float f31 = f10 + f18;
                                        float f32 = f11 + f19;
                                        f18 += fArr3[i36];
                                        f19 += fArr3[i37];
                                        f15 = f32;
                                        f14 = f31;
                                    }
                                    f21 = f19;
                                    f20 = f18;
                                } else {
                                    int i38 = i4 + 0;
                                    int i39 = i4 + 1;
                                    path2.lineTo(fArr3[i38], fArr3[i39]);
                                    f18 = fArr3[i38];
                                    f19 = fArr3[i39];
                                }
                                f19 += f7;
                            } else {
                                int i40 = i4 + 0;
                                int i41 = i4 + 1;
                                int i42 = i4 + 2;
                                int i43 = i4 + 3;
                                path2.rQuadTo(fArr3[i40], fArr3[i41], fArr3[i42], fArr3[i43]);
                                f5 = fArr3[i40] + f18;
                                f4 = fArr3[i41] + f19;
                                f18 += fArr3[i42];
                                f6 = fArr3[i43];
                            }
                            f19 += f6;
                            f14 = f5;
                            f15 = f4;
                        } else {
                            int i44 = i4 + 0;
                            path2.rLineTo(fArr3[i44], 0.0f);
                            f18 += fArr3[i44];
                        }
                        i3 = i4;
                    } else {
                        int i45 = i4 + 5;
                        float f33 = fArr3[i45] + f18;
                        int i46 = i4 + 6;
                        float f34 = fArr3[i46] + f19;
                        float f35 = fArr3[i4 + 0];
                        float f36 = fArr3[i4 + 1];
                        float f37 = f19;
                        i3 = i4;
                        a(path, f18, f19, f33, f34, f35, f36, fArr3[i4 + 2], fArr3[i4 + 3] != 0.0f, fArr3[i4 + 4] != 0.0f);
                        f2 = f18 + fArr3[i45];
                        f3 = f37 + fArr3[i46];
                    }
                    i4 = i3 + i2;
                    c5 = c3;
                    c4 = c5;
                } else {
                    i3 = i4;
                    int i47 = i3 + 5;
                    int i48 = i3 + 6;
                    a(path, f18, f19, fArr3[i47], fArr3[i48], fArr3[i3 + 0], fArr3[i3 + 1], fArr3[i3 + 2], fArr3[i3 + 3] != 0.0f, fArr3[i3 + 4] != 0.0f);
                    f2 = fArr3[i47];
                    f3 = fArr3[i48];
                }
                f15 = f19;
                f14 = f18;
                i4 = i3 + i2;
                c5 = c3;
                c4 = c5;
            }
            fArr[0] = f18;
            fArr[1] = f19;
            fArr[2] = f14;
            fArr[3] = f15;
            fArr[4] = f20;
            fArr[5] = f21;
        }

        public static void a(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
            double d2;
            double d3;
            float f9 = f2;
            float f10 = f4;
            float f11 = f6;
            boolean z3 = z2;
            double radians = Math.toRadians((double) f8);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d4 = (double) f9;
            Double.isNaN(d4);
            double d5 = d4 * cos;
            double d6 = d4;
            double d7 = (double) f3;
            Double.isNaN(d7);
            double d8 = (double) f11;
            Double.isNaN(d8);
            double d9 = (d5 + (d7 * sin)) / d8;
            double d10 = (double) (-f9);
            Double.isNaN(d10);
            Double.isNaN(d7);
            double d11 = (d10 * sin) + (d7 * cos);
            double d12 = d7;
            double d13 = (double) f7;
            Double.isNaN(d13);
            double d14 = (double) f10;
            Double.isNaN(d14);
            double d15 = d11 / d13;
            double d16 = (double) f5;
            Double.isNaN(d16);
            Double.isNaN(d8);
            double d17 = ((d14 * cos) + (d16 * sin)) / d8;
            double d18 = d8;
            double d19 = (double) (-f10);
            Double.isNaN(d19);
            Double.isNaN(d16);
            Double.isNaN(d13);
            double d20 = ((d19 * sin) + (d16 * cos)) / d13;
            double d21 = d9 - d17;
            double d22 = d15 - d20;
            double d23 = (d9 + d17) / 2.0d;
            double d24 = (d15 + d20) / 2.0d;
            double d25 = sin;
            double d26 = (d21 * d21) + (d22 * d22);
            if (d26 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d27 = (1.0d / d26) - 0.25d;
            if (d27 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d26);
                float sqrt = (float) (Math.sqrt(d26) / 1.99999d);
                a(path, f2, f3, f4, f5, f11 * sqrt, f7 * sqrt, f8, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d27);
            double d28 = d21 * sqrt2;
            double d29 = sqrt2 * d22;
            boolean z4 = z2;
            if (z == z4) {
                d3 = d23 - d29;
                d2 = d24 + d28;
            } else {
                d3 = d23 + d29;
                d2 = d24 - d28;
            }
            double atan2 = Math.atan2(d15 - d2, d9 - d3);
            double atan22 = Math.atan2(d20 - d2, d17 - d3) - atan2;
            if (z4 != (atan22 >= 0.0d)) {
                atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            Double.isNaN(d18);
            double d30 = d3 * d18;
            Double.isNaN(d13);
            double d31 = d2 * d13;
            a(path, (d30 * cos) - (d31 * d25), (d30 * d25) + (d31 * cos), d18, d13, d6, d12, radians, atan2, atan22);
        }

        public static void a(Path path, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
            double d11 = d4;
            int ceil = (int) Math.ceil(Math.abs((d10 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d8);
            double sin = Math.sin(d8);
            double cos2 = Math.cos(d9);
            double sin2 = Math.sin(d9);
            double d12 = -d11;
            double d13 = d12 * cos;
            double d14 = d5 * sin;
            double d15 = (d13 * sin2) - (d14 * cos2);
            double d16 = d12 * sin;
            double d17 = d5 * cos;
            double d18 = (sin2 * d16) + (cos2 * d17);
            double d19 = (double) ceil;
            Double.isNaN(d19);
            double d20 = d10 / d19;
            double d21 = d6;
            double d22 = d7;
            double d23 = d18;
            double d24 = d15;
            int i2 = 0;
            double d25 = d9;
            while (i2 < ceil) {
                double d26 = d25 + d20;
                double sin3 = Math.sin(d26);
                double cos3 = Math.cos(d26);
                double d27 = (d2 + ((d11 * cos) * cos3)) - (d14 * sin3);
                double d28 = d3 + (d11 * sin * cos3) + (d17 * sin3);
                double d29 = (d13 * sin3) - (d14 * cos3);
                double d30 = (sin3 * d16) + (cos3 * d17);
                double d31 = d26 - d25;
                double tan = Math.tan(d31 / 2.0d);
                double sin4 = (Math.sin(d31) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                int i3 = ceil;
                double d32 = cos;
                path.rLineTo(0.0f, 0.0f);
                float f2 = (float) (d22 + (d23 * sin4));
                float f3 = (float) (d27 - (sin4 * d29));
                path.cubicTo((float) (d21 + (d24 * sin4)), f2, f3, (float) (d28 - (sin4 * d30)), (float) d27, (float) d28);
                i2++;
                d20 = d20;
                ceil = i3;
                sin = sin;
                d22 = d28;
                d16 = d16;
                d25 = d26;
                d23 = d30;
                d24 = d29;
                cos = d32;
                d11 = d4;
                d21 = d27;
            }
        }
    }

    public static float[] a(float[] fArr, int i2, int i3) {
        if (i2 <= i3) {
            int length = fArr.length;
            if (i2 < 0 || i2 > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i4 = i3 - i2;
            int min = Math.min(i4, length - i2);
            float[] fArr2 = new float[i4];
            System.arraycopy(fArr, i2, fArr2, 0, min);
            return fArr2;
        }
        throw new IllegalArgumentException();
    }

    public static Path b(String str) {
        Path path = new Path();
        C0029b[] a2 = a(str);
        if (a2 == null) {
            return null;
        }
        try {
            C0029b.a(a2, path);
            return path;
        } catch (RuntimeException e2) {
            throw new RuntimeException("Error in parsing " + str, e2);
        }
    }

    public static float[] c(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            a aVar = new a();
            int length = str.length();
            int i2 = 1;
            int i3 = 0;
            while (i2 < length) {
                a(str, i2, aVar);
                int i4 = aVar.f2636a;
                if (i2 < i4) {
                    fArr[i3] = Float.parseFloat(str.substring(i2, i4));
                    i3++;
                }
                i2 = aVar.f2637b ? i4 : i4 + 1;
            }
            return a(fArr, 0, i3);
        } catch (NumberFormatException e2) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e2);
        }
    }

    public static void b(C0029b[] bVarArr, C0029b[] bVarArr2) {
        for (int i2 = 0; i2 < bVarArr2.length; i2++) {
            bVarArr[i2].f2638a = bVarArr2[i2].f2638a;
            for (int i3 = 0; i3 < bVarArr2[i2].f2639b.length; i3++) {
                bVarArr[i2].f2639b[i3] = bVarArr2[i2].f2639b[i3];
            }
        }
    }

    public static C0029b[] a(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        int i3 = 0;
        while (i2 < str.length()) {
            int a2 = a(str, i2);
            String trim = str.substring(i3, a2).trim();
            if (trim.length() > 0) {
                a((ArrayList<C0029b>) arrayList, trim.charAt(0), c(trim));
            }
            i3 = a2;
            i2 = a2 + 1;
        }
        if (i2 - i3 == 1 && i3 < str.length()) {
            a((ArrayList<C0029b>) arrayList, str.charAt(i3), new float[0]);
        }
        return (C0029b[]) arrayList.toArray(new C0029b[arrayList.size()]);
    }

    public static C0029b[] a(C0029b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        C0029b[] bVarArr2 = new C0029b[bVarArr.length];
        for (int i2 = 0; i2 < bVarArr.length; i2++) {
            bVarArr2[i2] = new C0029b(bVarArr[i2]);
        }
        return bVarArr2;
    }

    public static boolean a(C0029b[] bVarArr, C0029b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bVarArr.length; i2++) {
            if (bVarArr[i2].f2638a != bVarArr2[i2].f2638a || bVarArr[i2].f2639b.length != bVarArr2[i2].f2639b.length) {
                return false;
            }
        }
        return true;
    }

    public static int a(String str, int i2) {
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i2;
            }
            i2++;
        }
        return i2;
    }

    public static void a(ArrayList<C0029b> arrayList, char c2, float[] fArr) {
        arrayList.add(new C0029b(c2, fArr));
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0031, code lost:
        r2 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003a A[LOOP:0: B:1:0x0007->B:20:0x003a, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x003d A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r8, int r9, b.i.c.b.a r10) {
        /*
            r0 = 0
            r10.f2637b = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L_0x0007:
            int r5 = r8.length()
            if (r1 >= r5) goto L_0x003d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L_0x0035
            r6 = 69
            if (r5 == r6) goto L_0x0033
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L_0x0033
            switch(r5) {
                case 44: goto L_0x0035;
                case 45: goto L_0x002a;
                case 46: goto L_0x0022;
                default: goto L_0x0021;
            }
        L_0x0021:
            goto L_0x0031
        L_0x0022:
            if (r3 != 0) goto L_0x0027
            r2 = 0
            r3 = 1
            goto L_0x0037
        L_0x0027:
            r10.f2637b = r7
            goto L_0x0035
        L_0x002a:
            if (r1 == r9) goto L_0x0031
            if (r2 != 0) goto L_0x0031
            r10.f2637b = r7
            goto L_0x0035
        L_0x0031:
            r2 = 0
            goto L_0x0037
        L_0x0033:
            r2 = 1
            goto L_0x0037
        L_0x0035:
            r2 = 0
            r4 = 1
        L_0x0037:
            if (r4 == 0) goto L_0x003a
            goto L_0x003d
        L_0x003a:
            int r1 = r1 + 1
            goto L_0x0007
        L_0x003d:
            r10.f2636a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.c.b.a(java.lang.String, int, b.i.c.b$a):void");
    }
}
