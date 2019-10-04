package c.e.a.a.e.h;

import c.e.a.a.b.C0695h;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.List;

/* renamed from: c.e.a.a.e.h.g  reason: case insensitive filesystem */
/* compiled from: Ac3Reader */
public final class C0705g implements o {

    /* renamed from: a  reason: collision with root package name */
    public final u f8088a;

    /* renamed from: b  reason: collision with root package name */
    public final v f8089b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8090c;

    /* renamed from: d  reason: collision with root package name */
    public String f8091d;

    /* renamed from: e  reason: collision with root package name */
    public q f8092e;

    /* renamed from: f  reason: collision with root package name */
    public int f8093f;

    /* renamed from: g  reason: collision with root package name */
    public int f8094g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8095h;

    /* renamed from: i  reason: collision with root package name */
    public long f8096i;

    /* renamed from: j  reason: collision with root package name */
    public Format f8097j;

    /* renamed from: k  reason: collision with root package name */
    public int f8098k;

    /* renamed from: l  reason: collision with root package name */
    public long f8099l;

    public C0705g() {
        this(null);
    }

    public void a() {
        this.f8093f = 0;
        this.f8094g = 0;
        this.f8095h = false;
    }

    public void b() {
    }

    public final boolean b(v vVar) {
        while (true) {
            boolean z = false;
            if (vVar.a() <= 0) {
                return false;
            }
            if (!this.f8095h) {
                if (vVar.u() == 11) {
                    z = true;
                }
                this.f8095h = z;
            } else {
                int u = vVar.u();
                if (u == 119) {
                    this.f8095h = false;
                    return true;
                }
                if (u == 11) {
                    z = true;
                }
                this.f8095h = z;
            }
        }
    }

    public final void c() {
        this.f8088a.b(0);
        C0695h.a a2 = C0695h.a(this.f8088a);
        Format format = this.f8097j;
        if (!(format != null && a2.f7445d == format.v && a2.f7444c == format.w && a2.f7442a == format.f12514i)) {
            this.f8097j = Format.a(this.f8091d, a2.f7442a, (String) null, -1, -1, a2.f7445d, a2.f7444c, (List<byte[]>) null, (DrmInitData) null, 0, this.f8090c);
            this.f8092e.a(this.f8097j);
        }
        this.f8098k = a2.f7446e;
        this.f8096i = (((long) a2.f7447f) * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f8097j.w);
    }

    public C0705g(String str) {
        this.f8088a = new u(new byte[128]);
        this.f8089b = new v(this.f8088a.f9630a);
        this.f8093f = 0;
        this.f8090c = str;
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8091d = dVar.b();
        this.f8092e = iVar.a(dVar.c(), 1);
    }

    public void a(long j2, int i2) {
        this.f8099l = j2;
    }

    public void a(v vVar) {
        while (vVar.a() > 0) {
            int i2 = this.f8093f;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        int min = Math.min(vVar.a(), this.f8098k - this.f8094g);
                        this.f8092e.a(vVar, min);
                        this.f8094g += min;
                        int i3 = this.f8094g;
                        int i4 = this.f8098k;
                        if (i3 == i4) {
                            this.f8092e.a(this.f8099l, 1, i4, 0, null);
                            this.f8099l += this.f8096i;
                            this.f8093f = 0;
                        }
                    }
                } else if (a(vVar, this.f8089b.f9634a, 128)) {
                    c();
                    this.f8089b.e(0);
                    this.f8092e.a(this.f8089b, 128);
                    this.f8093f = 2;
                }
            } else if (b(vVar)) {
                this.f8093f = 1;
                byte[] bArr = this.f8089b.f9634a;
                bArr[0] = 11;
                bArr[1] = 119;
                this.f8094g = 2;
            }
        }
    }

    public final boolean a(v vVar, byte[] bArr, int i2) {
        int min = Math.min(vVar.a(), i2 - this.f8094g);
        vVar.a(bArr, this.f8094g, min);
        this.f8094g += min;
        return this.f8094g == i2;
    }
}
