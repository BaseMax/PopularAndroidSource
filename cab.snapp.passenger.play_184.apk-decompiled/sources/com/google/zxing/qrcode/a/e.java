package com.google.zxing.qrcode.a;

import com.google.zxing.n;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    final com.google.zxing.common.b f4398a;

    /* renamed from: b  reason: collision with root package name */
    final List<d> f4399b;
    boolean c;
    private final int[] d;
    private final n e;

    static final class a implements Serializable, Comparator<d> {

        /* renamed from: a  reason: collision with root package name */
        private final float f4400a;

        /* synthetic */ a(float f, byte b2) {
            this(f);
        }

        private a(float f) {
            this.f4400a = f;
        }

        public final int compare(d dVar, d dVar2) {
            int compare = Integer.compare(dVar2.f4396a, dVar.f4396a);
            return compare == 0 ? Float.compare(Math.abs(dVar.getEstimatedModuleSize() - this.f4400a), Math.abs(dVar2.getEstimatedModuleSize() - this.f4400a)) : compare;
        }
    }

    static final class b implements Serializable, Comparator<d> {

        /* renamed from: a  reason: collision with root package name */
        private final float f4401a;

        /* synthetic */ b(float f, byte b2) {
            this(f);
        }

        private b(float f) {
            this.f4401a = f;
        }

        public final int compare(d dVar, d dVar2) {
            return Float.compare(Math.abs(dVar2.getEstimatedModuleSize() - this.f4401a), Math.abs(dVar.getEstimatedModuleSize() - this.f4401a));
        }
    }

    public e(com.google.zxing.common.b bVar) {
        this(bVar, null);
    }

    public e(com.google.zxing.common.b bVar, n nVar) {
        this.f4398a = bVar;
        this.f4399b = new ArrayList();
        this.d = new int[5];
        this.e = nVar;
    }

    private static float a(int[] iArr, int i) {
        return ((float) ((i - iArr[4]) - iArr[3])) - (((float) iArr[2]) / 2.0f);
    }

    static boolean a(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = ((float) i) / 7.0f;
        float f2 = f / 2.0f;
        if (Math.abs(f - ((float) iArr[0])) >= f2 || Math.abs(f - ((float) iArr[1])) >= f2 || Math.abs((f * 3.0f) - ((float) iArr[2])) >= 3.0f * f2 || Math.abs(f - ((float) iArr[3])) >= f2 || Math.abs(f - ((float) iArr[4])) >= f2) {
            return false;
        }
        return true;
    }

    private int[] b() {
        b(this.d);
        return this.d;
    }

    static void b(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
    }

    static void c(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private boolean a(int i, int i2) {
        int[] b2 = b();
        int i3 = 0;
        while (i >= i3 && i2 >= i3 && this.f4398a.get(i2 - i3, i - i3)) {
            b2[2] = b2[2] + 1;
            i3++;
        }
        if (b2[2] == 0) {
            return false;
        }
        while (i >= i3 && i2 >= i3 && !this.f4398a.get(i2 - i3, i - i3)) {
            b2[1] = b2[1] + 1;
            i3++;
        }
        if (b2[1] == 0) {
            return false;
        }
        while (i >= i3 && i2 >= i3 && this.f4398a.get(i2 - i3, i - i3)) {
            b2[0] = b2[0] + 1;
            i3++;
        }
        if (b2[0] == 0) {
            return false;
        }
        int height = this.f4398a.getHeight();
        int width = this.f4398a.getWidth();
        int i4 = 1;
        while (true) {
            int i5 = i + i4;
            if (i5 >= height) {
                break;
            }
            int i6 = i2 + i4;
            if (i6 >= width || !this.f4398a.get(i6, i5)) {
                break;
            }
            b2[2] = b2[2] + 1;
            i4++;
        }
        while (true) {
            int i7 = i + i4;
            if (i7 >= height) {
                break;
            }
            int i8 = i2 + i4;
            if (i8 >= width || this.f4398a.get(i8, i7)) {
                break;
            }
            b2[3] = b2[3] + 1;
            i4++;
        }
        if (b2[3] == 0) {
            return false;
        }
        while (true) {
            int i9 = i + i4;
            if (i9 >= height) {
                break;
            }
            int i10 = i2 + i4;
            if (i10 >= width || !this.f4398a.get(i10, i9)) {
                break;
            }
            b2[4] = b2[4] + 1;
            i4++;
        }
        if (b2[4] == 0) {
            return false;
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 < 5) {
                int i13 = b2[i11];
                if (i13 == 0) {
                    break;
                }
                i12 += i13;
                i11++;
            } else if (i12 >= 7) {
                float f = ((float) i12) / 7.0f;
                float f2 = f / 1.333f;
                return Math.abs(f - ((float) b2[0])) < f2 && Math.abs(f - ((float) b2[1])) < f2 && Math.abs((f * 3.0f) - ((float) b2[2])) < 3.0f * f2 && Math.abs(f - ((float) b2[3])) < f2 && Math.abs(f - ((float) b2[4])) < f2;
            }
        }
    }

    private float a(int i, int i2, int i3, int i4) {
        com.google.zxing.common.b bVar = this.f4398a;
        int height = bVar.getHeight();
        int[] b2 = b();
        int i5 = i;
        while (i5 >= 0 && bVar.get(i2, i5)) {
            b2[2] = b2[2] + 1;
            i5--;
        }
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i5 >= 0 && !bVar.get(i2, i5) && b2[1] <= i3) {
            b2[1] = b2[1] + 1;
            i5--;
        }
        if (i5 >= 0 && b2[1] <= i3) {
            while (i5 >= 0 && bVar.get(i2, i5) && b2[0] <= i3) {
                b2[0] = b2[0] + 1;
                i5--;
            }
            if (b2[0] > i3) {
                return Float.NaN;
            }
            int i6 = i + 1;
            while (i6 < height && bVar.get(i2, i6)) {
                b2[2] = b2[2] + 1;
                i6++;
            }
            if (i6 == height) {
                return Float.NaN;
            }
            while (i6 < height && !bVar.get(i2, i6) && b2[3] < i3) {
                b2[3] = b2[3] + 1;
                i6++;
            }
            if (i6 != height && b2[3] < i3) {
                while (i6 < height && bVar.get(i2, i6) && b2[4] < i3) {
                    b2[4] = b2[4] + 1;
                    i6++;
                }
                if (b2[4] < i3 && Math.abs(((((b2[0] + b2[1]) + b2[2]) + b2[3]) + b2[4]) - i4) * 5 < i4 * 2 && a(b2)) {
                    return a(b2, i6);
                }
            }
        }
        return Float.NaN;
    }

    private float b(int i, int i2, int i3, int i4) {
        com.google.zxing.common.b bVar = this.f4398a;
        int width = bVar.getWidth();
        int[] b2 = b();
        int i5 = i;
        while (i5 >= 0 && bVar.get(i5, i2)) {
            b2[2] = b2[2] + 1;
            i5--;
        }
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i5 >= 0 && !bVar.get(i5, i2) && b2[1] <= i3) {
            b2[1] = b2[1] + 1;
            i5--;
        }
        if (i5 >= 0 && b2[1] <= i3) {
            while (i5 >= 0 && bVar.get(i5, i2) && b2[0] <= i3) {
                b2[0] = b2[0] + 1;
                i5--;
            }
            if (b2[0] > i3) {
                return Float.NaN;
            }
            int i6 = i + 1;
            while (i6 < width && bVar.get(i6, i2)) {
                b2[2] = b2[2] + 1;
                i6++;
            }
            if (i6 == width) {
                return Float.NaN;
            }
            while (i6 < width && !bVar.get(i6, i2) && b2[3] < i3) {
                b2[3] = b2[3] + 1;
                i6++;
            }
            if (i6 != width && b2[3] < i3) {
                while (i6 < width && bVar.get(i6, i2) && b2[4] < i3) {
                    b2[4] = b2[4] + 1;
                    i6++;
                }
                if (b2[4] < i3 && Math.abs(((((b2[0] + b2[1]) + b2[2]) + b2[3]) + b2[4]) - i4) * 5 < i4 && a(b2)) {
                    return a(b2, i6);
                }
            }
        }
        return Float.NaN;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int[] iArr, int i, int i2) {
        boolean z = false;
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int a2 = (int) a(iArr, i2);
        float a3 = a(i, a2, iArr[2], i3);
        if (!Float.isNaN(a3)) {
            int i4 = (int) a3;
            float b2 = b(a2, i4, iArr[2], i3);
            if (!Float.isNaN(b2) && a(i4, (int) b2)) {
                float f = ((float) i3) / 7.0f;
                int i5 = 0;
                while (true) {
                    if (i5 >= this.f4399b.size()) {
                        break;
                    }
                    d dVar = this.f4399b.get(i5);
                    if (dVar.a(f, a3, b2)) {
                        this.f4399b.set(i5, dVar.b(a3, b2, f));
                        z = true;
                        break;
                    }
                    i5++;
                }
                if (!z) {
                    d dVar2 = new d(b2, a3, f);
                    this.f4399b.add(dVar2);
                    n nVar = this.e;
                    if (nVar != null) {
                        nVar.foundPossibleResultPoint(dVar2);
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        int size = this.f4399b.size();
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        for (d next : this.f4399b) {
            if (next.f4396a >= 2) {
                i++;
                f2 += next.getEstimatedModuleSize();
            }
        }
        if (i < 3) {
            return false;
        }
        float f3 = f2 / ((float) size);
        for (d estimatedModuleSize : this.f4399b) {
            f += Math.abs(estimatedModuleSize.getEstimatedModuleSize() - f3);
        }
        if (f <= f2 * 0.05f) {
            return true;
        }
        return false;
    }
}
