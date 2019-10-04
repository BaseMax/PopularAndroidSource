package c.e.a.a.e.h;

import c.e.a.a.b.y;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;

/* compiled from: DtsReader */
public final class m implements o {

    /* renamed from: a  reason: collision with root package name */
    public final v f8144a = new v(new byte[18]);

    /* renamed from: b  reason: collision with root package name */
    public final String f8145b;

    /* renamed from: c  reason: collision with root package name */
    public String f8146c;

    /* renamed from: d  reason: collision with root package name */
    public q f8147d;

    /* renamed from: e  reason: collision with root package name */
    public int f8148e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f8149f;

    /* renamed from: g  reason: collision with root package name */
    public int f8150g;

    /* renamed from: h  reason: collision with root package name */
    public long f8151h;

    /* renamed from: i  reason: collision with root package name */
    public Format f8152i;

    /* renamed from: j  reason: collision with root package name */
    public int f8153j;

    /* renamed from: k  reason: collision with root package name */
    public long f8154k;

    public m(String str) {
        this.f8145b = str;
    }

    public void a() {
        this.f8148e = 0;
        this.f8149f = 0;
        this.f8150g = 0;
    }

    public void b() {
    }

    public final boolean b(v vVar) {
        while (vVar.a() > 0) {
            this.f8150g <<= 8;
            this.f8150g |= vVar.u();
            if (y.a(this.f8150g)) {
                byte[] bArr = this.f8144a.f9634a;
                int i2 = this.f8150g;
                bArr[0] = (byte) ((i2 >> 24) & 255);
                bArr[1] = (byte) ((i2 >> 16) & 255);
                bArr[2] = (byte) ((i2 >> 8) & 255);
                bArr[3] = (byte) (i2 & 255);
                this.f8149f = 4;
                this.f8150g = 0;
                return true;
            }
        }
        return false;
    }

    public final void c() {
        byte[] bArr = this.f8144a.f9634a;
        if (this.f8152i == null) {
            this.f8152i = y.a(bArr, this.f8146c, this.f8145b, null);
            this.f8147d.a(this.f8152i);
        }
        this.f8153j = y.a(bArr);
        this.f8151h = (long) ((int) ((((long) y.d(bArr)) * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f8152i.w)));
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8146c = dVar.b();
        this.f8147d = iVar.a(dVar.c(), 1);
    }

    public void a(long j2, int i2) {
        this.f8154k = j2;
    }

    public void a(v vVar) {
        while (vVar.a() > 0) {
            int i2 = this.f8148e;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        int min = Math.min(vVar.a(), this.f8153j - this.f8149f);
                        this.f8147d.a(vVar, min);
                        this.f8149f += min;
                        int i3 = this.f8149f;
                        int i4 = this.f8153j;
                        if (i3 == i4) {
                            this.f8147d.a(this.f8154k, 1, i4, 0, null);
                            this.f8154k += this.f8151h;
                            this.f8148e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(vVar, this.f8144a.f9634a, 18)) {
                    c();
                    this.f8144a.e(0);
                    this.f8147d.a(this.f8144a, 18);
                    this.f8148e = 2;
                }
            } else if (b(vVar)) {
                this.f8148e = 1;
            }
        }
    }

    public final boolean a(v vVar, byte[] bArr, int i2) {
        int min = Math.min(vVar.a(), i2 - this.f8149f);
        vVar.a(bArr, this.f8149f, min);
        this.f8149f += min;
        return this.f8149f == i2;
    }
}
