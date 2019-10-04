package b.i.h;

/* compiled from: SelfDestructiveThread */
class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f2688a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f2689b;

    public h(i iVar, Object obj) {
        this.f2689b = iVar;
        this.f2688a = obj;
    }

    public void run() {
        this.f2689b.f2692c.a(this.f2688a);
    }
}
