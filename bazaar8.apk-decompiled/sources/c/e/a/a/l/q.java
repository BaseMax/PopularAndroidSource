package c.e.a.a.l;

import com.google.android.exoplayer2.Format;

/* compiled from: TrackSelectionUtil */
public final class q {
    public static int[] a(Format[] formatArr, int[] iArr) {
        int length = formatArr.length;
        if (iArr == null) {
            iArr = new int[length];
        }
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = formatArr[i2].f12510e;
        }
        return iArr;
    }
}
