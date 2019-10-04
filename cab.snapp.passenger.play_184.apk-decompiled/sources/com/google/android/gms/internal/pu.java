package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public final class pu {
    public static final byte[] EMPTY_BYTE_ARRAY;

    /* renamed from: a  reason: collision with root package name */
    static final Charset f3459a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    private static Charset f3460b = Charset.forName("ISO-8859-1");
    private static ByteBuffer c;
    private static pd d = pd.zzbb(EMPTY_BYTE_ARRAY);

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        c = ByteBuffer.wrap(bArr);
    }

    static int a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    static boolean a() {
        return false;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int a2 = a(length, bArr, 0, length);
        if (a2 == 0) {
            return 1;
        }
        return a2;
    }

    public static int zzde(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zzdg(boolean z) {
        return z ? 1231 : 1237;
    }
}
