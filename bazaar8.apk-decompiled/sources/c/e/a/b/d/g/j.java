package c.e.a.b.d.g;

public class j {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f10065a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    public static final char[] f10066b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(byte[] bArr) {
        char[] cArr = new char[(bArr.length << 1)];
        int i2 = 0;
        for (byte b2 : bArr) {
            byte b3 = b2 & 255;
            int i3 = i2 + 1;
            char[] cArr2 = f10066b;
            cArr[i2] = cArr2[b3 >>> 4];
            i2 = i3 + 1;
            cArr[i3] = cArr2[b3 & 15];
        }
        return new String(cArr);
    }
}
