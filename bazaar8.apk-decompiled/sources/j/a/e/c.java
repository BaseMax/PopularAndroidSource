package j.a.e;

import j.a.e;
import java.io.IOException;
import okio.ByteString;

/* compiled from: Http2 */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteString f15450a = ByteString.d("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f15451b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f15452c = new String[64];

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f15453d = new String[256];

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = f15453d;
            if (i3 >= strArr.length) {
                break;
            }
            strArr[i3] = e.a("%8s", Integer.toBinaryString(i3)).replace(' ', '0');
            i3++;
        }
        String[] strArr2 = f15452c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i4 : iArr) {
            f15452c[i4 | 8] = f15452c[i4] + "|PADDED";
        }
        String[] strArr3 = f15452c;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        for (int i5 : new int[]{4, 32, 36}) {
            for (int i6 : iArr) {
                int i7 = i6 | i5;
                f15452c[i7] = f15452c[iArr[r9]] + '|' + f15452c[i5];
                f15452c[i7 | 8] = f15452c[i6] + '|' + f15452c[i5] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr4 = f15452c;
            if (i2 < strArr4.length) {
                if (strArr4[i2] == null) {
                    strArr4[i2] = f15453d[i2];
                }
                i2++;
            } else {
                return;
            }
        }
    }

    public static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(e.a(str, objArr));
    }

    public static IOException b(String str, Object... objArr) {
        throw new IOException(e.a(str, objArr));
    }

    public static String a(boolean z, int i2, int i3, byte b2, byte b3) {
        String[] strArr = f15451b;
        String a2 = b2 < strArr.length ? strArr[b2] : e.a("0x%02x", Byte.valueOf(b2));
        String a3 = a(b2, b3);
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(i3);
        objArr[3] = a2;
        objArr[4] = a3;
        return e.a("%s 0x%08x %5d %-13s %s", objArr);
    }

    public static String a(byte b2, byte b3) {
        String str;
        if (b3 == 0) {
            return "";
        }
        if (!(b2 == 2 || b2 == 3)) {
            if (b2 == 4 || b2 == 6) {
                if (b3 == 1) {
                    str = "ACK";
                } else {
                    str = f15453d[b3];
                }
                return str;
            } else if (!(b2 == 7 || b2 == 8)) {
                String[] strArr = f15452c;
                String str2 = b3 < strArr.length ? strArr[b3] : f15453d[b3];
                if (b2 != 5 || (b3 & 4) == 0) {
                    return (b2 != 0 || (b3 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED");
                }
                return str2.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f15453d[b3];
    }
}
