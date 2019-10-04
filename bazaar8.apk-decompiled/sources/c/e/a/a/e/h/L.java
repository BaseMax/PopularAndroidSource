package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.k.a.h;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.List;

/* compiled from: UserDataReader */
public final class L {

    /* renamed from: a  reason: collision with root package name */
    public final List<Format> f8075a;

    /* renamed from: b  reason: collision with root package name */
    public final q[] f8076b;

    public L(List<Format> list) {
        this.f8075a = list;
        this.f8076b = new q[list.size()];
    }

    public void a(i iVar, J.d dVar) {
        for (int i2 = 0; i2 < this.f8076b.length; i2++) {
            dVar.a();
            q a2 = iVar.a(dVar.c(), 3);
            Format format = this.f8075a.get(i2);
            String str = format.f12514i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            C0737e.a(z, (Object) "Invalid closed caption mime type provided: " + str);
            a2.a(Format.a(dVar.b(), str, (String) null, -1, format.f12508c, format.A, format.B, (DrmInitData) null, Long.MAX_VALUE, format.f12516k));
            this.f8076b[i2] = a2;
        }
    }

    public void a(long j2, v vVar) {
        if (vVar.a() >= 9) {
            int i2 = vVar.i();
            int i3 = vVar.i();
            int u = vVar.u();
            if (i2 == 434 && i3 == h.f9113a && u == 3) {
                h.b(j2, vVar, this.f8076b);
            }
        }
    }
}
