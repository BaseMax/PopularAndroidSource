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

/* compiled from: SeiReader */
public final class E {

    /* renamed from: a  reason: collision with root package name */
    public final List<Format> f8028a;

    /* renamed from: b  reason: collision with root package name */
    public final q[] f8029b;

    public E(List<Format> list) {
        this.f8028a = list;
        this.f8029b = new q[list.size()];
    }

    public void a(i iVar, J.d dVar) {
        for (int i2 = 0; i2 < this.f8029b.length; i2++) {
            dVar.a();
            q a2 = iVar.a(dVar.c(), 3);
            Format format = this.f8028a.get(i2);
            String str = format.f12514i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            C0737e.a(z, (Object) "Invalid closed caption mime type provided: " + str);
            String str2 = format.f12506a;
            if (str2 == null) {
                str2 = dVar.b();
            }
            a2.a(Format.a(str2, str, (String) null, -1, format.f12508c, format.A, format.B, (DrmInitData) null, Long.MAX_VALUE, format.f12516k));
            this.f8029b[i2] = a2;
        }
    }

    public void a(long j2, v vVar) {
        h.a(j2, vVar, this.f8029b);
    }
}
