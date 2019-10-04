package f.a.a.c.b;

import f.a.a.c.b.o;

/* compiled from: SyncAPICallHandler */
class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o.a f13972a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ InterruptedException f13973b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ o f13974c;

    public m(o oVar, o.a aVar, InterruptedException interruptedException) {
        this.f13974c = oVar;
        this.f13972a = aVar;
        this.f13973b = interruptedException;
    }

    public void run() {
        o.a aVar = this.f13972a;
        if (aVar != null) {
            aVar.a(4, this.f13973b.toString());
        }
    }
}
