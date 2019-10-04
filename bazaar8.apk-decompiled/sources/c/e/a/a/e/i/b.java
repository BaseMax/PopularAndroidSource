package c.e.a.a.e.i;

import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.List;

/* compiled from: WavExtractor */
public final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8288a = a.f8287a;

    /* renamed from: b  reason: collision with root package name */
    public i f8289b;

    /* renamed from: c  reason: collision with root package name */
    public q f8290c;

    /* renamed from: d  reason: collision with root package name */
    public c f8291d;

    /* renamed from: e  reason: collision with root package name */
    public int f8292e;

    /* renamed from: f  reason: collision with root package name */
    public int f8293f;

    public static /* synthetic */ g[] b() {
        return new g[]{new b()};
    }

    public void a() {
    }

    public boolean a(h hVar) {
        return d.a(hVar) != null;
    }

    public void a(i iVar) {
        this.f8289b = iVar;
        this.f8290c = iVar.a(0, 1);
        this.f8291d = null;
        iVar.a();
    }

    public void a(long j2, long j3) {
        this.f8293f = 0;
    }

    public int a(h hVar, n nVar) {
        if (this.f8291d == null) {
            this.f8291d = d.a(hVar);
            c cVar = this.f8291d;
            if (cVar != null) {
                this.f8290c.a(Format.a((String) null, "audio/raw", (String) null, cVar.a(), 32768, this.f8291d.h(), this.f8291d.i(), this.f8291d.g(), (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f8292e = this.f8291d.e();
            } else {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
        }
        if (!this.f8291d.j()) {
            d.a(hVar, this.f8291d);
            this.f8289b.a(this.f8291d);
        }
        long f2 = this.f8291d.f();
        int i2 = 0;
        C0737e.b(f2 != -1);
        long position = f2 - hVar.getPosition();
        if (position <= 0) {
            return -1;
        }
        int a2 = this.f8290c.a(hVar, (int) Math.min((long) (32768 - this.f8293f), position), true);
        if (a2 != -1) {
            this.f8293f += a2;
        }
        int i3 = this.f8293f / this.f8292e;
        if (i3 > 0) {
            long a3 = this.f8291d.a(hVar.getPosition() - ((long) this.f8293f));
            int i4 = i3 * this.f8292e;
            this.f8293f -= i4;
            this.f8290c.a(a3, 1, i4, this.f8293f, null);
        }
        if (a2 == -1) {
            i2 = -1;
        }
        return i2;
    }
}
