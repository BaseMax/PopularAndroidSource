package c.e.a.b.g.f;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* renamed from: c.e.a.b.g.f.qb  reason: case insensitive filesystem */
public final class C0864qb {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f10508a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f10509b = Charset.forName("ISO-8859-1");

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f10510c;

    /* renamed from: d  reason: collision with root package name */
    public static final ByteBuffer f10511d;

    /* renamed from: e  reason: collision with root package name */
    public static final Ua f10512e;

    static {
        byte[] bArr = new byte[0];
        f10510c = bArr;
        f10511d = ByteBuffer.wrap(bArr);
        byte[] bArr2 = f10510c;
        f10512e = Ua.a(bArr2, 0, bArr2.length, false);
    }

    public static int a(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static boolean a(Sb sb) {
        return false;
    }

    public static boolean b(byte[] bArr) {
        return Hc.a(bArr);
    }

    public static String c(byte[] bArr) {
        return new String(bArr, f10508a);
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static int a(byte[] bArr) {
        int length = bArr.length;
        int a2 = a(length, bArr, 0, length);
        if (a2 == 0) {
            return 1;
        }
        return a2;
    }

    public static int a(int i2, byte[] bArr, int i3, int i4) {
        int i5 = i2;
        for (int i6 = i3; i6 < i3 + i4; i6++) {
            i5 = (i5 * 31) + bArr[i6];
        }
        return i5;
    }

    public static Object a(Object obj, Object obj2) {
        Tb e2 = ((Sb) obj).e();
        e2.a((Sb) obj2);
        return e2.n();
    }
}
