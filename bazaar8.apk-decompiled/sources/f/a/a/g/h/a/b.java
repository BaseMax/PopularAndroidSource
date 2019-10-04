package f.a.a.g.h.a;

import ir.cafebazaar.inline.ux.prefill.PrefillDomain;

/* compiled from: PrefillSheet */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public PrefillDomain f14494a;

    /* renamed from: b  reason: collision with root package name */
    public b f14495b;

    public b(b bVar) {
        this.f14495b = bVar;
        this.f14494a = bVar.c().f();
    }

    public abstract void a();

    public abstract void a(String str);

    public abstract void a(String str, Object obj);

    public boolean a(String str, boolean z) {
        if (d(str) && (z || c() != PrefillDomain.global)) {
            return true;
        }
        b bVar = this.f14495b;
        if (bVar != null) {
            return bVar.a(str, z);
        }
        return false;
    }

    public abstract Object b(String str);

    public void b() {
        a();
        b bVar = this.f14495b;
        if (bVar != null) {
            bVar.b();
        }
    }

    public Object c(String str) {
        if (d(str)) {
            return b(str);
        }
        b bVar = this.f14495b;
        if (bVar != null) {
            return bVar.c(str);
        }
        return null;
    }

    public abstract boolean d(String str);

    public b() {
        this.f14495b = null;
        this.f14494a = PrefillDomain.global;
    }

    public void a(PrefillDomain prefillDomain, String str, Object obj) {
        if (c().a(prefillDomain)) {
            a(str, obj);
            return;
        }
        b bVar = this.f14495b;
        if (bVar != null) {
            bVar.a(prefillDomain, str, obj);
        }
    }

    public PrefillDomain c() {
        return this.f14494a;
    }

    public void a(PrefillDomain prefillDomain, String str) {
        if (!c().a(PrefillDomain.global)) {
            if (c().a(prefillDomain)) {
                a(str);
            } else {
                b bVar = this.f14495b;
                if (bVar != null) {
                    bVar.a(prefillDomain, str);
                }
            }
        }
    }
}
