package c.e.a.a.e.g;

import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;

/* compiled from: RawCcExtractor */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final int f7985a = I.b("RCC\u0001");

    /* renamed from: b  reason: collision with root package name */
    public final Format f7986b;

    /* renamed from: c  reason: collision with root package name */
    public final v f7987c = new v(9);

    /* renamed from: d  reason: collision with root package name */
    public q f7988d;

    /* renamed from: e  reason: collision with root package name */
    public int f7989e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f7990f;

    /* renamed from: g  reason: collision with root package name */
    public long f7991g;

    /* renamed from: h  reason: collision with root package name */
    public int f7992h;

    /* renamed from: i  reason: collision with root package name */
    public int f7993i;

    public a(Format format) {
        this.f7986b = format;
    }

    public void a() {
    }

    public void a(i iVar) {
        iVar.a(new o.b(-9223372036854775807L));
        this.f7988d = iVar.a(0, 3);
        iVar.a();
        this.f7988d.a(this.f7986b);
    }

    public final boolean b(h hVar) {
        this.f7987c.C();
        if (!hVar.a(this.f7987c.f9634a, 0, 8, true)) {
            return false;
        }
        if (this.f7987c.i() == f7985a) {
            this.f7990f = this.f7987c.u();
            return true;
        }
        throw new IOException("Input not RawCC");
    }

    public final void c(h hVar) {
        while (this.f7992h > 0) {
            this.f7987c.C();
            hVar.readFully(this.f7987c.f9634a, 0, 3);
            this.f7988d.a(this.f7987c, 3);
            this.f7993i += 3;
            this.f7992h--;
        }
        int i2 = this.f7993i;
        if (i2 > 0) {
            this.f7988d.a(this.f7991g, 1, i2, 0, null);
        }
    }

    public final boolean d(h hVar) {
        this.f7987c.C();
        int i2 = this.f7990f;
        if (i2 == 0) {
            if (!hVar.a(this.f7987c.f9634a, 0, 5, true)) {
                return false;
            }
            this.f7991g = (this.f7987c.w() * 1000) / 45;
        } else if (i2 != 1) {
            throw new ParserException("Unsupported version number: " + this.f7990f);
        } else if (!hVar.a(this.f7987c.f9634a, 0, 9, true)) {
            return false;
        } else {
            this.f7991g = this.f7987c.q();
        }
        this.f7992h = this.f7987c.u();
        this.f7993i = 0;
        return true;
    }

    public boolean a(h hVar) {
        this.f7987c.C();
        hVar.a(this.f7987c.f9634a, 0, 8);
        if (this.f7987c.i() == f7985a) {
            return true;
        }
        return false;
    }

    public int a(h hVar, n nVar) {
        while (true) {
            int i2 = this.f7989e;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        c(hVar);
                        this.f7989e = 1;
                        return 0;
                    }
                    throw new IllegalStateException();
                } else if (d(hVar)) {
                    this.f7989e = 2;
                } else {
                    this.f7989e = 0;
                    return -1;
                }
            } else if (!b(hVar)) {
                return -1;
            } else {
                this.f7989e = 1;
            }
        }
    }

    public void a(long j2, long j3) {
        this.f7989e = 0;
    }
}
