package f.a.a.c.b;

import f.a.a.c.b.o;

/* compiled from: SyncAPICallHandler */
class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o.a f13975a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Exception f13976b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ o f13977c;

    public n(o oVar, o.a aVar, Exception exc) {
        this.f13977c = oVar;
        this.f13975a = aVar;
        this.f13976b = exc;
    }

    public void run() {
        o.a aVar = this.f13975a;
        if (aVar != null) {
            aVar.a(4, this.f13976b.toString());
        }
    }
}
