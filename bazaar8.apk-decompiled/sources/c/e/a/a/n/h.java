package c.e.a.a.n;

import android.net.Uri;
import android.util.Base64;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.ParserException;
import java.net.URLDecoder;

/* compiled from: DataSchemeDataSource */
public final class h extends g {

    /* renamed from: e  reason: collision with root package name */
    public l f9457e;

    /* renamed from: f  reason: collision with root package name */
    public int f9458f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f9459g;

    public h() {
        super(false);
    }

    public long a(l lVar) {
        b(lVar);
        this.f9457e = lVar;
        Uri uri = lVar.f9466a;
        String scheme = uri.getScheme();
        if ("data".equals(scheme)) {
            String[] a2 = I.a(uri.getSchemeSpecificPart(), ",");
            if (a2.length == 2) {
                String str = a2[1];
                if (a2[0].contains(";base64")) {
                    try {
                        this.f9459g = Base64.decode(str, 0);
                    } catch (IllegalArgumentException e2) {
                        throw new ParserException("Error while parsing Base64 encoded string: " + str, e2);
                    }
                } else {
                    this.f9459g = I.e(URLDecoder.decode(str, "US-ASCII"));
                }
                c(lVar);
                return (long) this.f9459g.length;
            }
            throw new ParserException("Unexpected URI format: " + uri);
        }
        throw new ParserException("Unsupported scheme: " + scheme);
    }

    public void close() {
        if (this.f9459g != null) {
            this.f9459g = null;
            b();
        }
        this.f9457e = null;
    }

    public Uri getUri() {
        l lVar = this.f9457e;
        if (lVar != null) {
            return lVar.f9466a;
        }
        return null;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        int length = this.f9459g.length - this.f9458f;
        if (length == 0) {
            return -1;
        }
        int min = Math.min(i3, length);
        System.arraycopy(this.f9459g, this.f9458f, bArr, i2, min);
        this.f9458f += min;
        a(min);
        return min;
    }
}
