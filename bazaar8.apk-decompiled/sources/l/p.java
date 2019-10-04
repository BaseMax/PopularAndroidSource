package l;

import l.q;

/* compiled from: ExecutorCallAdapterFactory */
class p implements C1160d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1160d f15925a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q.a f15926b;

    public p(q.a aVar, C1160d dVar) {
        this.f15926b = aVar;
        this.f15925a = dVar;
    }

    public void a(C1158b<T> bVar, D<T> d2) {
        this.f15926b.f15928a.execute(new n(this, d2));
    }

    public void a(C1158b<T> bVar, Throwable th) {
        this.f15926b.f15928a.execute(new o(this, th));
    }
}
