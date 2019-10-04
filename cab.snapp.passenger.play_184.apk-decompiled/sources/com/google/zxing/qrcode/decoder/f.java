package com.google.zxing.qrcode.decoder;

import androidx.appcompat.widget.ActivityChooserView;

final class f {
    private static final int[][] c = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* renamed from: a  reason: collision with root package name */
    final ErrorCorrectionLevel f4416a;

    /* renamed from: b  reason: collision with root package name */
    final byte f4417b;

    private f(int i) {
        this.f4416a = ErrorCorrectionLevel.forBits((i >> 3) & 3);
        this.f4417b = (byte) (i & 7);
    }

    static int a(int i, int i2) {
        return Integer.bitCount(i ^ i2);
    }

    static f b(int i, int i2) {
        f c2 = c(i, i2);
        if (c2 != null) {
            return c2;
        }
        return c(i ^ 21522, i2 ^ 21522);
    }

    private static f c(int i, int i2) {
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i4 = 0;
        for (int[] iArr : c) {
            int i5 = iArr[0];
            if (i5 == i || i5 == i2) {
                return new f(iArr[1]);
            }
            int bitCount = Integer.bitCount(i ^ i5);
            if (bitCount < i3) {
                i4 = iArr[1];
                i3 = bitCount;
            }
            if (i != i2) {
                int bitCount2 = Integer.bitCount(i5 ^ i2);
                if (bitCount2 < i3) {
                    i4 = iArr[1];
                    i3 = bitCount2;
                }
            }
        }
        if (i3 <= 3) {
            return new f(i4);
        }
        return null;
    }

    public final int hashCode() {
        return (this.f4416a.ordinal() << 3) | this.f4417b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f4416a == fVar.f4416a && this.f4417b == fVar.f4417b) {
            return true;
        }
        return false;
    }
}
