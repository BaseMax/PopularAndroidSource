package c.b.a;

import c.b.a.g.e;

/* compiled from: RequestBuilder */
class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f4412a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f4413b;

    public i(k kVar, e eVar) {
        this.f4413b = kVar;
        this.f4412a = eVar;
    }

    public void run() {
        if (!this.f4412a.isCancelled()) {
            k kVar = this.f4413b;
            e eVar = this.f4412a;
            kVar.a(eVar, eVar);
        }
    }
}
