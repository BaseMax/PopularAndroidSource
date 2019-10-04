package b;

import com.adjust.sdk.Constants;
import com.pusher.java_websocket.drafts.c;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class f implements Serializable, Comparable<f> {
    public static final f EMPTY = of(new byte[0]);

    /* renamed from: a  reason: collision with root package name */
    static final char[] f139a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    final byte[] f140b;
    transient int c;
    transient String d;

    f(byte[] bArr) {
        this.f140b = bArr;
    }

    public static f of(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f of(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            x.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new f(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f of(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new f(bArr);
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f encodeUtf8(String str) {
        if (str != null) {
            f fVar = new f(str.getBytes(x.UTF_8));
            fVar.d = str;
            return fVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public static f encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        } else if (charset != null) {
            return new f(str.getBytes(charset));
        } else {
            throw new IllegalArgumentException("charset == null");
        }
    }

    public String utf8() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f140b, x.UTF_8);
        this.d = str2;
        return str2;
    }

    public String string(Charset charset) {
        if (charset != null) {
            return new String(this.f140b, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public String base64() {
        return b.encode(this.f140b);
    }

    public f md5() {
        return a("MD5");
    }

    public f sha1() {
        return a("SHA-1");
    }

    public f sha256() {
        return a(Constants.SHA256);
    }

    public f sha512() {
        return a("SHA-512");
    }

    private f a(String str) {
        try {
            return of(MessageDigest.getInstance(str).digest(this.f140b));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public f hmacSha1(f fVar) {
        return a("HmacSHA1", fVar);
    }

    public f hmacSha256(f fVar) {
        return a("HmacSHA256", fVar);
    }

    public f hmacSha512(f fVar) {
        return a("HmacSHA512", fVar);
    }

    private f a(String str, f fVar) {
        try {
            Mac instance = Mac.getInstance(str);
            instance.init(new SecretKeySpec(fVar.toByteArray(), str));
            return of(instance.doFinal(this.f140b));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public String base64Url() {
        return b.encodeUrl(this.f140b);
    }

    @Nullable
    public static f decodeBase64(String str) {
        if (str != null) {
            byte[] decode = b.decode(str);
            if (decode != null) {
                return new f(decode);
            }
            return null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    public String hex() {
        byte[] bArr = this.f140b;
        char[] cArr = new char[(bArr.length * 2)];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f139a;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static f decodeHex(String str) {
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

    public static f read(InputStream inputStream, int i) throws IOException {
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
            return new f(bArr);
        } else {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(i)));
        }
    }

    public f toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f140b;
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
                return new f(bArr2);
            }
        }
    }

    public f toAsciiUppercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f140b;
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
                return new f(bArr2);
            }
        }
    }

    public f substring(int i) {
        return substring(i, this.f140b.length);
    }

    public f substring(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f140b;
            if (i2 <= bArr.length) {
                int i3 = i2 - i;
                if (i3 < 0) {
                    throw new IllegalArgumentException("endIndex < beginIndex");
                } else if (i == 0 && i2 == bArr.length) {
                    return this;
                } else {
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(this.f140b, i, bArr2, 0, i3);
                    return new f(bArr2);
                }
            } else {
                throw new IllegalArgumentException("endIndex > length(" + this.f140b.length + ")");
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0");
        }
    }

    public byte getByte(int i) {
        return this.f140b[i];
    }

    public int size() {
        return this.f140b.length;
    }

    public byte[] toByteArray() {
        return (byte[]) this.f140b.clone();
    }

    /* access modifiers changed from: package-private */
    public byte[] a() {
        return this.f140b;
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.f140b).asReadOnlyBuffer();
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            outputStream.write(this.f140b);
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* access modifiers changed from: package-private */
    public void a(c cVar) {
        byte[] bArr = this.f140b;
        cVar.write(bArr, 0, bArr.length);
    }

    public boolean rangeEquals(int i, f fVar, int i2, int i3) {
        return fVar.rangeEquals(i2, this.f140b, i, i3);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.f140b;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && x.arrayRangeEquals(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public final boolean startsWith(f fVar) {
        return rangeEquals(0, fVar, 0, fVar.size());
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public final boolean endsWith(f fVar) {
        return rangeEquals(size() - fVar.size(), fVar, 0, fVar.size());
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(f fVar) {
        return indexOf(fVar.a(), 0);
    }

    public final int indexOf(f fVar, int i) {
        return indexOf(fVar.a(), i);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.f140b.length - bArr.length;
        for (int max = Math.max(i, 0); max <= length; max++) {
            if (x.arrayRangeEquals(this.f140b, max, bArr, 0, bArr.length)) {
                return max;
            }
        }
        return -1;
    }

    public final int lastIndexOf(f fVar) {
        return lastIndexOf(fVar.a(), size());
    }

    public final int lastIndexOf(f fVar, int i) {
        return lastIndexOf(fVar.a(), i);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int min = Math.min(i, this.f140b.length - bArr.length); min >= 0; min--) {
            if (x.arrayRangeEquals(this.f140b, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int size = fVar.size();
            byte[] bArr = this.f140b;
            return size == bArr.length && fVar.rangeEquals(0, bArr, 0, bArr.length);
        }
    }

    public int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f140b);
        this.c = hashCode;
        return hashCode;
    }

    public int compareTo(f fVar) {
        int size = size();
        int size2 = fVar.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            byte b2 = getByte(i) & c.END_OF_FRAME;
            byte b3 = fVar.getByte(i) & c.END_OF_FRAME;
            if (b2 != b3) {
                return b2 < b3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public String toString() {
        if (this.f140b.length == 0) {
            return "[size=0]";
        }
        String utf8 = utf8();
        int length = utf8.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                i = utf8.length();
                break;
            } else if (i2 == 64) {
                break;
            } else {
                int codePointAt = utf8.codePointAt(i);
                if ((!Character.isISOControl(codePointAt) || codePointAt == 10 || codePointAt == 13) && codePointAt != 65533) {
                    i2++;
                    i += Character.charCount(codePointAt);
                }
            }
        }
        i = -1;
        if (i != -1) {
            String replace = utf8.substring(0, i).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (i < utf8.length()) {
                return "[size=" + this.f140b.length + " text=" + replace + "…]";
            }
            return "[text=" + replace + "]";
        } else if (this.f140b.length <= 64) {
            return "[hex=" + hex() + "]";
        } else {
            return "[size=" + this.f140b.length + " hex=" + substring(0, 64).hex() + "…]";
        }
    }
}
