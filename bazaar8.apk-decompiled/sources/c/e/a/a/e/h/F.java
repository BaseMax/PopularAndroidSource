package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;

/* compiled from: SpliceInfoSectionReader */
public final class F implements C {

    /* renamed from: a  reason: collision with root package name */
    public c.e.a.a.o.F f8030a;

    /* renamed from: b  reason: collision with root package name */
    public q f8031b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8032c;

    public void a(c.e.a.a.o.F f2, i iVar, J.d dVar) {
        this.f8030a = f2;
        dVar.a();
        this.f8031b = iVar.a(dVar.c(), 4);
        this.f8031b.a(Format.a(dVar.b(), "application/x-scte35", (String) null, -1, (DrmInitData) null));
    }

    public void a(v vVar) {
        if (!this.f8032c) {
            if (this.f8030a.c() != -9223372036854775807L) {
                this.f8031b.a(Format.a(null, "application/x-scte35", this.f8030a.c()));
                this.f8032c = true;
            } else {
                return;
            }
        }
        int a2 = vVar.a();
        this.f8031b.a(vVar, a2);
        this.f8031b.a(this.f8030a.b(), 1, a2, 0, null);
    }
}
