package j;

import j.a.e;
import java.nio.charset.Charset;
import k.h;
import okio.ByteString;

/* compiled from: RequestBody */
public abstract class O {
    public static O a(F f2, String str) {
        Charset charset = e.f15418j;
        if (f2 != null) {
            charset = f2.a();
            if (charset == null) {
                charset = e.f15418j;
                f2 = F.b(f2 + "; charset=utf-8");
            }
        }
        return a(f2, str.getBytes(charset));
    }

    public long a() {
        return -1;
    }

    public abstract void a(h hVar);

    public abstract F b();

    public static O a(F f2, ByteString byteString) {
        return new M(f2, byteString);
    }

    public static O a(F f2, byte[] bArr) {
        return a(f2, bArr, 0, bArr.length);
    }

    public static O a(F f2, byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            e.a((long) bArr.length, (long) i2, (long) i3);
            return new N(f2, i3, bArr, i2);
        }
        throw new NullPointerException("content == null");
    }
}
