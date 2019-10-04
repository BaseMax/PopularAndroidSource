package com.koushikdutta.async.http.spdy;

import android.util.Base64;
import com.koushikdutta.async.e.b;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;

final class c implements Serializable {
    public static final c EMPTY = of(new byte[0]);

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f4783b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a  reason: collision with root package name */
    final byte[] f4784a;
    private transient int c;
    private transient String d;

    private c(byte[] bArr) {
        this.f4784a = bArr;
    }

    public static c of(byte... bArr) {
        if (bArr != null) {
            return new c((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static c of(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            q.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new c(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    public static c encodeUtf8(String str) {
        if (str != null) {
            c cVar = new c(str.getBytes(b.UTF_8));
            cVar.d = str;
            return cVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public final String utf8() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f4784a, b.UTF_8);
        this.d = str2;
        return str2;
    }

    public final String base64() {
        return Base64.encodeToString(this.f4784a, 0);
    }

    public static c decodeBase64(String str) {
        if (str != null) {
            byte[] decode = Base64.decode(str, 0);
            if (decode != null) {
                return new c(decode);
            }
            return null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    public final String hex() {
        byte[] bArr = this.f4784a;
        char[] cArr = new char[(bArr.length * 2)];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f4783b;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static c decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        } else if (str.length() % 2 == 0) {
            byte[] bArr = new byte[(str.length() / 2)];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((a(str.charAt(i2)) << 4) + a(str.charAt(i2 + 1)));
            }
            return of(bArr);
        } else {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(String.valueOf(str)));
        }
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: ".concat(String.valueOf(c2)));
            }
        }
        return (c2 - c3) + 10;
    }

    public static c read(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (i >= 0) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read != -1) {
                    i2 += read;
                } else {
                    throw new EOFException();
                }
            }
            return new c(bArr);
        } else {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(i)));
        }
    }

    public final c toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f4784a;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 < 65 || b2 > 90) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b3 = bArr2[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i2] = (byte) (b3 + 32);
                    }
                }
                return new c(bArr2);
            }
        }
    }

    public final c toAsciiUppercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f4784a;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 < 97 || b2 > 122) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b3 = bArr2[i2];
                    if (b3 >= 97 && b3 <= 122) {
                        bArr2[i2] = (byte) (b3 - 32);
                    }
                }
                return new c(bArr2);
            }
        }
    }

    public final byte getByte(int i) {
        return this.f4784a[i];
    }

    public final int size() {
        return this.f4784a.length;
    }

    public final byte[] toByteArray() {
        return (byte[]) this.f4784a.clone();
    }

    public final void write(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            outputStream.write(this.f4784a);
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof c) && Arrays.equals(((c) obj).f4784a, this.f4784a));
    }

    public final int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f4784a);
        this.c = hashCode;
        return hashCode;
    }

    public final String toString() {
        byte[] bArr = this.f4784a;
        if (bArr.length == 0) {
            return "ByteString[size=0]";
        }
        if (bArr.length <= 16) {
            return String.format(Locale.ENGLISH, "ByteString[size=%s data=%s]", new Object[]{Integer.valueOf(this.f4784a.length), hex()});
        }
        try {
            return String.format(Locale.ENGLISH, "ByteString[size=%s md5=%s]", new Object[]{Integer.valueOf(this.f4784a.length), of(MessageDigest.getInstance("MD5").digest(this.f4784a)).hex()});
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
