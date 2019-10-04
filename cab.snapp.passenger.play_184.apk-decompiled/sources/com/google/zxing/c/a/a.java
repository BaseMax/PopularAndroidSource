package com.google.zxing.c.a;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.c.k;
import com.google.zxing.h;

public abstract class a extends k {

    /* renamed from: a  reason: collision with root package name */
    protected final int[] f4247a = new int[4];

    /* renamed from: b  reason: collision with root package name */
    protected final int[] f4248b = new int[8];
    protected final float[] c = new float[4];
    protected final float[] d = new float[4];
    protected final int[] e;
    protected final int[] f;

    protected a() {
        int[] iArr = this.f4248b;
        this.e = new int[(iArr.length / 2)];
        this.f = new int[(iArr.length / 2)];
    }

    protected static int a(int[] iArr, int[][] iArr2) throws h {
        for (int i = 0; i < iArr2.length; i++) {
            if (patternMatchVariance(iArr, iArr2[i], 0.45f) < 0.2f) {
                return i;
            }
        }
        throw h.getNotFoundInstance();
    }

    protected static void a(int[] iArr, float[] fArr) {
        float f2 = fArr[0];
        int i = 0;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] > f2) {
                f2 = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    protected static void b(int[] iArr, float[] fArr) {
        float f2 = fArr[0];
        int i = 0;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] < f2) {
                f2 = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    protected static boolean a(int[] iArr) {
        int i = iArr[0] + iArr[1];
        float f2 = ((float) i) / ((float) ((iArr[2] + i) + iArr[3]));
        if (f2 >= 0.7916667f && f2 <= 0.89285713f) {
            int i2 = Integer.MIN_VALUE;
            int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            for (int i4 : iArr) {
                if (i4 > i2) {
                    i2 = i4;
                }
                if (i4 < i3) {
                    i3 = i4;
                }
            }
            if (i2 < i3 * 10) {
                return true;
            }
        }
        return false;
    }
}
