package l;

import java.io.IOException;
import k.g;
import k.k;
import k.z;
import l.v;

/* compiled from: OkHttpCall */
class u extends k {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ v.a f15938b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public u(v.a aVar, z zVar) {
        super(zVar);
        this.f15938b = aVar;
    }

    public long b(g gVar, long j2) {
        try {
            return super.b(gVar, j2);
        } catch (IOException e2) {
            this.f15938b.f15948c = e2;
            throw e2;
        }
    }
}
