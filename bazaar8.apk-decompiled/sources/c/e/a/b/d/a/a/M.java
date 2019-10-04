package c.e.a.b.d.a.a;

import c.e.a.b.d.a.a.C0755c;
import c.e.a.b.j.h;
import com.google.android.gms.common.Feature;

public final class M extends K<Boolean> {

    /* renamed from: c  reason: collision with root package name */
    public final C0759g<?> f9820c;

    public M(C0759g<?> gVar, h<Boolean> hVar) {
        super(4, hVar);
        this.f9820c = gVar;
    }

    public final /* bridge */ /* synthetic */ void a(C0765m mVar, boolean z) {
    }

    public final Feature[] b(C0755c.a<?> aVar) {
        C c2 = aVar.l().get(this.f9820c);
        if (c2 == null) {
            return null;
        }
        return c2.f9801a.b();
    }

    public final boolean c(C0755c.a<?> aVar) {
        C c2 = aVar.l().get(this.f9820c);
        return c2 != null && c2.f9801a.c();
    }

    public final void d(C0755c.a<?> aVar) {
        C remove = aVar.l().remove(this.f9820c);
        if (remove != null) {
            remove.f9802b.a(aVar.f(), this.f9816b);
            remove.f9801a.a();
            return;
        }
        this.f9816b.b(false);
    }
}
