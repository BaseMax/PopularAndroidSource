package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Collections;
import java.util.List;

/* compiled from: DvbSubtitleReader */
public final class n implements o {

    /* renamed from: a  reason: collision with root package name */
    public final List<J.a> f8155a;

    /* renamed from: b  reason: collision with root package name */
    public final q[] f8156b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8157c;

    /* renamed from: d  reason: collision with root package name */
    public int f8158d;

    /* renamed from: e  reason: collision with root package name */
    public int f8159e;

    /* renamed from: f  reason: collision with root package name */
    public long f8160f;

    public n(List<J.a> list) {
        this.f8155a = list;
        this.f8156b = new q[list.size()];
    }

    public void a() {
        this.f8157c = false;
    }

    public void b() {
        if (this.f8157c) {
            for (q a2 : this.f8156b) {
                a2.a(this.f8160f, 1, this.f8159e, 0, null);
            }
            this.f8157c = false;
        }
    }

    public void a(i iVar, J.d dVar) {
        for (int i2 = 0; i2 < this.f8156b.length; i2++) {
            J.a aVar = this.f8155a.get(i2);
            dVar.a();
            q a2 = iVar.a(dVar.c(), 3);
            a2.a(Format.a(dVar.b(), "application/dvbsubs", (String) null, -1, 0, (List<byte[]>) Collections.singletonList(aVar.f8065c), aVar.f8063a, (DrmInitData) null));
            this.f8156b[i2] = a2;
        }
    }

    public void a(long j2, int i2) {
        if ((i2 & 4) != 0) {
            this.f8157c = true;
            this.f8160f = j2;
            this.f8159e = 0;
            this.f8158d = 2;
        }
    }

    public void a(v vVar) {
        if (this.f8157c && (this.f8158d != 2 || a(vVar, 32))) {
            if (this.f8158d != 1 || a(vVar, 0)) {
                int c2 = vVar.c();
                int a2 = vVar.a();
                for (q a3 : this.f8156b) {
                    vVar.e(c2);
                    a3.a(vVar, a2);
                }
                this.f8159e += a2;
            }
        }
    }

    public final boolean a(v vVar, int i2) {
        if (vVar.a() == 0) {
            return false;
        }
        if (vVar.u() != i2) {
            this.f8157c = false;
        }
        this.f8158d--;
        return this.f8157c;
    }
}
