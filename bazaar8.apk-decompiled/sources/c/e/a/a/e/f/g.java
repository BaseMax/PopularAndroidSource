package c.e.a.a.e.f;

import c.e.a.a.e.h;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;

/* compiled from: OggPageHeader */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final int f7928a = I.b("OggS");

    /* renamed from: b  reason: collision with root package name */
    public int f7929b;

    /* renamed from: c  reason: collision with root package name */
    public int f7930c;

    /* renamed from: d  reason: collision with root package name */
    public long f7931d;

    /* renamed from: e  reason: collision with root package name */
    public long f7932e;

    /* renamed from: f  reason: collision with root package name */
    public long f7933f;

    /* renamed from: g  reason: collision with root package name */
    public long f7934g;

    /* renamed from: h  reason: collision with root package name */
    public int f7935h;

    /* renamed from: i  reason: collision with root package name */
    public int f7936i;

    /* renamed from: j  reason: collision with root package name */
    public int f7937j;

    /* renamed from: k  reason: collision with root package name */
    public final int[] f7938k = new int[255];

    /* renamed from: l  reason: collision with root package name */
    public final v f7939l = new v(255);

    public void a() {
        this.f7929b = 0;
        this.f7930c = 0;
        this.f7931d = 0;
        this.f7932e = 0;
        this.f7933f = 0;
        this.f7934g = 0;
        this.f7935h = 0;
        this.f7936i = 0;
        this.f7937j = 0;
    }

    public boolean a(h hVar, boolean z) {
        this.f7939l.C();
        a();
        if (!(hVar.getLength() == -1 || hVar.getLength() - hVar.a() >= 27) || !hVar.b(this.f7939l.f9634a, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        } else if (this.f7939l.w() == ((long) f7928a)) {
            this.f7929b = this.f7939l.u();
            if (this.f7929b == 0) {
                this.f7930c = this.f7939l.u();
                this.f7931d = this.f7939l.m();
                this.f7932e = this.f7939l.n();
                this.f7933f = this.f7939l.n();
                this.f7934g = this.f7939l.n();
                this.f7935h = this.f7939l.u();
                this.f7936i = this.f7935h + 27;
                this.f7939l.C();
                hVar.a(this.f7939l.f9634a, 0, this.f7935h);
                for (int i2 = 0; i2 < this.f7935h; i2++) {
                    this.f7938k[i2] = this.f7939l.u();
                    this.f7937j += this.f7938k[i2];
                }
                return true;
            } else if (z) {
                return false;
            } else {
                throw new ParserException("unsupported bit stream revision");
            }
        } else if (z) {
            return false;
        } else {
            throw new ParserException("expected OggS capture pattern at begin of page");
        }
    }
}
