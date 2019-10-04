package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;

/* compiled from: Id3Reader */
public final class t implements o {

    /* renamed from: a  reason: collision with root package name */
    public final v f8238a = new v(10);

    /* renamed from: b  reason: collision with root package name */
    public q f8239b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8240c;

    /* renamed from: d  reason: collision with root package name */
    public long f8241d;

    /* renamed from: e  reason: collision with root package name */
    public int f8242e;

    /* renamed from: f  reason: collision with root package name */
    public int f8243f;

    public void a() {
        this.f8240c = false;
    }

    public void b() {
        if (this.f8240c) {
            int i2 = this.f8242e;
            if (i2 != 0 && this.f8243f == i2) {
                this.f8239b.a(this.f8241d, 1, i2, 0, null);
                this.f8240c = false;
            }
        }
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8239b = iVar.a(dVar.c(), 4);
        this.f8239b.a(Format.a(dVar.b(), "application/id3", (String) null, -1, (DrmInitData) null));
    }

    public void a(long j2, int i2) {
        if ((i2 & 4) != 0) {
            this.f8240c = true;
            this.f8241d = j2;
            this.f8242e = 0;
            this.f8243f = 0;
        }
    }

    public void a(v vVar) {
        if (this.f8240c) {
            int a2 = vVar.a();
            int i2 = this.f8243f;
            if (i2 < 10) {
                int min = Math.min(a2, 10 - i2);
                System.arraycopy(vVar.f9634a, vVar.c(), this.f8238a.f9634a, this.f8243f, min);
                if (this.f8243f + min == 10) {
                    this.f8238a.e(0);
                    if (73 == this.f8238a.u() && 68 == this.f8238a.u() && 51 == this.f8238a.u()) {
                        this.f8238a.f(3);
                        this.f8242e = this.f8238a.t() + 10;
                    } else {
                        p.d("Id3Reader", "Discarding invalid ID3 tag");
                        this.f8240c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a2, this.f8242e - this.f8243f);
            this.f8239b.a(vVar, min2);
            this.f8243f += min2;
        }
    }
}
