package f.a.a.e.b.b;

import f.a.a.e.C1083c;
import f.a.a.e.b.C1072n;
import f.a.a.g.h.b;
import ir.cafebazaar.inline.ux.prefill.PrefillDomain;

/* compiled from: InputInflater */
public abstract class B extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public String f14115c;

    /* renamed from: d  reason: collision with root package name */
    public String f14116d;

    /* renamed from: e  reason: collision with root package name */
    public PrefillDomain f14117e = PrefillDomain.page;

    /* compiled from: InputInflater */
    public interface a {
        String a();

        Object b();
    }

    public void a(PrefillDomain prefillDomain) {
        this.f14117e = prefillDomain;
    }

    public abstract void a(Object obj);

    public void c(String str) {
        this.f14115c = str;
    }

    public void d(String str) {
        this.f14116d = str;
    }

    public PrefillDomain e() {
        return this.f14117e;
    }

    public void a(b bVar) {
        f.a.a.g.h.a.b a2 = bVar.a();
        String c2 = c();
        if (a2.a(c2, e() == PrefillDomain.global)) {
            a(a2.c(c2));
        }
    }

    public String c() {
        return this.f14115c;
    }

    public String d() {
        return this.f14116d;
    }

    public void a(C1083c cVar, a aVar) {
        cVar.Oa().a(c(), e(), aVar);
    }
}
