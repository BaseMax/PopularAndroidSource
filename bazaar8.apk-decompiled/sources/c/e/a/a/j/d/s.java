package c.e.a.a.j.d;

import android.text.TextUtils;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.F;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttExtractor */
public final class s implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8851a = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f8852b = Pattern.compile("MPEGTS:(\\d+)");

    /* renamed from: c  reason: collision with root package name */
    public final String f8853c;

    /* renamed from: d  reason: collision with root package name */
    public final F f8854d;

    /* renamed from: e  reason: collision with root package name */
    public final v f8855e = new v();

    /* renamed from: f  reason: collision with root package name */
    public i f8856f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f8857g = new byte[1024];

    /* renamed from: h  reason: collision with root package name */
    public int f8858h;

    public s(String str, F f2) {
        this.f8853c = str;
        this.f8854d = f2;
    }

    public void a() {
    }

    public boolean a(h hVar) {
        hVar.b(this.f8857g, 0, 6, false);
        this.f8855e.a(this.f8857g, 6);
        if (c.e.a.a.k.h.i.b(this.f8855e)) {
            return true;
        }
        hVar.b(this.f8857g, 6, 3, false);
        this.f8855e.a(this.f8857g, 9);
        return c.e.a.a.k.h.i.b(this.f8855e);
    }

    public final void b() {
        v vVar = new v(this.f8857g);
        c.e.a.a.k.h.i.c(vVar);
        long j2 = 0;
        long j3 = 0;
        while (true) {
            String k2 = vVar.k();
            if (TextUtils.isEmpty(k2)) {
                Matcher a2 = c.e.a.a.k.h.i.a(vVar);
                if (a2 == null) {
                    a(0);
                    return;
                }
                long b2 = c.e.a.a.k.h.i.b(a2.group(1));
                long b3 = this.f8854d.b(F.e((j2 + b2) - j3));
                q a3 = a(b3 - b2);
                this.f8855e.a(this.f8857g, this.f8858h);
                a3.a(this.f8855e, this.f8858h);
                a3.a(b3, 1, this.f8858h, 0, null);
                return;
            } else if (k2.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f8851a.matcher(k2);
                if (matcher.find()) {
                    Matcher matcher2 = f8852b.matcher(k2);
                    if (matcher2.find()) {
                        j3 = c.e.a.a.k.h.i.b(matcher.group(1));
                        j2 = F.c(Long.parseLong(matcher2.group(1)));
                    } else {
                        throw new ParserException("X-TIMESTAMP-MAP doesn't contain media timestamp: " + k2);
                    }
                } else {
                    throw new ParserException("X-TIMESTAMP-MAP doesn't contain local timestamp: " + k2);
                }
            }
        }
    }

    public void a(i iVar) {
        this.f8856f = iVar;
        iVar.a(new o.b(-9223372036854775807L));
    }

    public void a(long j2, long j3) {
        throw new IllegalStateException();
    }

    public int a(h hVar, n nVar) {
        int i2;
        int length = (int) hVar.getLength();
        int i3 = this.f8858h;
        byte[] bArr = this.f8857g;
        if (i3 == bArr.length) {
            if (length != -1) {
                i2 = length;
            } else {
                i2 = bArr.length;
            }
            this.f8857g = Arrays.copyOf(bArr, (i2 * 3) / 2);
        }
        byte[] bArr2 = this.f8857g;
        int i4 = this.f8858h;
        int read = hVar.read(bArr2, i4, bArr2.length - i4);
        if (read != -1) {
            this.f8858h += read;
            if (length == -1 || this.f8858h != length) {
                return 0;
            }
        }
        b();
        return -1;
    }

    public final q a(long j2) {
        q a2 = this.f8856f.a(0, 3);
        a2.a(Format.a((String) null, "text/vtt", (String) null, -1, 0, this.f8853c, (DrmInitData) null, j2));
        this.f8856f.a();
        return a2;
    }
}
