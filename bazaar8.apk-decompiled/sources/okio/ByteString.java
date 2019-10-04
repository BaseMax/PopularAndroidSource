package okio;

import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import k.C;
import k.d;
import k.g;

public class ByteString implements Serializable, Comparable<ByteString> {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f15996a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    public static final ByteString f15997b = a(new byte[0]);
    public static final long serialVersionUID = 1;

    /* renamed from: c  reason: collision with root package name */
    public transient int f15998c;

    /* renamed from: d  reason: collision with root package name */
    public transient String f15999d;
    public final byte[] data;

    public ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static ByteString a(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static ByteString b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        } else if (str.length() % 2 == 0) {
            byte[] bArr = new byte[(str.length() / 2)];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                int i3 = i2 * 2;
                bArr[i2] = (byte) ((a(str.charAt(i3)) << 4) + a(str.charAt(i3 + 1)));
            }
            return a(bArr);
        } else {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
    }

    public static ByteString d(String str) {
        if (str != null) {
            ByteString byteString = new ByteString(str.getBytes(C.f15724a));
            byteString.f15999d = str;
            return byteString;
        }
        throw new IllegalArgumentException("s == null");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        ByteString a2 = a((InputStream) objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, a2.data);
        } catch (NoSuchFieldException unused) {
            throw new AssertionError();
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public final ByteString c(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.data));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0019, code lost:
        if (r6.a(0, r3, 0, r3.length) != false) goto L_0x001d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r6 instanceof okio.ByteString
            r2 = 0
            if (r1 == 0) goto L_0x001c
            okio.ByteString r6 = (okio.ByteString) r6
            int r1 = r6.k()
            byte[] r3 = r5.data
            int r4 = r3.length
            if (r1 != r4) goto L_0x001c
            int r1 = r3.length
            boolean r6 = r6.a((int) r2, (byte[]) r3, (int) r2, (int) r1)
            if (r6 == 0) goto L_0x001c
            goto L_0x001d
        L_0x001c:
            r0 = 0
        L_0x001d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.equals(java.lang.Object):boolean");
    }

    public String f() {
        return d.a(this.data);
    }

    public String g() {
        byte[] bArr = this.data;
        char[] cArr = new char[(bArr.length * 2)];
        int i2 = 0;
        for (byte b2 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = f15996a;
            cArr[i2] = cArr2[(b2 >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public ByteString h() {
        return c("MD5");
    }

    public int hashCode() {
        int i2 = this.f15998c;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = Arrays.hashCode(this.data);
        this.f15998c = hashCode;
        return hashCode;
    }

    public ByteString i() {
        return c("SHA-1");
    }

    public ByteString j() {
        return c("SHA-256");
    }

    public int k() {
        return this.data.length;
    }

    public ByteString l() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i2 >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i2];
            if (b2 < 65 || b2 > 90) {
                i2++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i2] = (byte) (b2 + 32);
                for (int i3 = i2 + 1; i3 < bArr2.length; i3++) {
                    byte b3 = bArr2[i3];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i3] = (byte) (b3 + 32);
                    }
                }
                return new ByteString(bArr2);
            }
        }
    }

    public byte[] m() {
        return (byte[]) this.data.clone();
    }

    public String n() {
        String str = this.f15999d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.data, C.f15724a);
        this.f15999d = str2;
        return str2;
    }

    public String toString() {
        String str;
        String str2;
        if (this.data.length == 0) {
            return "[size=0]";
        }
        String n = n();
        int a2 = a(n, 64);
        if (a2 == -1) {
            if (this.data.length <= 64) {
                str2 = "[hex=" + g() + "]";
            } else {
                str2 = "[size=" + this.data.length + " hex=" + a(0, 64).g() + "…]";
            }
            return str2;
        }
        String replace = n.substring(0, a2).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (a2 < n.length()) {
            str = "[size=" + this.data.length + " text=" + replace + "…]";
        } else {
            str = "[text=" + replace + "]";
        }
        return str;
    }

    public static ByteString a(String str) {
        if (str != null) {
            byte[] a2 = d.a(str);
            if (a2 != null) {
                return new ByteString(a2);
            }
            return null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c2);
            }
        }
        return (c2 - c3) + 10;
    }

    public static ByteString a(InputStream inputStream, int i2) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (i2 >= 0) {
            byte[] bArr = new byte[i2];
            int i3 = 0;
            while (i3 < i2) {
                int read = inputStream.read(bArr, i3, i2 - i3);
                if (read != -1) {
                    i3 += read;
                } else {
                    throw new EOFException();
                }
            }
            return new ByteString(bArr);
        } else {
            throw new IllegalArgumentException("byteCount < 0: " + i2);
        }
    }

    public final boolean b(ByteString byteString) {
        return a(0, byteString, 0, byteString.k());
    }

    public ByteString a(int i2, int i3) {
        if (i2 >= 0) {
            byte[] bArr = this.data;
            if (i3 <= bArr.length) {
                int i4 = i3 - i2;
                if (i4 < 0) {
                    throw new IllegalArgumentException("endIndex < beginIndex");
                } else if (i2 == 0 && i3 == bArr.length) {
                    return this;
                } else {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(this.data, i2, bArr2, 0, i4);
                    return new ByteString(bArr2);
                }
            } else {
                throw new IllegalArgumentException("endIndex > length(" + this.data.length + ")");
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0");
        }
    }

    public byte a(int i2) {
        return this.data[i2];
    }

    public void a(g gVar) {
        byte[] bArr = this.data;
        gVar.write(bArr, 0, bArr.length);
    }

    public boolean a(int i2, ByteString byteString, int i3, int i4) {
        return byteString.a(i3, this.data, i2, i4);
    }

    public boolean a(int i2, byte[] bArr, int i3, int i4) {
        if (i2 >= 0) {
            byte[] bArr2 = this.data;
            if (i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && C.a(bArr2, i2, bArr, i3, i4)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public int compareTo(ByteString byteString) {
        int k2 = k();
        int k3 = byteString.k();
        int min = Math.min(k2, k3);
        int i2 = 0;
        while (true) {
            int i3 = -1;
            if (i2 < min) {
                byte a2 = a(i2) & 255;
                byte a3 = byteString.a(i2) & 255;
                if (a2 == a3) {
                    i2++;
                } else {
                    if (a2 >= a3) {
                        i3 = 1;
                    }
                    return i3;
                }
            } else if (k2 == k3) {
                return 0;
            } else {
                if (k2 >= k3) {
                    i3 = 1;
                }
                return i3;
            }
        }
    }

    public static int a(String str, int i2) {
        int length = str.length();
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            if (i4 == i2) {
                return i3;
            }
            int codePointAt = str.codePointAt(i3);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i4++;
            i3 += Character.charCount(codePointAt);
        }
        return str.length();
    }
}
