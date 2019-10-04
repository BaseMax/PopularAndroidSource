package l;

/* compiled from: ExecutorCallAdapterFactory */
class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Throwable f15923a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ p f15924b;

    public o(p pVar, Throwable th) {
        this.f15924b = pVar;
        this.f15923a = th;
    }

    public void run() {
        p pVar = this.f15924b;
        pVar.f15925a.a(pVar.f15926b, this.f15923a);
    }
}
